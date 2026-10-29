from .ip_type import IPType

class IPConfigMapEntry:
    def __init__(self, offset: int, type: IPType):
        self.offset = offset
        self.type = type

    def __repr__(self):
        return f"IPConfigMapEntry(offset={self.offset}, type={str(self.type)})"

class IPConfigMap:
    def __init__(self):
        self.entries = {}
    
    def add_entry(self, map_destination: str, entry: IPConfigMapEntry) -> None:
        if map_destination in self.entries.keys():
            raise KeyError("An entry with the given map_destination already exists.")
        self.entries[map_destination] = entry
    
    def get_total_size(self) -> int:
        size = 0
        for entry in self.entries.values():
            size = max(size, entry.offset + entry.type.size)
        return size

    def __repr__(self):
        return f"IPConfigMap()"