from typing import cast, Any
import nbtlib
from block import Block


def read_nbt_file(file_path: str) -> list[list[list[Block | None]]]:
    """
    Reads a Minecraft NBT file and returns a 3D structure of blocks.
    """
    nbt_file = cast(nbtlib.Compound, nbtlib.load(file_path))

    size = cast(nbtlib.IntArray, (nbt_file["size"]))
    x_size, y_size, z_size = size
    structure = [[[None for _ in range(z_size)]
                 for _ in range(y_size)]
                 for _ in range(x_size)]

    structure: list[list[list[Block | None]]] = [
        [[None for _ in range(z_size)] for _ in range(y_size)] for _ in range(x_size)
    ]

    palette = cast(list[nbtlib.Compound], nbt_file["palette"])
    blocks = cast(list[nbtlib.Compound], nbt_file["blocks"])

    for block in blocks:
        pos = cast(nbtlib.IntArray, block["pos"])
        x, y, z = pos

        state_index = cast(int, block["state"])
        state: nbtlib.Compound = palette[state_index]

        block_id = cast(str, state["Name"])
        properties: dict[str, Any] = dict(state.get("Properties", {}))

        structure[x][y][z] = Block(block_id, properties)

    return structure


__all__ = ["read_nbt_file"]
