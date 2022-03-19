import os
import platform
import yaml


def print_message(package):
    print(f"\n----------{'-'*(len(package) + 1)}\nInstalling {package}\n")


def install(package, installers):
    """Check for OS and install packages using the appropriate installer.
       If only certain installers are given, use only those."""

    if installers == 'pip':
        print_message(package)
        os.system(f'python3 -m pip install {package}')

    elif platform.system() == 'Darwin' and 'brew' in installers:
        print_message(package)
        os.system(f'brew install --no-quarantine {package}')

    elif platform.system() == 'Linux' and 'apt' in installers:
        print_message(package)
        os.system(f'sudo apt install -y {package}')


def main():
    """Read package list to install specified packages."""
    if platform.system() == 'Linux':
        os.system('sudo apt update')

    with open(f'{os.path.dirname(__file__)}/packages.yaml', 'r') as file:
        config = yaml.load(file, Loader=yaml.FullLoader)

    for package, installers in config.items():
        install(package, installers if installers else {'brew', 'apt'})
    print()


if __name__ == '__main__':
    main()
