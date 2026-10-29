from bitarray import bitarray

from .ip_core import IPCore, IPIOConfigMapping

def matlab_to_config(ip_core: IPCore, matlab: dict) -> bitarray:
    import numpy as np

    config_map = ip_core.calculate_config_map()
    size_bits = config_map.get_total_size()
    
    # Create a bitarray of the required size, initialized to 0
    config_bits = bitarray(size_bits)
    config_bits.setall(0)

    for io_name, io in ip_core.inputs.items():
        if not isinstance(io.signal_route, IPIOConfigMapping):
            continue

        if not "matlab_name" in io.attributes:
            continue

        offset = io.signal_route.offset
        stride = io.signal_route.stride
        ssr = io.ssr
        dtype = io.datatype
        matlab_name = io.attributes["matlab_name"]

        # The matlab name may be struct_a.struct_b.field_c, so we need to split it and traverse the dictionary accordingly.
        keys = matlab_name.split('.')
        _matlab = matlab
        for key in keys:
            if key in _matlab:
                _matlab = _matlab[key]
            else:
                _matlab = None
                break

        if _matlab is None:
            continue # Not set in input data, ignore.

        # Everything after this point assumes _matlab is a valid array-like structure, e.g. from n-dimensional MATLAB matrices (in row major)
        matlab_value = np.array(_matlab).flatten()
        if len(matlab_value) != ssr:
            raise ValueError(f"Warning: MATLAB value for '{matlab_name}' has incorrect length {len(matlab_value)}, expected {ssr}.")

        for i in range(ssr):
            if offset + i*stride >= size_bits:
                raise ValueError(f"Warning: Offset {offset + i*stride} exceeds config size {size_bits}.")

            if isinstance(matlab_value[i], np.float64) or isinstance(matlab_value[i], np.float32):
                value = float(matlab_value[i])
            elif isinstance(matlab_value[i], np.int64) or isinstance(matlab_value[i], np.int32):
                value = int(matlab_value[i])
            else:
                raise ValueError(f"Warning: Unsupported type {type(matlab_value[i])} for '{matlab_name}' at index {i}.")
            
            bits = dtype.value_to_bits(value)
            if len(bits) > stride:
                raise ValueError(f"Warning: Value for '{matlab_name}' at index {i} exceeds stride {stride}.")

            print(f"Mapping MATLAB value {value} for '{matlab_name}' at index {i} to bits {bits.to01()} at offset {offset + i*stride}.")

            config_bits[offset + i*stride:offset + i*stride + len(bits)] = bits

    return config_bits