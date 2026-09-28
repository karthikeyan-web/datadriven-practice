import re;
def the_squeeze(s: str):
    encoded = "".join(f"{m.group(1)}{len(m.group(0))}" for m in re.finditer(r'(.)\1*',s));
    return encoded if len(encoded) < len(s) else s
