rm -rf /home/kunkel/metadata/testdir
mpiexec -np 1 ./md-real-io.exe -I=1000 -P=9000 -D=1 -R=3  -- -D=/home/kunkel/metadata/testdir > mdreal.10k-1
rm -rf /home/kunkel/metadata/testdir
mpiexec -np 12 ./md-real-io.exe -I=1000 -P=90000 -D=1 -R=3  -- -D=/home/kunkel/metadata/testdir > mdreal.100k-12
rm -rf /home/kunkel/metadata/testdir
mpiexec -np 1 ./md-real-io.exe -I=1000 -P=90000 -D=1 -R=3  -- -D=/home/kunkel/metadata/testdir > mdreal.100k-1

rm -rf /home/kunkel/metadata/testdir
mpiexec -np 12 ./md-real-io.exe -I=100 -P=9000 -D=10 -R=10  -- -D=/home/kunkel/metadata/testdir > mdreal.100k-10dirs-12

