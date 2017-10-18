rm -rf /home/kunkel/metadata/testdir

mpiexec -n 10 ./md-real-io.exe -I=10000 -P=10000 -D=1 -R=3 -L=/home/kunkel/metadata/latency/10-10-10k --latency-all -- -D=/home/kunkel/metadata/testdir | tee /home/kunkel/metadata/latency/10-10-10k.out

mpiexec -n 10 ./md-real-io.exe -I=10000 -P=20000 -D=1 -R=3 -L=/home/kunkel/metadata/latency/10-10-20k --latency-all -- -D=/home/kunkel/metadata/testdir | tee /home/kunkel/metadata/latency/10-10-20k.out

T=10-100-2k
mpiexec -n 100 ./md-real-io.exe -I=1000 -P=2000 -D=1 -R=3 -L=/home/kunkel/metadata/latency/$T --latency-all -- -D=/home/kunkel/metadata/testdir | tee /home/kunkel/metadata/latency/$T.out

T=10-100-100k
mpiexec -n 100 ./md-real-io.exe -I=10000 -P=10000 -D=1 -R=3 -L=/home/kunkel/metadata/latency/$T --latency-all -- -D=/home/kunkel/metadata/testdir | tee /home/kunkel/metadata/latency/$T.out

T=10-100-1g-2k
mpiexec -n 100 ./md-real-io.exe --lim-free-mem=1000 -I=1000 -P=2000 -D=1 -R=3 -L=/home/kunkel/metadata/latency/$T --latency-all -- -D=/home/kunkel/metadata/testdir | tee /home/kunkel/metadata/latency/$T.out

