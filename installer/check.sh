#!/bin/bash

# check against the env with noi.cn
# https://noi.cn/gynoi/jsgz/2021-07-16/732450.shtml

# check kernel version
uname -r

# check versions for dev toolchains
apt-show-versions gcc g++ fpc python2 python3 gdb ddd

# check versions for IDE and editors
apt-show-versions lazarus geany codeblocks
apt-show-versions vim gedit nano emacs joe sublime-text

# vscode
code --version

# check versions for other utilities
apt-show-versions firefox xterm mc

# sublime --version

# arbiter-local --version
