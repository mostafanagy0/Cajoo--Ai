import os
import re
import json

# ====== إعداد ======

PROJECT_DIR = "C:\Users\user\Documents\my projects\cajoo\lib"  # عدل المسار هنا

TARGETS = [
    r"Text\(\s*['\"](.*?)['\"]\s*\)",             # Text widgets
    r"labelText\s*:\s*['\"](.*?)['\"]",            # labelText
    r"hintText\s*:\s*['\"](.*?)['\"]",             # hintText
    r"title\s*:\s*['\"](.*?)['\"]",                # title
    r"subtitle\s*:\s*['\"](.*?)['\"]",             # subtitle
    r"buttonText\s*:\s*['\"](.*?)['\"]",            # buttonText
    r"content\s*:\s*Text\(\s*['\"](.*?)['\"]\s*\)", # SnackBar content
    r"child\s*:\s*Text\(\s*['\"](.*?)['\"]\s*\)",   # Button child Text
]

# ====== وظائف ======

def sanitize_key(text):
    key = text.strip().lower().replace(" ", "_")
    key = re.sub(r"[^a-zA-Z0-9_]", "", key)  # Remove any weird characters
    return key[:50]  # خليه قصير لو النص طويل قوي

def extract_strings_from_file(filepath):
    extracted = {}
    with open(filepath, 'r', encoding='utf-8') as file:
        content = file.read()
        for pattern in TARGETS:
            matches = re.findall(pattern, content)
            for match in matches:
                if match.strip():
                    key = sanitize_key(match)
                    extracted[key] = match
    return extracted

# ====== تنفيذ ======

all_strings = {}

for subdir, dirs, files in os.walk(PROJECT_DIR):
    for file in files:
        if file.endswith(".dart"):
            filepath = os.path.join(subdir, file)
            file_strings = extract_strings_from_file(filepath)
            all_strings.update(file_strings)

# ====== إنشاء ملف ARB ======

output_file = 'intl_en.arb'

with open(output_file, 'w', encoding='utf-8') as f:
    json.dump(all_strings, f, indent=2, ensure_ascii=False)

print(f"✅ Extracted {len(all_strings)} strings into {output_file}")
