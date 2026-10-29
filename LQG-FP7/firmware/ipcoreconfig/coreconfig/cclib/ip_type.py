from typing import Union
from bitarray import bitarray

class IPType:
    def __init__(self, size: int, signed: bool, fixpt_bin: int = 0):
        self.size = size
        self.signed = signed
        self.fixpt_bin = fixpt_bin

        if signed:
            # Signed integer / raw fixed-point type values.
            self.value_min = -(1 << (size - 1))
            self.value_max = (1 << (size - 1)) - 1
        else:
            # Unsigned integer / fixed-point type values.
            self.value_min = 0
            self.value_max = (1 << size) - 1

    def __repr__(self):
        return f"IPType(size={self.size}, signed={self.signed}, fixpt_bin={self.fixpt_bin})"
    
    def value_to_bits(self, value: Union[int, float]) -> bitarray:
        if self.fixpt_bin == 0:
            # Convert if necessary.
            if isinstance(value, float):
                value = int(value)
            elif isinstance(value, bool):
                value = 1 if value else 0
            elif not isinstance(value, int):
                raise TypeError("Value must be an integer, float, or boolean.")

            # Check bounds
            if value > self.value_max:
                raise ValueError(f"Value {value} exceeds maximum for type of size {self.size}.")
            if value < self.value_min:
                raise ValueError(f"Value {value} is less than minimum for type of size {self.size}.")
            
            # Twos complement representation for signed integers.
            if value < 0:
                value = (1 << self.size) + value
            
            # Convert to little-endian bitarray.
            bits = bitarray(bin(value)[2:].zfill(self.size))[::-1]

        else:
            # Convert if necessary.
            if isinstance(value, int):
                value = float(value)
            elif not isinstance(value, float):
                raise TypeError("Value must be an integer or float for fixed-point types.")
            
            # Convert to integer fixed-point representation.            
            scale = 1 << self.fixpt_bin
            fixed_val = int(round(value * scale))

            # Check bounds
            if fixed_val > self.value_max:
                raise ValueError(f"Value {value} exceeds maximum for type of size {self.size} with fixed-point bin {self.fixpt_bin}.")
            if fixed_val < self.value_min:
                raise ValueError(f"Value {value} is less than minimum for type of size {self.size} with fixed-point bin {self.fixpt_bin}.")
            
            # Twos complement representation for signed integers.
            if fixed_val < 0:
                fixed_val = (1 << self.size) + fixed_val

            # Convert to little-endian bitarray.
            bits = bitarray(bin(fixed_val)[2:].zfill(self.size))[::-1]

        return bits
    
    def bits_to_value(self, bits: bitarray) -> Union[int, float]:
        if len(bits) != self.size:
            raise ValueError(f"Bitarray length {len(bits)} does not match type size {self.size}.")

        # Convert from little-endian to big-endian.
        bits = bits[::-1]

        # Convert to integer value.
        value = int(bits.to01(), 2)

        # Twos complement representation for signed integers.
        if self.signed and bits[0] == 1:
            value -= (1 << self.size)

        if self.fixpt_bin == 0:
            # Return as integer.
            return value
        else:
            # Return as fixed-point float.
            scale = 1 << self.fixpt_bin
            return value / scale

class IPTypeRegistry:
    def __init__(self):
        self.type_dict = {}
    
    def register(self, name: str, type: IPType):
        if name in self.type_dict:
            raise KeyError(f"A type with name '{name}' already exists in the type registry.")
        self.type_dict[name] = type

    def register_from_config(self, name: str, config: dict):
        size = config["size"]
        signed = config["signed"] if "signed" in config else False
        fixpt_bin = config["fixpt_bin"] if "fixpt_bin" in config else 0
        self.register(name, IPType(size, signed, fixpt_bin))

    def get_type(self, name: str) -> IPType:
        if name not in self.type_dict:
            raise KeyError(f"No type with name '{name}' found in registry.")
        return self.type_dict[name]

    def __repr__(self):
        return f"IPTypeRegistry[{str(self.type_dict)}]"
