
from typing import Self
import os


class Template:
    def __init__(self, content: str) -> None:
        self.PATH = content.splitlines()[0].strip().removeprefix("PATH:").strip()
        self.content = "\n".join(content.splitlines()[1:])

    def __replace__(self, **kwargs: str) -> Self:
        result = self.content
        for key, value in kwargs.items():
            result = result.replace(f"{{{{ {key} }}}}", value)
        self.content = result
        return self


TEMPLATES: dict[str, Template] = {}

templates_dir = "automation/templates/"
if os.path.exists(templates_dir):
    for filename in os.listdir(templates_dir):
        file_path = os.path.join(templates_dir, filename)
        if os.path.isfile(file_path):
            with open(file_path, "r") as template_file:
                content = template_file.read()
                TEMPLATES[filename] = Template(content)
