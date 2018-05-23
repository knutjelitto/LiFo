pogo boots shell
pogo boots build-all
pogo create
pogo create | less
cd /Data/
cd Variable/
cd Boots
cd Build/Tools/
ls -l /Data/Compile/Build/Tools/LinuxHeaders-4.15.3/Changes
cd /Data/Variable/Store/Tools/
cd LinuxHeaders-4.15.3/
tar tvf Files.tar.xz 
cd Compile/
cd Roots/
cd Tools/
cd usr/
cd ..
du -h
pogo tools harvest 607
pogo tools build 607
man intro
man patch
pogo tools shell
time pogo boots build-all
man cp
man localedef
pogo tools harvest 609
pogo tools harvest 609 | less
cd /Data/Variable/Archives/
tar tvf tzdata2018c.tar.gz 
cd /Data/Compile/
cd Build/Tools/GLibc-2.27/
cd Changes/
cd Data/
cd Compile/Sources/glibc-2.27/
find
find -name "z*"
man zic
pogo tools build 609
cd /Data/Variable/Store/Boots/
cd GLibc-2.27/
ll
less Bom
cd
pogo tools build-all
cd /usr/share/info/
ll
less dir
more dir
man intro
man patch
time pogo boots build-all
man cp
man localedef
pogo tools harvest 609
pogo tools harvest 609 | less
cd /Data/Variable/Archives/
tar tvf tzdata2018c.tar.gz 
cd /Data/Compile/
cd Build/Tools/GLibc-2.27/
cd Changes/
cd Data/
cd Compile/Sources/glibc-2.27/
find
find -name "z*"
man zic
pogo tools build 609
cd /Data/Variable/Store/Boots/
cd GLibc-2.27/
less Bom
pogo tools build-all
ls -la
pgo create
pogo create
pogo tools harvset 610
man rm
man mv
man ln
man find
pogo tools build 610
pogo tools harvest 610
pogo tools build 611
pogo tools harvest 611
pogo tools build 612
pogo tools harvest 612
pogo tools shell
pogo tools build 613
pogo tools harvest 613
pogo tools build 614
pogo tools harvest 614
pogo tools build 615
pogo tools harvest 615
cd /Data/Compile/Sources/binutils-2.30/
ll
configure --help
./configure --help
./configure --help | less
cd
pogo tools build 616
pogo tools harvest 616
time pogo tools build-all
cd /usr/lib
ll
cat libbfd.la 
libtool
less /Data/Variable/Store/Tools/Binutils-2.30/Bom 
pogo tools shell
pogo tools build 617
less
cat Makefile
cat Makefile | less
cat Makefile | more
cd Compile/Sources/glibc-2.27/
find
find -name "z*"
man zic
cd /Data/Variable/Store/Boots/
cd GLibc-2.27/
less Bom
ls -la
pgo create
pogo create
pogo tools harvset 610
man rm
man mv
man find
pogo tools build 610
pogo tools harvest 610
pogo tools build 611
pogo tools harvest 611
pogo tools build 612
pogo tools harvest 612
pogo tools shell
pogo tools build 613
pogo tools harvest 613
pogo tools build 614
pogo tools harvest 614
pogo tools build 615
pogo tools harvest 615
cd /Data/Compile/Sources/binutils-2.30/
configure --help
./configure --help
./configure --help | less
pogo tools build 616
pogo tools harvest 616
time pogo tools build-all
cd /usr/lib
cat libbfd.la 
libtool
less /Data/Variable/Store/Tools/Binutils-2.30/Bom 
pogo tools shell
pogo tools build 617
less
cat Makefile
cat Makefile | less
cat Makefile | more
pogo tools harvest 620 | less
man ln
pogo tools build 620
pogo tools harvest 620
pogo tools build 621
pogo tools harvest 621
pogo tools build 622
pogo tools harvest 622
pogo tools harvest 623
pogo tools harvest 624
./configure --prefix=/usr             --bindir=/bin \
pogo tools build 624
pogo tools build 607
pogo tools harvest 607
pogo tools build 608
pogo tools harvest 608
pogo tools build 609
pogo tools rollout 612
(cd /Data/Compile/Build/Tools/GLibc-2.27/Changes; find usr/share/locale; )
(cd /Data/Compile/Build/Tools/GLibc-2.27/Changes; find usr/share/locale -type -f )
(cd /Data/Compile/Build/Tools/GLibc-2.27/Changes; find usr/share/locale -type f )
less /Data/Compile/Build/Tools/GLibc-2.27/Changes/usr/share/locale/locale.alias 
(cd /Data/Compile/Build/Tools/GLibc-2.27/Changes; find usr/share/locale -type f -path '*/LC_MESSAGES')
(cd /Data/Compile/Build/Tools/GLibc-2.27/Changes; find usr/share/locale -type f -path '*/LC_MESSAGES/*')
(cd /Data/Compile/Build/Tools/GLibc-2.27/ChangXes; find usr/share/locale -type f -path '*/LC_MESSAGES/*')
pogo tools harvest 609
pogo tools empty
pogo tools build-upto 607
pogo tools build-upto 608
pogo tools build-upto 609
pogo tools build-upto 610
pogo tools build-upto 611
pogo tools build-upto 612
pogo tools build-upto 613
pogo tools build-upto 614
pogo tools build-upto 615
pogo tools build-upto 616
pogo tools build-upto 617
pogo tools build-upto 618
pogo tools build-upto 619
pogo tools build-upto 620
pogo tools build-upto 621
pogo tools build-upto 622
pogo tools build-upto 623
less /Data/Variable/Store/Tools/Gcc-7.3.0/Bom 
grep iostream /Data/Variable/Store/Tools/Gcc-7.3.0/Bom 
grep iostream.h /Data/Variable/Store/Tools/Gcc-7.3.0/Bom 
less /Data/Compile/Sources/ncurses-6.1/c++/etip.h.in 
find / -name iostream.h
find / -name iostream
cd /usr/include/c++/
cd 6
cd /Data/Compile/Build/Tools/NCurses-6.1/
cd Build/
cd Changes/
cd c++
less etip.h 
cd
pogo tools build 623
pogo tools build-all
cd /Data/Compile/Build/Tools/NCurses-6.1/Changes/
cd Data/Compile/Sources/ncurses-6.1/
less config.log 
grep STREAM config.log 
grep HAVE_IO config.log 
grep HAVE config.log 
grep HAVE config.log | less
less config.status 
grep HAVE *
grep HAVE_ *
grep HAVE_I *
find . -type f -exec grep HAVE {} \;
find . -type f -exec grep HAVE_ {} \;
find . -type f -exec grep HAVE_IO {} \;
find . -type f -exec grep -v HAVE_IO {} \;
cd /Data/Compile/Build/Tools/NCurses-6.1/Changes/Data/Compile/Sources/ncurses-6.1/
cd ..
..
find | less
cd /Data/Compile/Sources/ncurses-6.1/
less include/ncurses_defs 
ll
find . -name 'M*'
less include/MKncurses_def.sh 
find . -type f -exec grep HAVE_IO {} \+
less c++/edit_cfg.sh 
g++
g++ -v
cd
cd /Data/Compile/Build/Tools/NCurses-6.1/Changes/Data/Compile/Sources/ncurses-6.1/
find | less
cd /Data/Compile/Sources/ncurses-6.1/
less include/ncurses_defs 
find . -name 'M*'
less include/MKncurses_def.sh 
less c++/edit_cfg.sh 
find . -type f -exec grep HAVE_IO {} \+
pogo tools build 623
pogo tools build 623 | tee log
pogo tools build 623 2>&1 | tee log
less log
cd /Data/Compile/Build/Tools/NCurses-6.1/Changes/Data/Compile/Sources/ncurses-6.1/c++
less etip.h 
pogo tools build-all
pogo boots build-all; pogo tools build-all
pogo tools shell
cleare
less dummy.log 
clear
cd /Data/Compile/Roots/Tools/usr/lib
ll | less
cd ..
..
ll
cd
time pogo tools build-all
cd
time pogo tools build-all
rm a.out dummy.cc log tmp.*
rm -rvf a.out dummy.cc log tmp.*
less .lesshst 
less .wget-hsts 
ll
curl
man curl
apt-get install curl
apt-get install curl
patch
cd tools
ls -la
cd bin/
ll
ls -l patch
which
which patch
sed
which sed
env
which patch
which
which patch
less /Data/Compile/Sources/ncurses-6.1/c++/etip.h.in 
find / -name iostream.h
find / -name iostream
cd /usr/include/c++/
cd 6
cd /Data/Compile/Build/Tools/NCurses-6.1/
cd Changes/
cd c++
less etip.h 
pogo tools build 623
pogo tools build-all
cd /Data/Compile/Build/Tools/NCurses-6.1/Changes/
cd Data/Compile/Sources/ncurses-6.1/
less config.log 
grep STREAM config.log 
grep HAVE_IO config.log 
grep HAVE config.log 
grep HAVE config.log | less
less config.status 
grep HAVE *
grep HAVE_ *
grep HAVE_I *
find . -type f -exec grep HAVE {} \;
find . -type f -exec grep HAVE_ {} \;
find . -type f -exec grep HAVE_IO {} \;
find . -type f -exec grep -v HAVE_IO {} \;
cd /Data/Compile/Build/Tools/NCurses-6.1/Changes/Data/Compile/Sources/ncurses-6.1/
..
find | less
cd /Data/Compile/Sources/ncurses-6.1/
less include/ncurses_defs 
find . -name 'M*'
less include/MKncurses_def.sh 
find . -type f -exec grep HAVE_IO {} \+
less c++/edit_cfg.sh 
g++
g++ -v
cd /Data/Compile/Build/Tools/NCurses-6.1/Changes/Data/Compile/Sources/ncurses-6.1/
find | less
cd /Data/Compile/Sources/ncurses-6.1/
less include/ncurses_defs 
find . -name 'M*'
less include/MKncurses_def.sh 
less c++/edit_cfg.sh 
find . -type f -exec grep HAVE_IO {} \+
pogo tools build 623
pogo tools build 623 | tee log
pogo tools build 623 2>&1 | tee log
less log
cd /Data/Compile/Build/Tools/NCurses-6.1/Changes/Data/Compile/Sources/ncurses-6.1/c++
less etip.h 
pogo tools build-all
pogo boots build-all; pogo tools build-all
pogo tools shell
cleare
less dummy.log 
clear
cd /Data/Compile/Roots/Tools/usr/lib
ll | less
..
time pogo tools build-all
time pogo tools build-all
rm a.out dummy.cc log tmp.*
rm -rvf a.out dummy.cc log tmp.*
less .lesshst 
less .wget-hsts 
curl
apt-get install curl
man curl
cd /Data/
cd Compile/
l
cd tools
cd Build/
du
mv Lfs Roots/ 
mv Lfs Boots
cd Sources/
rm -rv LFSboots/
cd ll
rmdir /Data/Compile/Store
rm -rv /Data/Compile/Sources/
pogo create
pogo create | less
pogo tools built-upto 607
rm -rv /Data/Compile/Sources
man tee
cd /Data/Compile/
cd Lfs/
cd tools/
cd Roots/
cd ..
cd Variable/
cd Store/
cd Tools/
cd LinuxHeaders-4.15.3/Logs/
ls -la
cd -
ll
less Harvest 
sdtbuf
stdbuf
man stdbuf
cd
man sed
pogo tools build-upto 607[A
ls -l /dev/ | less
pogo tools build-upto 608
pogo tools build-upto 609
pogo boots build-all
echo $?
time pogo boots build-all
pogo boots shell
pogo tools empty
ls -l /dev/
pogo tools build-upto 607
mount
which
env
perl
perl --version
perl --help
perl -V
perl -V | more
cd /usr/bin/
ls -l perl
cd /usr/bin/
ls -l perl*
cd /usr/bin/
ls -la perl*
pogo tools build-upto 607
mount
which
env
perl
perl --version
perl --help
perl -V
perl -V | more
cd /usr/bin/
ls -l perl
cd /usr/bin/
ls -l perl*
cd /usr/bin/
ls -la perl*
cd /tmp
find cruc
find crux
lfspider | less
lfspider 
cd /Data/Variable/Store/
man ls
cd Tools/
ll
ll -t
pogo tools build-upto 640
pogo tools build-upto 641
pogo tools build-upto 642
pogo tools build-upto 643
pogo tools build-upto 644
pogo tools build-upto 645
pogo tools build-upto 646
pogo tools build-upto 647
pogo tools build-upto 648
pogo tools build-upto 649
pogo tools build-upto 650
pogo tools build-upto 651
pogo tools build-upto 652
pogo tools build-upto 653
pogo tools build-upto 654
pogo tools build-upto 655
pogo tools build-upto 656
pogo tools build-upto 657
pogo tools build-upto 658
pogo tools build-upto 659
pogo tools build-upto 660
pogo tools build-upto 661
pogo tools build-upto 662
pogo tools build-upto 663
pogo tools build-upto 664
pogo tools build-upto 665
pogo tools build-upto 666
pogo tools build-upto 667
pogo tools build-upto 668
pogo tools build-upto 669
pogo tools build-upto 670
pogo tools build-upto 671
pogo tools build-upto 672
pogo tools build-upto 673
pogo tools build-upto 674
pogo tools build-upto 675
pogo tools build-upto 676
pogo tools build-upto 677
cd
pogo tools build-all
echo $?
find /Data
find /Data/
find /Data/ -nam rm
find /Data/ -name rm
pogo tools build 656
time pogo tools build-all
clear
