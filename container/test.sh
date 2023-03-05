#!/usr/bin/env bash

echo "hello"

# test script
FILE_TO_CHECK="/test.sh"

test -f "$FILE_TO_CHECK"
test -x "$FILE_TO_CHECK"

# launch script
FILE_TO_CHECK="/launch.sh"

test -f "$FILE_TO_CHECK"
test -x "$FILE_TO_CHECK"

# arbiter
DIR_TO_CHECK="/usr/local/arbiter"
test -d "$DIR_TO_CHECK"
FILE_TO_CHECK="/usr/local/arbiter/local/arbiter_local"
test -f "$FILE_TO_CHECK"
test -x "$FILE_TO_CHECK"

RUN apt-get install -y gcc g++ fpc
RUN apt-get install -y python2.7 python2.7-dev python3.8 python3.8-dev
RUN apt-get install -y gdb ddd
RUN apt-get install -y lazarus geany codeblocks
RUN apt-get install -y nano vim emacs gedit joe
RUN apt-get install -y firefox xterm mc
RUN apt-get install -y wget


# binaries existance check
BINS_TO_CHECK=("python2" "python3" "gcc" "g++" "fpc" "gdb" "ddd" "nano" "vim" "emacs" "gedit" "joe" "firefox" "xterm" "mc" "wget" "geany" "codeblocks" "lazarus-ide")
for idx in "${!BINS_TO_CHECK[@]}"
do
    echo "Checking ${BINS_TO_CHECK[$idx]}"
    which ${BINS_TO_CHECK[$idx]}
done
