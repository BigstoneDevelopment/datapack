import enum


class IO(enum.Enum):
    I = "input"  # noqa: E741
    O = "output"  # noqa: E741
    B = "bidirectional"  # noqa: E741


class Port():
    def __init__(self, type: IO, format: str, name: str) -> None:
        self.type = type
        self.format = format
        self.name = name
