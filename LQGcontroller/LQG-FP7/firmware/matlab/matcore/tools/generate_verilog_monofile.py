#!/usr/bin/env python3

import sys
import io

def print_usage():
    print(f"{sys.argv[0]} <root_file> <out_file>")

def process_file(fname, files_list=[]):
    sio = io.StringIO()
    with open(fname, "r") as file:
        content = file.read()

    if fname in files_list:
        return ""

    files_list.append(fname)

    for line in content.splitlines():
        if not line.startswith("`include"):
            sio.write(line + "\n")
            continue

        # Include file.
        fname_inc = line.split(" ", 1)[1].strip().replace("\"", "").replace("'", "")
        fcontent = process_file(fname_inc, files_list)

        sio.write(fcontent)

    sio.seek(0)
    return sio.read()

def main():
    if len(sys.argv) != 3:
        print_usage()
        exit(1)

    root_file = sys.argv[1]
    out_file = sys.argv[2]

    content = process_file(root_file)

    with open(out_file, "w") as file:
        file.write(content)

if __name__ == "__main__":
    main()