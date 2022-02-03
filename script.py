from typing import List
from typing import Dict


# filepath = "lua/user/plugins.lua"
filepath = "test"
group_sign = "-->"
cmd = "use"
# plugins: Dict[str, List[str]] = {}
plugins = {}


def clear_list(raw_list: List[str], sign: str = group_sign) -> List[str]:
    for i, e in enumerate(raw_list):
        if e == sign:
            nl = raw_list[i - 1 :]
    return nl


with open(filepath, "r") as fp:
    line = fp.readline()
    cnt = 1
    current_group: str = ""
    while line:
        words = line.split(" ")
        if group_sign in words:
            cleaned_words = clear_list(words)
            # current_group = cleaned_words  # [2:]
            current_group = current_group.join(cleaned_words).rstrip()
            print("cu", current_group)
            plugins[current_group] = []
            # print("current_group is {}".format(current_group))
        if not current_group:
            continue
        if words[0] == cmd:
            plugins[current_group].append(words[1].rstrip())

        print("Line {}: {}".format(cnt, line.strip()))
        line = fp.readline()
        cnt += 1
        if cnt == 100:
            break

print(plugins)
