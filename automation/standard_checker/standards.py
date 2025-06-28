import os
import json
import re
from typing import Any, Literal, cast
from .color import Color
from .port import Port


Direction = Literal["top", "bottom", "north", "south", "west", "east", "side"]


class Standard:
    def __init__(self, content: str):
        self.ports: list[tuple[Direction, tuple[int, int], Port]] = []

        for key, value in json.loads(content).items():
            if key not in Direction.__args__:
                raise ValueError(f"Invalid direction: {key}. Valid directions are: {', '.join(Direction.__args__)}")
            if not isinstance(value, list):
                raise ValueError(f"Value for {key} must be a list, got {type(value).__name__}")
            for port in cast(list[Any], value):
                if not isinstance(port, dict):
                    raise ValueError(f"Each port must be a dictionary, got {type(port).__name__}")
                if "name" not in port or "position" not in port or "color" not in port:
                    raise ValueError(f"Port must contain 'name', 'position', and 'color' keys, got {port}")
                if not isinstance(port["name"], str):
                    raise ValueError(f"Port name must be a string, got {type(port['name']).__name__}")
                if not isinstance(port["position"], (list, tuple)) or len(port["position"]) != 3:
                    raise ValueError("Port position must be a list or tuple of two integers"
                                     " representing position and 1 letter for the type, got"
                                     f" {port['position']}")
                if not isinstance(port["color"], str):
                    raise ValueError(f"Port color must be a string, got {type(port['color']).__name__}")
                if not re.match(r"[IOB][A-Z]+(-[A-Z]+)?", port["name"]):
                    raise ValueError(f"Invalid port name: {port['name']}")
                self.ports.append((
                    key,
                    tuple(port["position"][:2]),
                    Port(port["position"][2], port["name"][1:].split('-')[0], port["name"], Color(port["color"]))
                ))

    def __getitem__(self, direction: Direction, position: tuple[int, int]) -> Port:
        for dir, pos, port in self.ports:
            if dir == direction and pos == position:
                return port
        raise KeyError(f"No port found for direction: {direction}, position: {position}")


STANDARDS: dict[str, Standard] = {}

templates_dir = "automation/templates/"
if os.path.exists(templates_dir):
    for filename in os.listdir(templates_dir):
        file_path = os.path.join(templates_dir, filename)
        if os.path.isfile(file_path):
            with open(file_path, "r") as template_file:
                STANDARDS[filename] = Standard(json.load(template_file))


__all__ = ["Standard", "STANDARDS"]
