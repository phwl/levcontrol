import mmap
import os
import ctypes
import logging
import struct
import enum
import time
import ctypes

from bitarray import bitarray
from typing import Union
from io import BytesIO

from .ip_type import IPType

log = logging.getLogger(__name__)
libc = ctypes.CDLL("libc.so.6")
SYS_cacheflush = 0xf0002

def p32(value: int) -> bytes:
    return struct.pack("<I", value)

class MMapObject:
    def __init__(self, offset: int, size: int, mem_path: str = "/dev/mem"):
        self.offset = offset
        self.size = size
        self.mem_path = mem_path
        self.mmap_ptr = None

    def __enter__(self):
        fd = os.open(self.mem_path, os.O_RDWR | os.O_SYNC)
        PROT_READ = 1
        PROT_WRITE = 2
        MAP_SHARED = 0x01

        addr = libc.mmap(
            None, ctypes.c_size_t(self.size), PROT_READ | PROT_WRITE, MAP_SHARED, fd, ctypes.c_size_t(self.offset)
        )

        os.close(fd)
        
        if addr == ctypes.c_void_p(-1).value:
            raise OSError("mmap failed")
        
        self.mmap_ptr = addr
        return self

    def __exit__(self, exc_type, exc_value, traceback):
        if self.mmap_ptr is not None:
            libc.munmap(self.mmap_ptr, ctypes.c_size_t(self.size))
            self.mmap_ptr = None

    def __len__(self):
        return self.size
    
    def __getitem__(self, key):
        if self.mmap_ptr is None:
            raise ValueError("Memory map is not initialized. Use 'with' statement to open it.")
        
        if key < 0 or key >= self.size:
            raise IndexError("Index out of bounds")
        
        return ctypes.c_uint8.from_address(self.mmap_ptr + key).value
    
    def __setitem__(self, key, value):
        if self.mmap_ptr is None:
            raise ValueError("Memory map is not initialized. Use 'with' statement to open it.")
        
        if key < 0 or key >= self.size:
            raise IndexError("Index out of bounds")
        
        if not (0 <= value <= 255):
            raise ValueError("Value must be in range 0-255")
        
        ctypes.c_uint8.from_address(self.mmap_ptr + key).value = value

    def __delitem__(self, key):
        if self.mmap_ptr is None:
            raise ValueError("Memory map is not initialized. Use 'with' statement to open it.")
        
        if key < 0 or key >= self.size:
            raise IndexError("Index out of bounds")
        
        ctypes.c_uint8.from_address(self.mmap_ptr + key).value = 0

    def _check_bounds(self, offset: int, length: int):
        if offset < 0 or offset + length > self.size:
            raise IndexError("Offset and length out of bounds")

    def memcpy_to(self, dest_offset: int, data: bytes):
        if self.mmap_ptr is None:
            raise ValueError("Memory map is not initialized. Use 'with' statement to open it.")

        length = len(data)        
        self._check_bounds(dest_offset, length)

        dest_ptr = self.mmap_ptr + dest_offset
        src = ctypes.c_char_p(data)

        ctypes.memmove(dest_ptr, src, length)
        self.flush()

    def memcpy_from(self, src_offset: int, length: int) -> bytes:
        if self.mmap_ptr is None:
            raise ValueError("Memory map is not initialized. Use 'with' statement to open it.")

        self._check_bounds(src_offset, length)

        src_ptr = self.mmap_ptr + src_offset
        buffer = (ctypes.c_char * length)()

        ctypes.memmove(buffer, src_ptr, length)
        return bytes(buffer)
    
    def memset(self, dest_offset: int, value: int, length: int):
        if self.mmap_ptr is None:
            raise ValueError("Memory map is not initialized. Use 'with' statement to open it.")

        self._check_bounds(dest_offset, length)

        dest_ptr = self.mmap_ptr + dest_offset
        ctypes.memset(dest_ptr, value, length)
        self.flush()

    def write_u32(self, offset: int, value: int):
        if self.mmap_ptr is None:
            raise ValueError("Memory map is not initialized. Use 'with' statement to open it.")

        self._check_bounds(offset, 4)

        ptr = self.mmap_ptr + offset
        ctypes.c_uint32.from_address(ptr).value = value
        self.flush()

    def read_u32(self, offset: int) -> int:
        if self.mmap_ptr is None:
            raise ValueError("Memory map is not initialized. Use 'with' statement to open it.")

        self._check_bounds(offset, 4)

        ptr = self.mmap_ptr + offset
        return ctypes.c_uint32.from_address(ptr).value

    def flush(self):
        if self.mmap_ptr is None:
            raise ValueError("Memory map is not initialized. Use 'with' statement to open it.")

        res = libc.syscall(SYS_cacheflush, self.mmap_ptr, self.mmap_ptr + self.size, 0)
        if res != 0:
            raise OSError("Cache flush syscall failed")


