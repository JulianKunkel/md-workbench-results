#!/bin/bash

mpiexec -np 4 hostname > test.conf
mpiexec -np 4  ./mdtest.exe -n 10000 -i 1 -w 3900  -d /home/kunkel/metadata/testdir > mdtest.10k
rm -rf /home/kunkel/metadata/testdir
mpiexec -np 4 ./md-real-io.exe -I=1000 -P=9000 -D=1 -R=3  -- -D=/home/kunkel/metadata/testdir > mdreal.10k

mpiexec -np 12  ./mdtest.exe -n 10000 -i 1 -w 3900  -d /home/kunkel/metadata/testdir > mdtest.10k-12
rm -rf /home/kunkel/metadata/testdir
mpiexec -np 12 ./md-real-io.exe -I=1000 -P=9000 -D=1 -R=3  -- -D=/home/kunkel/metadata/testdir > mdreal.10k-12

mpiexec -np 4  ./mdtest.exe -n 100000 -i 1 -w 3900  -d /home/kunkel/metadata/testdir > mdtest.100k
rm -rf /home/kunkel/metadata/testdir
mpiexec -np 4 ./md-real-io.exe -I=1000 -P=90000 -D=1 -R=3  -- -D=/home/kunkel/metadata/testdir > mdreal.100k

mpiexec -np 12  ./mdtest.exe -n 100000 -i 1 -w 3900  -d /home/kunkel/metadata/testdir > mdtest.100k-12
rm -rf /home/kunkel/metadata/testdir
mpiexec -np 12 ./md-real-io.exe -I=1000 -P=90000 -D=1 -R=3  -- -D=/home/kunkel/metadata/testdir > mdreal.100k-12


mpiexec -np 1  ./mdtest.exe -n 10000 -i 1 -w 3900  -d /home/kunkel/metadata/testdir > mdtest.10k-1
rm -rf /home/kunkel/metadata/testdir
mpiexec -np 1 ./md-real-io.exe -I=1000 -P=9000 -D=1 -R=3  -- -D=/home/kunkel/metadata/testdir > mdreal.10k-1

mpiexec -np 1  ./mdtest.exe -n 100000 -i 1 -w 3900  -d /home/kunkel/metadata/testdir > mdtest.100k-1
rm -rf /home/kunkel/metadata/testdir
mpiexec -np 1 ./md-real-io.exe -I=1000 -P=90000 -D=1 -R=3  -- -D=/home/kunkel/metadata/testdir > mdreal.100k-1


## other options
mpiexec -np 1  ./mdtest.exe -n 10000 -u -L -s 1 -b 1 -e 3900 -i 1 -w 3900  -d /home/kunkel/metadata/testdir > mdtest-branched.10k-1
mpiexec -np 4  ./mdtest.exe -n 10000 -u -L -s 2 -b 1 -e 3900 -i 1 -w 3900  -d /home/kunkel/metadata/testdir > mdtest-branched.10k-4
mpiexec -np 12  ./mdtest.exe -n 10000 -u -L -s 6 -b 1 -e 3900 -i 1 -w 3900  -d /home/kunkel/metadata/testdir > mdtest-branched.10k-12

mpiexec -np 1  ./mdtest.exe -n 100000 -u -L -s 1 -b 1 -e 3900 -i 1 -w 3900  -d /home/kunkel/metadata/testdir > mdtest-branched.100k-1
mpiexec -np 4  ./mdtest.exe -n 100000 -u -L -s 2 -b 1 -e 3900 -i 1 -w 3900  -d /home/kunkel/metadata/testdir > mdtest-branched.100k-4
mpiexec -np 12  ./mdtest.exe -n 100000 -u -L -s 6 -b 1 -e 3900 -i 1 -w 3900  -d /home/kunkel/metadata/testdir > mdtest-branched.100k-12




