This repo contains multiple perl scripts as POC to learn perl

## hello-world.pl

Simple 'hello world' program

#### Invocation (outside docker)

    ./src/hello-world.pl

## file-read.pl

Simple script to read a file given the relative path to the file.

#### Invocation

    ./src/file-read.pl <relative-path/to/file>

## Create docker image

    docker build --rm -t nup .

    # run the 'hello-world' program
    docker run --rm --entrypoint ./src/hello-world.pl nup .

    # run the 'file-read' program (without an external input file)
    docker run --rm -v `pwd`/tmp:/usr/src/app/tmp nup ./tmp/input-file.txt

    # run the 'file-read' program (with a mounted volume for input file)
    docker run --rm -v `pwd`/tmp:/usr/src/app/target nup ./target/input-file.txt

    # run in interactive shell mode
    docker run --rm --entrypoint /bin/bash -it nup
