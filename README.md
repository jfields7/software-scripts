# software-scripts
This repository contains a collection of scripts for installing outdated software.
Typically this involves downloading and compiling the software; systemwide installation
is not performed because this often requires sudo permissions, which may not be available
in every situation. However, where possible each script will add a symbolic link to the
executable into the base directory to make manual installation easier.

There are scripts for the following programs:
* CVS: An old version control program often used by other old software. Modern Linux
distros don't always include it. The most recent version (1.11.23) doesn't always compile
with modern versions of the C library. This script includes a patch to fix it.
