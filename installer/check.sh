#!/usr/bin/env bash

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

# arbiter
DIR_TO_CHECK="/usr/local/arbiter"
test -d "$DIR_TO_CHECK"
FILE_TO_CHECK="/usr/local/arbiter/local/arbiter_local"
test -f "$FILE_TO_CHECK"
test -x "$FILE_TO_CHECK"

# binaries existance check
BINS_TO_CHECK=("python2" "python3" "gcc" "g++" "fpc" "gdb" "ddd" "nano" "vim" "emacs" "gedit" "joe" "firefox" "xterm" "mc" "wget" "geany" "codeblocks" "lazarus-ide")
for idx in "${!BINS_TO_CHECK[@]}"
do
    echo "Checking ${BINS_TO_CHECK[$idx]}"
    which ${BINS_TO_CHECK[$idx]}
done
