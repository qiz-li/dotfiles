import os
import platform
import yaml


def install(packages, key=None):
    """Check for OS and install packages using the appropriate installer.
    If only certain installers are given, use only those."""
    for installer, package in packages.items():
        single = installer == 'all'
        package = key if not package else package

        if installer == 'pip':
            os.system(f'python3 -m pip install {package}')

        elif platform.system() == 'Darwin' and (installer == 'brew' or single):
            os.system(f'brew install --no-quarantine {package}')

        elif platform.system() == 'Linux' and (installer == 'apt' or single):
            os.system(f'sudo apt install {package}')


def main():
    """Read package list to install specified packages."""
    if platform.system() == 'Linux':
        os.system('sudo apt update')

    with open(f'{os.path.dirname(__file__)}/packages.yaml', 'r') as file:
        config = yaml.load(file, Loader=yaml.FullLoader)

    for key, value in config.items():
        print(f"----------{'-'*(len(key)+1)}\nInstalling {key}\n")
        if value:
            install(value, key=key)
        else:
            install({'all': key})


if __name__ == '__main__':
    main()
