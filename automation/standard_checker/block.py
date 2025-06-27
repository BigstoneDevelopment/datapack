from typing import Any


class Block:
    def __init__(self, id: str, data: dict[str, Any]) -> None:
        self.id = id
        self.data = data

    def __repr__(self) -> str:
        return f"{self.id.removeprefix('minecraft:')} {self.data}"

    def __eq__(self, other: object) -> bool:
        if not isinstance(other, Block):
            return False
        # Check if IDs match and if the data of the other block is a subset of this block's data
        return self.id == other.id and (self.data | other.data) == self.data


Structure = list[list[list[Block | None]]]


__all__ = ["Block", "Structure"]
