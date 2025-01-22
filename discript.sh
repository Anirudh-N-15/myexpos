cd /home/expos/myexpos/expl
./expl ./expl_progs/idle.expl
./expl ./expl_progs/init.expl
./expl ./expl_progs/exe.expl
./expl ./expl_progs/primes.expl

cd /home/expos/myexpos/spl
echo "------------Startup Code"
./spl ./spl_progs/startup.spl
echo "INT 7"
./spl ./spl_progs/int7.spl
echo "Timer"
./spl ./spl_progs/timer.spl
echo "------------Compiling Exception Handler"
./spl ./spl_progs/exhandler.spl
echo "Boot Module"
./spl ./spl_progs/mod7boot.spl
echo "INT 10"
./spl ./spl_progs/int10.spl
echo "Scheduler Module"
./spl ./spl_progs/mod5.spl


cd /home/expos/myexpos/xfs-interface
./xfs-interface <<EOF
load --os ../spl/spl_progs/startup.xsm
load --init ../expl/expl_progs/init.xsm
load --idle ../expl/expl_progs/idle.xsm
load --int=7 ../spl/spl_progs/int7.xsm
load --int=timer ../spl/spl_progs/timer.xsm
load --module 7 ../spl/spl_progs/mod7boot.xsm
load --int=10 ../spl/spl_progs/exhandler.xsm
load --library ../expl/library.lib
load --exec ../expl/expl_progs/exe.xsm
load --module 5 ../spl/spl_progs/mod5.xsm
load --int=10 ../spl/spl_progs/int10.xsm
load --exec ../expl/expl_progs/primes.xsm
exit
EOF