def open_physical_mmap(offset: int, size: int, mem_path: str = "/dev/mem") -> mmap.mmap:
    fd = os.open(mem_path, os.O_RDWR | os.O_SYNC)

    print(hex(offset), hex(size))

    m = mmap.mmap(fd, size, mmap.MAP_SHARED, mmap.PROT_READ | mmap.PROT_WRITE, offset=offset)

    os.close(fd)
    return m

class MemoryMapping:
    def __init__(self, offset: int, size: int):
        self.offset = offset
        self.size = size

    def __repr__(self):
        return f"MemoryMapping(offset={self.offset}, size={self.size})"

class DMAThrottle:
    REG_TRIGGER_SW = 0x00
    REG_USER_RESET = 0x04
    REG_NO_FRAMES = 0x08
    REG_DECIMATION = 0x0C
    REG_TRIGGER_SRC = 0x10
    REG_DATA_SEL = 0x14

    def __init__(self, mapping: MemoryMapping):
        self.mapping = mapping
        self.mmap_obj = None

    def __enter__(self):
        self.mmap_obj = MMapObject(self.mapping.offset, self.mapping.size)
        self.mmap_obj.__enter__()
        return self

    def __exit__(self, exc_type, exc_value, traceback):
        if self.mmap_obj is not None:
            self.mmap_obj.__exit__(exc_type, exc_value, traceback)
            self.mmap_obj = None

    def __repr__(self):
        return f"DMAThrottle(mapping={self.mapping})"
    
    def write_register(self, reg_offset: int, value: int) -> None:
        if not (0 <= reg_offset <= self.mapping.size - 4):
            raise IndexError("Register offset out of bounds for DMA Throttle mapping.")
        if value < 0 or value > 0xFFFFFFFF:
            raise ValueError("Value must be a 32-bit unsigned integer.")
        
        if self.mmap_obj is None:
            with MMapObject(self.mapping.offset, self.mapping.size) as mmap_obj:
                mmap_obj.write_u32(reg_offset, value)
        else:
            self.mmap_obj.write_u32(reg_offset, value)

    def read_register(self, reg_offset: int) -> int:
        if not (0 <= reg_offset <= self.mapping.size - 4):
            raise IndexError("Register offset out of bounds for DMA Throttle mapping.")
        
        if self.mmap_obj is None:
            with MMapObject(self.mapping.offset, self.mapping.size) as mmap_obj:
                value = mmap_obj.read_u32(reg_offset)
        else:
            value = self.mmap_obj.read_u32(reg_offset)
        
        return value

class DMAXilinxCoreStatus(enum.Enum):
    # Taken from AXI DMA v7.1 LogiCORE IP Product Guide, Table 2-17
    HALTED    = ("halted",    1 << 0 )
    IDLE      = ("idle",      1 << 1 )
    SGINCLD   = ("SGIncld",   1 << 3 )
    DMAINTERR = ("DMAIntErr", 1 << 4 )
    DMASLVERR = ("DMASlvErr", 1 << 5 )
    DMADECERR = ("DMADecErr", 1 << 6 )
    SGINTERR  = ("SGIntErr",  1 << 8 )
    SGSLVERR  = ("SGSlvErr",  1 << 9 )
    SGDECERR  = ("SGDecErr",  1 << 10)
    IOC_IRQ   = ("IOC_Irq",   1 << 12)
    DLY_IRQ   = ("Dly_Irq",   1 << 13)
    ERR_IRQ   = ("Err_Irq",   1 << 14)

    @property
    def label(self) -> str: 
        return self.value[0]
    
    @property
    def mask(self) -> int:
        return self.value[1]
    
