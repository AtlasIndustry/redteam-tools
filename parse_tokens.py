import re

# Read Evilginx log and extract Bearer tokens
with open("evilginx.log", "r", encoding="utf-8") as f:
    data = f.read()

tokens = re.findall(r'Bearer\s+([\S]+)', data)
print("\n".join(tokens))