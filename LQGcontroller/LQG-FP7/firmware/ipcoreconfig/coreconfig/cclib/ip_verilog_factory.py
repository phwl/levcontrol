
class IPCoreVerilogFactory:
    def __init__(self):
        pass

    def add_module_io(self, type: str, signed: bool, name: str, bitsize: int = 1, attributes: dict = {}) -> None:
        raise NotImplementedError("Interface not callable.")

    def add_ipcore_io(self, ipcore_signal: str, signal: str) -> None:
        raise NotImplementedError("Interface not callable.")

    def get_config_signal_name(self) -> str:
        raise NotImplementedError("Interface not callable.")
    
    def set_config_map_size(self, config_map_size: int) -> None:
        raise NotImplementedError("Interface not callable.")
    
    def set_ipcore_module_name(self, ipcore_module_name: str) -> None:
        raise NotImplementedError("Interface not callable.")
    
    def set_ipcore_type_name(self, ipcore_type_name: str) -> None:
        raise NotImplementedError("Interface not callable.")