class DMARxDescStatus(enum.Enum):
    EOF       = ("EOF",       1 << 26)
    SOF       = ("SOF",       1 << 27)
    DMAINTERR = ("DMAIntErr", 1 << 28)
    DMASLVERR = ("DMASlvErr", 1 << 29)
    DMADECERR = ("DMADecErr", 1 << 30)
    CPLT      = ("CPLT",      1 << 31)

    @property
    def label(self) -> str: 
        return self.value[0]
    
    @property
    def mask(self) -> int:
        return self.value[1]

class DMAXilinxCore:
    S2MM_CONTROL_REG = 0x30
    S2MM_STATUS_REG = 0x34
    S2MM_DESTINATION_ADDR = 0x48
    S2MM_LENGTH = 0x58

    S2MM_CURDESC_LO = 0x38
    S2MM_CURDESC_HI = 0x3C
    S2MM_TAILDESC_LO = 0x40
    S2MM_TAILDESC_HI = 0x44

    MAX_PACKET_SIZE = 0x3ffffff

    def __init__(self, mapping: MemoryMapping):
        self.mapping = mapping
        self.mmap_obj = None

    def __enter__(self):
        self.mmap_obj = MMapObject(self.mapping.offset, self.mapping.size)
        self.mmap_obj.__enter__()
        return self

    def __exit__(self, exc_type, exc_value, traceback):
        if self.mmap_obj is not None:
            self.mmap_obj.__exit__(exc_type, exc_value, traceback)
            self.mmap_obj = None

    def __repr__(self):
        return f"DMAXilinxCore(mapping={self.mapping})"
    
    def write_register(self, reg_offset: int, value: int) -> None:
        if not (0 <= reg_offset <= self.mapping.size - 4):
            raise IndexError("Register offset out of bounds for DMA Throttle mapping.")
        if value < 0 or value > 0xFFFFFFFF:
            raise ValueError("Value must be a 32-bit unsigned integer.")
        
        if self.mmap_obj is None:
            with MMapObject(self.mapping.offset, self.mapping.size) as mmap_obj:
                mmap_obj.write_u32(reg_offset, value)
        else:
            self.mmap_obj.write_u32(reg_offset, value)

    def read_register(self, reg_offset: int) -> int:
        if not (0 <= reg_offset <= self.mapping.size - 4):
            raise IndexError("Register offset out of bounds for DMA Throttle mapping.")
        
        if self.mmap_obj is None:
            with MMapObject(self.mapping.offset, self.mapping.size) as mmap_obj:
                value = mmap_obj.read_u32(reg_offset)
        else:
            value = self.mmap_obj.read_u32(reg_offset)
        
        return value
    
    def get_status(self) -> set[DMAXilinxCoreStatus]:
        dma_status = self.read_register(self.S2MM_STATUS_REG)
        status_flags = set()
        
        for status in DMAXilinxCoreStatus:
            if dma_status & status.mask:
                status_flags.add(status)
        
        return status_flags
    
    def get_str_status(self):
        status_flags = self.get_status()
        return ", ".join([status.label for status in status_flags])
    
    def build_dma_descriptors(self, words_to_meas: int, bram_addr: int, target_addr: int) -> bytes:
        """
        :param words_to_meas: Number of 32-bit words to measure.
        """

        bio = BytesIO()

        remaining_bytes = words_to_meas * 4
        bytes_measured = 0
        first_desc = 1
        last_desc = 0
        pid = 0

        while remaining_bytes > 0:
            if remaining_bytes > self.MAX_PACKET_SIZE:
                last_desc = 0
                bytes_to_meas = self.MAX_PACKET_SIZE
            else:
                last_desc = 1
                bytes_to_meas = remaining_bytes

            desc = BytesIO()
            # NEXTDESC, NEXTDESC_MSB
            desc.write(p32(bram_addr + 0x40 * (pid + 1)) if last_desc == 0 else p32(bram_addr))
            desc.write(p32(0))
            # BUFFER_ADDRESS, BUFFER_ADDRESS_MSB
            desc.write(p32(target_addr + bytes_measured))
            desc.write(p32(0))
            # RESERVED, RESERVED
            desc.write(p32(0))
            desc.write(p32(0))
            # CONTROL (bit 27 = RXSOF, bit 26 = RXEOF)
            #desc.write(p32(bytes_to_meas | (first_desc << 27) | (last_desc << 26)))
            desc.write(p32(self.MAX_PACKET_SIZE | (first_desc << 27) | (last_desc << 26)))
            # STATUS
            desc.write(p32(0))

            last_desc_addr = bram_addr + 0x40 * pid

            bytes_measured += bytes_to_meas
            remaining_bytes -= bytes_to_meas
            pid += 1
            first_desc = 0

            desc_bytes = desc.getvalue()
            assert len(desc_bytes) == 32

            bio.write(desc_bytes)
            bio.write(b"\x00" * 8 * 4) # Padding to 64 bytes per descriptor.
            
        descriptors = bio.getvalue()
        return descriptors, last_desc_addr

