import os
import platform
import yaml


def print_message(package):
    print(f"\n----------{'-'*(len(package) + 1)}\nInstalling {package}\n")


def install(package, installer):
    """Check for OS and install packages using the appropriate installer.
       If only certain installers are given, use only those."""
    if installer == 'pip':
        print_message(package)
        os.system(f'python3 -m pip install {package}')

    elif platform.system() == 'Darwin' and installer in ('brew', 'all'):
        print_message(package)
        os.system(f'brew install --no-quarantine {package}')

    elif platform.system() == 'Linux' and installer in ('apt', 'all'):
        print_message(package)
        os.system(f'sudo apt install {package}')


def main():
    """Read package list to install specified packages."""
    if platform.system() == 'Linux':
        os.system('sudo apt update')

    with open(f'{os.path.dirname(__file__)}/packages.yaml', 'r') as file:
        config = yaml.load(file, Loader=yaml.FullLoader)

    for package, installer in config.items():
        install(package, installer if installer else 'all')
    print()


if __name__ == '__main__':
    main()
