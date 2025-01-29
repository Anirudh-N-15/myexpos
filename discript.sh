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
echo "Timer Interrupt"
./spl ./spl_progs/timer.spl
echo "------------Compiling Exception Handler"
./spl ./spl_progs/exhandler.spl
echo "Boot Module"
./spl ./spl_progs/mod7boot.spl
echo "INT 10"
./spl ./spl_progs/int10.spl
echo "Scheduler Module"
./spl ./spl_progs/mod5.spl
echo "Resource Manager"
./spl ./spl_progs/mod0.spl
echo "Device Manager Module"
./spl ./spl_progs/mod4.spl
echo "INT 6"
./spl ./spl_progs/int6.spl
echo "Console Interrupt"
./spl ./spl_progs/console.spl
echo "INT 9"
./spl ./spl_progs/int9.spl
echo "Process Manager Module/ MOD_1"
./spl ./spl_progs/mod1.spl
echo "Memory Manager Module/ MOD_2"
./spl ./spl_progs/mod2.spl


cd /home/expos/myexpos/xfs-interface
./xfs-interface <<EOF
fdisk
load --os ../spl/spl_progs/startup.xsm
load --init ../expl/expl_progs/init.xsm
load --idle ../expl/expl_progs/idle.xsm
load --int=7 ../spl/spl_progs/int7.xsm
load --int=timer ../spl/spl_progs/timer.xsm
load --module 7 ../spl/spl_progs/mod7boot.xsm
load --int=10 ../spl/spl_progs/exhandler.xsm
load --library ../expl/library.lib
load --module 5 ../spl/spl_progs/mod5.xsm
load --int=10 ../spl/spl_progs/int10.xsm
load --module 0 ../spl/spl_progs/mod0.xsm
load --module 4 ../spl/spl_progs/mod4.xsm
load --int=6 ../spl/spl_progs/int6.xsm
load --int=console ../spl/spl_progs/console.xsm
load --int=9 ../spl/spl_progs/int9.xsm
load --module 1 ../spl/spl_progs/mod1.xsm
load --module 2 ../spl/spl_prgos/mod2.xsm
exit
EOF