class DMATriggerSource(enum.Enum):
    SOFTWARE = 0
    HARDWARE = 1

class DMAMapping:
    def __init__(self, bram: MemoryMapping, throttle: MemoryMapping, dmacore: MemoryMapping, dma_target: MemoryMapping):
        self.bram = bram
        self.throttle = throttle
        self.dmacore = dmacore
        self.dma_target = dma_target

        self.throttle_if = DMAThrottle(throttle)
        self.dmacore_if = DMAXilinxCore(dmacore)

        self.n_rx_desc = 0

    def __repr__(self):
        return f"DMAMapping(bram={self.bram}, throttle={self.throttle}, dmacore={self.dmacore}, dma_target={self.dma_target})"
    
    def dma_transfer_config(self, rec_frames: int, rec_decimation: int, rec_channels: set[int], trigger_src: DMATriggerSource) -> None:
        """
        Prepare a DMA transfer.

        :param rec_frames: Number of total frames to record.
        :param rec_decimation: Decimation factor for recording.
        :param rec_channels: Set of channels (within range 0-7) to record.
        """

        if any(ch < 0 or ch > 7 for ch in rec_channels):
            raise ValueError("Recording channels must be in range 0-7.")
        if len(rec_channels) == 0:
            raise ValueError("At least one recording channel must be specified.")
        if rec_decimation < len(rec_channels):
            raise ValueError("Decimation factor must be at least the number of recording channels.")
        if rec_frames * len(rec_channels) > self.dma_target.size // 4:
            raise ValueError("DMA target size is insufficient for the requested recording frames and channels.")

        log.info(f"Configuring DMA transfer: frames={rec_frames}, decimation={rec_decimation}, channels={rec_channels}, trigger_src={trigger_src.name}")

        with self.throttle_if, self.dmacore_if:
            self.throttle_if.write_register(DMAThrottle.REG_TRIGGER_SRC, 0)
            self.throttle_if.write_register(DMAThrottle.REG_TRIGGER_SW, 0)
            self.throttle_if.mmap_obj.flush()
            self.throttle_if.write_register(DMAThrottle.REG_USER_RESET, 1)
            self.throttle_if.mmap_obj.flush()
            self.throttle_if.write_register(DMAThrottle.REG_NO_FRAMES, rec_frames - 1)
            self.throttle_if.write_register(DMAThrottle.REG_DECIMATION, rec_decimation - 1)
            self.throttle_if.write_register(DMAThrottle.REG_DATA_SEL, sum(1 << ch for ch in rec_channels) & 0xFF)
            self.throttle_if.mmap_obj.flush()

            # Reset DMA
            self.dmacore_if.write_register(DMAXilinxCore.S2MM_CONTROL_REG, 4)
            self.dmacore_if.mmap_obj.flush()
            log.info(f"DMA status after reset: {self.dmacore_if.get_str_status()}")

            # Halt DMA
            self.dmacore_if.write_register(DMAXilinxCore.S2MM_CONTROL_REG, 0)
            self.dmacore_if.write_register(DMAXilinxCore.S2MM_CURDESC_HI, 0)
            self.dmacore_if.write_register(DMAXilinxCore.S2MM_CURDESC_LO, 0)
            self.dmacore_if.write_register(DMAXilinxCore.S2MM_TAILDESC_HI, 0)
            self.dmacore_if.write_register(DMAXilinxCore.S2MM_TAILDESC_LO, 0)
            self.dmacore_if.mmap_obj.flush()

            words_to_measure = rec_frames * len(rec_channels)

            descriptors, last_desc_addr = self.dmacore_if.build_dma_descriptors(
                words_to_measure,
                self.bram.offset,
                self.dma_target.offset
            )

            with MMapObject(self.bram.offset, self.bram.size) as bram_mmap:
                bram_mmap.memcpy_to(0, descriptors)
                bram_mmap.flush()

            with MMapObject(self.bram.offset, self.bram.size) as bram_mmap:
                desc_data = bram_mmap.memcpy_from(0, len(descriptors))
                log.info(f"DMA Descriptors written to BRAM:\n{desc_data.hex()}")

            self.dmacore_if.write_register(DMAXilinxCore.S2MM_CURDESC_HI, 0)
            self.dmacore_if.write_register(DMAXilinxCore.S2MM_CURDESC_LO, self.bram.offset)
            self.dmacore_if.write_register(DMAXilinxCore.S2MM_TAILDESC_HI, 0)
            self.dmacore_if.mmap_obj.flush()

            self.dmacore_if.write_register(DMAXilinxCore.S2MM_CONTROL_REG, 0x0001f001)
            self.dmacore_if.mmap_obj.flush()
            self.dmacore_if.write_register(DMAXilinxCore.S2MM_TAILDESC_LO, last_desc_addr)
            self.dmacore_if.mmap_obj.flush()

            log.info(f"DMA status at end of config: {self.dmacore_if.get_str_status()}")

            # Set current number of descriptors
            self.n_rx_desc = len(descriptors) // 64
            log.info("DMA transfer configured.")

        # Print out all register after config
        with self.dmacore_if, self.throttle_if:
            log.info(f"Final DMA Core Status: {self.dmacore_if.get_str_status()}")
            log.info(f"Final DMA Throttle REG_TRIGGER_SRC: {self.throttle_if.read_register(DMAThrottle.REG_TRIGGER_SRC)}")
            log.info(f"Final DMA Throttle REG_NO_FRAMES: {self.throttle_if.read_register(DMAThrottle.REG_NO_FRAMES)}")
            log.info(f"Final DMA Throttle REG_DECIMATION: {self.throttle_if.read_register(DMAThrottle.REG_DECIMATION)}")
            log.info(f"Final DMA Throttle REG_DATA_SEL: {self.throttle_if.read_register(DMAThrottle.REG_DATA_SEL)}")

        with self.throttle_if:
            if trigger_src == DMATriggerSource.HARDWARE: # hardware signal
                self.throttle_if.write_register(DMAThrottle.REG_TRIGGER_SRC, 1)
                self.throttle_if.write_register(DMAThrottle.REG_USER_RESET, 0)
                self.throttle_if.mmap_obj.flush()
                log.info("DMA transfer primed for hardware trigger.")
            elif trigger_src == DMATriggerSource.SOFTWARE: # software trigger
                self.throttle_if.write_register(DMAThrottle.REG_TRIGGER_SRC, 0)
                self.throttle_if.write_register(DMAThrottle.REG_USER_RESET, 0)
                self.throttle_if.mmap_obj.flush()
                # Trigger the transfer
                self.throttle_if.write_register(DMAThrottle.REG_TRIGGER_SW, 0)
                self.throttle_if.mmap_obj.flush()
                self.throttle_if.write_register(DMAThrottle.REG_TRIGGER_SW, 1)
                self.throttle_if.mmap_obj.flush()
                log.info("DMA transfer triggered via software.")
            else:
                raise ValueError("Invalid DMA trigger source specified.")

    def dma_get_status(self) -> tuple[set[DMAXilinxCoreStatus], list[set[DMARxDescStatus]]]:
        core_status = self.dmacore_if.get_status()
        desc_statuses = []
        with MMapObject(self.bram.offset, self.bram.size) as bram_mmap:
            for i in range(self.n_rx_desc):
                desc_offset = i * 64
                descriptor = bram_mmap.memcpy_from(desc_offset, 64)
                status_word = struct.unpack("<I", descriptor[0x1C:0x1C+4])[0]
                desc_status = set()
                for status in DMARxDescStatus:
                    if status_word & status.mask:
                        desc_status.add(status)
                desc_statuses.append(desc_status)

        return core_status, desc_statuses

    def dma_wait_cplt_sync(self, timeout_seconds: float | None):
        """
        Wait for the S2MM Scatter-Gather DMA engine to complete it's transfer.
        A timeout in seconds can be specified to avoid waiting indefinitely.

        If a timeout occurs, a TimeoutError is raised, in case the DMA transfer
        fails with an error status, a RuntimeError is raised.

        :param timeout_seconds: Timeout in seconds, or None to wait indefinitely.
        """

        time_start = time.time()

        while True:
            core_status, desc_statuses = self.dma_get_status()

            if any(flag in core_status for flag in [
                DMAXilinxCoreStatus.DMAINTERR,
                DMAXilinxCoreStatus.DMASLVERR,
                DMAXilinxCoreStatus.DMADECERR,
                DMAXilinxCoreStatus.SGINTERR,
                DMAXilinxCoreStatus.SGSLVERR,
                DMAXilinxCoreStatus.SGDECERR,
            ]):
                raise RuntimeError(f"DMA reported error status: {self.dmacore_if.get_str_status()}")
            
            # If IOC_IRQ is set, the transfer is complete.
            if DMAXilinxCoreStatus.IOC_IRQ in core_status:
                log.info("DMA transfer complete.")
                break

            # If CPLT in EOF descriptor is set, the transfer is complete.
            last_desc_status = desc_statuses[-1]
            if last_desc_status and DMARxDescStatus.CPLT in last_desc_status:
                log.info("DMA transfer complete (via descriptor CPLT).")
                break

            time_now = time.time()
            if timeout_seconds is not None and (time_now - time_start) > timeout_seconds:
                raise TimeoutError("Timeout waiting for DMA transfer to complete.")
            
    def dma_zero_target_mem(self) -> None:
        with MMapObject(self.dma_target.offset, self.dma_target.size) as dma_mmap:
            dma_mmap.memset(0, 0, self.dma_target.size)
        log.info("DMA target memory zeroed.")

    def dma_read_mem(self, offset: int, length_bytes: int) -> bytes:
        if offset < 0 or offset + length_bytes > self.dma_target.size:
            raise IndexError("Offset and length exceed DMA target memory size.")
        
        with MMapObject(self.dma_target.offset, self.dma_target.size) as dma_mmap:
            data = dma_mmap.memcpy_from(offset, length_bytes)
        
        return data
    
