cd /home/expos/myexpos/expl
./expl ./expl_progs/idle.expl
./expl ./expl_progs/init.expl
./expl ./expl_progs/exe.expl
./expl ./expl_progs/primes.expl
./expl ./expl_progs/linked.expl
./expl ./expl_progs/odd.expl
./expl ./expl_progs/even.expl
./expl ./expl_progs/pid.expl
./expl ./expl_progs/fork3.expl
./expl ./expl_progs/readw.expl
./expl ./expl_progs/parent.expl
./expl ./expl_progs/child.expl
./expl ./expl_progs/crfile.expl
./expl ./expl_progs/delfile.expl
./expl ./expl_progs/reprint.expl
./expl ./expl_progs/test5.expl
./expl ./expl_progs/lsm.expl
./expl ./expl_progs/rmm.expl
./expl ./expl_progs/catm.expl
./expl ./expl_progs/cpm.expl
./expl ./expl_progs/s25as1.expl
./expl ./expl_progs/s25as2.expl
./expl ./expl_progs/test6.expl
./expl ./expl_progs/mergef.expl
./expl ./expl_progs/ru.expl
./expl ./expl_progs/lu.expl
./expl ./expl_progs/login.expl
./expl ./expl_progs/shell.expl
./expl ./expl_progs/fork4.expl
./expl ./expl_progs/test8.expl
./expl ./expl_progs/pgm1.expl
./expl ./expl_progs/test9.expl
./expl ./expl_progs/pgm2.expl
./expl ./expl_progs/test11.expl
./expl ./expl_progs/merge.expl
./expl ./expl_progs/m_store.expl
./expl ./expl_progs/m_sort.expl
./expl ./expl_progs/m_merge.expl

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
./spl ./spl_progs/mod7.spl
echo "INT 10"
./spl ./spl_progs/int10.spl
echo "Scheduler Module"
./spl ./spl_progs/mod5.spl
echo "Resource Manager / MOD_0"
./spl ./spl_progs/mod0.spl
echo "Device Manager Module / MOD_4"
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
echo "File Manager module/ MOD_3"
./spl ./spl_progs/mod3.spl
echo "Disk Interrupt"
./spl ./spl_progs/disk.spl
echo "INT 8"
./spl ./spl_progs/int8.spl
echo "INT 11"
./spl ./spl_progs/int11.spl
echo "INT 13"
./spl ./spl_progs/int13.spl
echo "INT 14"
./spl ./spl_progs/int14.spl
echo "INT 15"
./spl ./spl_progs/int15.spl
echo "INT 4"
./spl ./spl_progs/int4.spl
echo "INT 5"
./spl ./spl_progs/int5.spl
echo "INT 16"
./spl ./spl_progs/int16.spl
echo "INT 12"
./spl ./spl_progs/int12.spl
echo "INT 17"
./spl ./spl_progs/int17.spl
echo "MOD 6"
./spl ./spl_progs/mod6.spl


cd /home/expos/myexpos/xfs-interface
./xfs-interface <<EOF
fdisk
load --os ../spl/spl_progs/startup.xsm
load --init ../expl/expl_progs/login.xsm
load --idle ../expl/expl_progs/idle.xsm
load --int=7 ../spl/spl_progs/int7.xsm
load --int=timer ../spl/spl_progs/timer.xsm
load --module 7 ../spl/spl_progs/mod7.xsm
load --library ../expl/library.lib
load --module 5 ../spl/spl_progs/mod5.xsm
load --int=10 ../spl/spl_progs/int10.xsm
load --module 0 ../spl/spl_progs/mod0.xsm
load --module 4 ../spl/spl_progs/mod4.xsm
load --int=6 ../spl/spl_progs/int6.xsm
load --int=console ../spl/spl_progs/console.xsm
load --int=9 ../spl/spl_progs/int9.xsm
load --module 1 ../spl/spl_progs/mod1.xsm
load --exec ../expl/expl_progs/linked.xsm
load --exhandler ../spl/spl_progs/exhandler.xsm
load --int=disk ../spl/spl_progs/disk.xsm
load --exec ../expl/expl_progs/odd.xsm
load --exec ../expl/expl_progs/even.xsm
load --int=8 ../spl/spl_progs/int8.xsm
load --int=11 ../spl/spl_progs/int11.xsm
load --int=15 ../spl/spl_progs/int15.xsm
load --exec ../expl/expl_progs/pid.xsm
load --exec ../expl/expl_progs/fork3.xsm
load --exec ../expl/expl_progs/readw.xsm
load --int=13 ../spl/spl_progs/int13.xsm
load --int=14 ../spl/spl_progs/int14.xsm
load --int=4 ../spl/spl_progs/int4.xsm
load --int=17 ../spl/spl_progs/int17.xsm
load --int=16 ../spl/spl_progs/int16.xsm
load --int=12 ../spl/spl_progs/int12.xsm
load --int=5 ../spl/spl_progs/int5.xsm
load --module 3 ../spl/spl_progs/mod3.xsm
load --exec ../expl/expl_progs/parent.xsm
load --exec ../expl/expl_progs/child.xsm
load --exec ../expl/expl_progs/crfile.xsm
load --exec ../expl/expl_progs/delfile.xsm
load --exec ../expl/expl_progs/reprint.xsm
load --exec ../expl/expl_progs/test5.xsm
load --module 2 ../spl/spl_progs/mod2.xsm
load --data ../expl/expl_progs/numbers.dat
load --exec ../expl/expl_progs/s25as1.xsm
load --exec ../expl/expl_progs/s25as2.xsm
load --exec ../expl/expl_progs/test6.xsm
load --exec ../expl/expl_progs/mergef.xsm

load --exec ../expl/expl_progs/lsm.xsm
load --exec ../expl/expl_progs/rmm.xsm
load --exec ../expl/expl_progs/catm.xsm
load --exec ../expl/expl_progs/cpm.xsm
load --exec ../expl/expl_progs/lu.xsm
load --exec ../expl/expl_progs/ru.xsm
load --shell ../expl/expl_progs/shell.xsm
load --module 6 ../spl/spl_progs/mod6.xsm
load --exec ../expl/expl_progs/fork4.xsm
load --exec ../expl/expl_progs/test8.xsm
load --exec ../expl/expl_progs/test9.xsm
load --exec ../expl/expl_progs/pgm1.xsm
load --exec ../expl/expl_progs/test11.xsm
load --exec ../expl/expl_progs/pgm2.xsm

load --exec ../expl/expl_progs/merge.xsm
load --exec ../expl/expl_progs/m_merge.xsm
load --exec ../expl/expl_progs/m_store.xsm
load --exec ../expl/expl_progs/m_sort.xsm
exit
EOF
