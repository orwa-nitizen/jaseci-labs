::py::
import os
import byllm
::py::

glob llm = byllm.Model(model_name=os.getenv("JAC_MODEL", "gemini/gemini-1.5-flash-8b-latest"));

def generate_password() -> str by llm;

sem generate_password = """
Generate a secure password that is at least 12 characters long and includes uppercase, lowercase, numbers, and symbols.
""";

with entry {
    print(generate_password());
}