class MemoryMap:
    def __init__(self):
        self.cfgram_mapping = None
        self.loader_mapping = None
        self.dma_mapping = None
        self.axi_mappings = {}

    def add_cfgram_mapping(self, cfgram_mapping: MemoryMapping) -> None:
        if self.cfgram_mapping is not None:
            raise ValueError("CFGRAM mapping already exists.")
        self.cfgram_mapping = cfgram_mapping

    def add_loader_mapping(self, loader_mapping: MemoryMapping) -> None:
        if self.loader_mapping is not None:
            raise ValueError("Loader mapping already exists.")
        self.loader_mapping = loader_mapping

    def add_dma_mapping(self, dma_mapping: DMAMapping) -> None:
        if self.dma_mapping is not None:
            raise ValueError("DMA mapping already exists.")
        self.dma_mapping = dma_mapping

    def add_axi_mapping(self, axi_name: str, axi_mapping: MemoryMapping) -> None:
        if axi_name in self.axi_mappings:
            raise ValueError(f"AXI mapping for '{axi_name}' already exists.")
        self.axi_mappings[axi_name] = axi_mapping

    def check_valid(self) -> bool:
        return (self.cfgram_mapping is not None) and (self.loader_mapping is not None)
    
    def write_config(self, config_bits: bitarray, do_apply: bool = True) -> None:
        if not self.check_valid():
            raise ValueError("Memory map is not valid. Ensure CFGRAM and loader mappings are set.")
        
        # Conver the bits into the raw output bytes of the desired size.
        size_bits = len(config_bits)
        size_bits = (size_bits + 7) // 8 * 8  # Round up to the next byte boundary.
        size_bytes = size_bits // 8

        config_bytes = bytearray(size_bytes)
        for i in range(size_bytes):
            bits_start = i*8
            if bits_start >= len(config_bits):
                break
            bits = config_bits[bits_start:bits_start + 8]

            if len(bits) < 8:
                bits += bitarray(8 - len(bits))

            config_bytes[i] = bits[::-1].tobytes()[0]

        config_bytes = bytes(config_bytes)

        # Write to config RAM.
        with MMapObject(self.cfgram_mapping.offset, self.cfgram_mapping.size) as cfg_ram_mmap:
            cfg_ram_mmap.memcpy_to(0, config_bytes)
            cfg_ram_mmap.flush()

        with MMapObject(self.loader_mapping.offset, self.loader_mapping.size) as loader_mmap:
            # Trigger the configuration loader to read the new config from the BRAM.
            loader_mmap[0] = 1
            loader_mmap.flush()

            # Now wait for the load to complete (cfg_load_busy goes LOW).
            while True:
                loader_mmap.flush()
                if loader_mmap[0] == 0:
                    break
            
            time.sleep(0.05)

            # Apply configuration.
            if do_apply:
                loader_mmap[0] = 2
                loader_mmap.flush()

    def axi_mapping_read_value(self, axi_name: str, offset: int, datatype: IPType):
        if axi_name not in self.axi_mappings:
            raise ValueError(f"AXI mapping for '{axi_name}' does not exist.")
        
        axi_mapping = self.axi_mappings[axi_name]
        byte_size_to_read = (datatype.size + 7) // 8  # Round up to the next byte boundary.

        if offset < 0 or offset + byte_size_to_read >= axi_mapping.size:
            raise IndexError("Offset out of bounds for AXI mapping.")

        with MMapObject(axi_mapping.offset, axi_mapping.size) as axi_mmap:
            data = bytearray(byte_size_to_read)
            for i in range(byte_size_to_read):
                data[i] = axi_mmap[offset + i]
                
        # Convert the byte data to bits.
        bits = bitarray(datatype.size)
        for i in range(datatype.size):
            bits[i] = (data[i // 8] >> (i % 8)) & 1

        return datatype.bits_to_value(bits)
    
    def axi_mapping_write_value(self, axi_name: str, offset: int, datatype: IPType, value: Union[int, float]):
        if axi_name not in self.axi_mappings:
            raise ValueError(f"AXI mapping for '{axi_name}' does not exist.")
        
        axi_mapping = self.axi_mappings[axi_name]
        byte_size_to_write = (datatype.size + 7) // 8  # Round up to the next byte boundary.

        if offset < 0 or offset + byte_size_to_write >= axi_mapping.size:
            raise IndexError("Offset out of bounds for AXI mapping.")

        bits = datatype.value_to_bits(value)
        bytes_to_write = bytearray(byte_size_to_write)
        for i in range(len(bits)):
            bytes_to_write[i // 8] |= (bits[i] << (i % 8))

        with MMapObject(axi_mapping.offset, axi_mapping.size) as axi_mmap:
            for i in range(byte_size_to_write):
                axi_mmap[offset + i] = bytes_to_write[i]

    def __repr__(self):
        return (f"MemoryMap(cfgram_mapping={self.cfgram_mapping}, "
                f"loader_mapping={self.loader_mapping}, "
                f"axi_mappings={self.axi_mappings}, "
                f"dma_mapping={self.dma_mapping})")