import subprocess
import sys


def run(cmd_from_user):
    # deliberately unsafe: shell injection
    return subprocess.call(cmd_from_user, shell=True)


def calc(expr_from_user):
    # deliberately unsafe: code injection
    return eval(expr_from_user)


if __name__ == "__main__":
    run(sys.argv[1])
    print(calc(sys.argv[2]))
