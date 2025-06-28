import enum
from .color import Color


class IO(enum.Enum):
    I = "input".upper()  # noqa: E741
    O = "output".upper()  # noqa: E741
    B = "bidirectional".upper()  # noqa: E741


class Port():
    def __init__(self, type: IO, format: str, name: str, color: Color) -> None:
        self.type = type
        self.format = format.upper()
        self.name = name.upper()
        self.color = color

    def __str__(self) -> str:
        return f"""{{text:\"{self.type.name}{self.format}{
            "" if self.name == "ST" or self.name == "STANDARD" else f"-{self.name}"
            }\",italic:true,color:\"{self.color}\"}}"""


__all__ = ["IO", "Port"]
