from typing import Union

from .ip_type import IPType

class IPIOConfigMapping:
    def __init__(self, offset: int, stride: int = -1):
        self.offset = offset
        self.stride = stride

    def __repr__(self):
        return f"IPIOConfigMapping(offset={self.offset}, stride={self.stride})"

class IPIOSignalMapping:
    def __init__(self, ext_signal_name: str, ssr_pack: bool = False, active_low: bool = False, is_clock: bool = False, freq: int = None):
        self.ext_signal_name = ext_signal_name
        self.ssr_pack = ssr_pack
        self.active_low = active_low
        self.is_clock = is_clock
        self.freq = freq  # Frequency in Hz, if applicable

    def __repr__(self):
        return f"IPIOSignalMapping(ext_signal_name={self.ext_signal_name}, ssr_pack={self.ssr_pack}, active_low={self.active_low})"

class IPIO:
    def __init__(self, datatype: IPType, ssr: int = 1, signal_route: Union[IPIOConfigMapping, IPIOSignalMapping] = None, attributes: dict = {}):
        self.datatype = datatype
        self.ssr = ssr
        self.signal_route = signal_route
        self.attributes = attributes

    def __repr__(self):
        return f"IPIO(datatype={self.datatype}, ssr={self.ssr}, signal_route={self.signal_route}, attributes={self.attributes})"
