
import re
from typing import Literal, Self
import os


AllValidComponentsTemplate = Literal[
    "structure_file_name",
    "structure_display_name",
    "structure_author",
    "structure_description",
    "ports",
    "namespace",
    "model"
]


class Template:
    def __init__(self, content: str) -> None:
        content = content.strip()
        self.append = content.startswith("APPEND:")
        if self.append:
            content = content.removeprefix("APPEND:").strip()
        self.PATH = content.splitlines()[0].strip().removeprefix("PATH:").strip()
        self.content = "\n".join(content.splitlines()[1:])

    def __replace__(self, **kwargs: str) -> Self:
        result = self.content
        for key, value in kwargs.items():
            result = result.replace(f"<{key}>", value)
        self.content = result
        return self

    def valid(self) -> list[AllValidComponentsTemplate]:
        return re.findall(r"<(\w+)>", self.content)

    def finished(self) -> bool:
        return not re.search(r"<\w+>", self.content)

    def save(self) -> None:
        with open(self.PATH, "a" if self.append else "w") as file:
            file.write(self.content + "\n")


TEMPLATES: dict[str, Template] = {}

templates_dir = "automation/templates/"
if os.path.exists(templates_dir):
    for filename in os.listdir(templates_dir):
        file_path = os.path.join(templates_dir, filename)
        if os.path.isfile(file_path):
            with open(file_path, "r") as template_file:
                content = template_file.read()
                TEMPLATES[filename] = Template(content)


__all__ = ["Template", "TEMPLATES", "AllValidComponentsTemplate"]
