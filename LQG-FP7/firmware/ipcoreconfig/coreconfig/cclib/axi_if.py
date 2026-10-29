from .ip_type import IPType

class AXIOffsetMapping:
    def __init__(self, offset: int, datatype: IPType):
        self.offset = offset
        self.datatype = datatype

    def __repr__(self):
        return f"AXIOffsetMapping(offset={self.offset}, datatype={str(self.datatype)})"

class AXIInterface:
    def __init__(self, data_width: int, addr_width: int, clock_signal: str, freq: int):
        self.data_width = data_width
        self.addr_width = addr_width
        self.clock_signal = clock_signal
        self.freq = freq

        self.inputs = {}
        self.outputs = {}

    def add_input(self, id: str, mapping: AXIOffsetMapping) -> None:
        if id in self.inputs:
            raise ValueError(f"Input with ID '{id}' already exists.")
        self.inputs[id] = mapping

    def add_output(self, id: str, mapping: AXIOffsetMapping) -> None:
        if id in self.outputs:
            raise ValueError(f"Output with ID '{id}' already exists.")
        self.outputs[id] = mapping

    def __repr__(self):
        return f"AXIInterface(data_width={self.data_width}, addr_width={self.addr_width}, inputs={self.inputs}, outputs={self.outputs})"