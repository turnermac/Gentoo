#!/bin/bash

# Normal Colors
Black='\e[0;30m'        # Black
Red='\e[0;31m'          # Red
Green='\e[0;32m'        # Green
Yellow='\e[0;33m'       # Yellow
Blue='\e[0;34m'         # Blue
Purple='\e[0;35m'       # Purple
Cyan='\e[0;36m'         # Cyan
White='\e[0;37m'        # White

# Bold
BBlack='\e[1;30m'       # Black
BRed='\e[1;31m'         # Red
BGreen='\e[1;32m'       # Green
BYellow='\e[1;33m'      # Yellow
BBlue='\e[1;34m'        # Blue
BPurple='\e[1;35m'      # Purple
BCyan='\e[1;36m'        # Cyan
BWhite='\e[1;37m'       # White

# Background
On_Black='\e[40m'       # Black
On_Red='\e[41m'         # Red
On_Green='\e[42m'       # Green
On_Yellow='\e[43m'      # Yellow
On_Blue='\e[44m'        # Blue
On_Purple='\e[45m'      # Purple
On_Cyan='\e[46m'        # Cyan
On_White='\e[47m'       # White

NC="\e[m"               # Color Reset


echo -e	${Green}"less /usr/portage/profiles/use.desc\n"${NC}

echo -e ${Green}"cat /var/lib/portage/world\n"${NC}
echo -e ${White}"    to show packages explicitly installed.\n"${NC}
echo -e ${Green}"equery list *\n"${NC}
echo -e ${White}"    to show all the installed packages, including dependencies.\n"${NC}
echo -e ${Green}"less /usr/portage/profiles/use.desc\n"${NC}
echo -e ${White}"    to view descriptions of the common USE flags.\n"${NC}
echo -e ${Green}"nano /etc/portage/make.conf\n"${NC}
echo -e ${White}"    to specify USE flags.\n"${NC}
echo -e ${Green}"nano /etc/portage/package.use\n"${NC}
echo -e ${White}"    to specify USE flags for individual packages.\n"${NC}
echo -e ${Green}"emerge --sync\n"${NC}
echo -e ${White}"    to get the latest Portage tree (metadata about packages), which is needed for all subsequent emerge commands.\n"${NC}
echo -e ${Green}"eselect news read\n"${NC}
echo -e ${White}"    to read news about Portage updates.\n"${NC}
echo -e ${Green}"emerge -s package\n"${NC}
echo -e ${White}"    to search for a package to see what exists.\n"${NC}
echo -e ${Green}"emerge -S package\n"${NC}
echo -e ${White}"    like above, except it will search all the descriptive text in addition to the package name. Note that Regular Expressions are used for this search.\n"${NC}
echo -e ${Green}"equery uses package\n"${NC}
echo -e ${White}"    to see the effect of USE flags on the specified package (requires gentoolkit).\n"${NC}
echo -e ${Green}"emerge -p package\n"${NC}
echo -e ${White}"    to pretend to install a package, in order to show a preview of the dependencies, etc. that will be installed in total.\n"${NC}
echo -e ${Green}"emerge -a package\n"${NC}
echo -e ${White}"    like above, except it will ask to proceed after showing a preview of what will happen.\n"${NC}
echo -e ${Green}"emerge -q package\n"${NC}
echo -e ${White}"    to install quietly, omitting all the technical compilation output.\n"${NC}
echo -e ${Green}"emerge -uD --with-bdeps=y @world -p\n"${NC}
echo -e ${White}"    to update all packages explicitly installed, as well as their dependencies and their build dependencies, pretending at first.\n"${NC}
echo -e ${Green}"emerge -uDN --with-bdeps=y @world -p\n"${NC}
echo -e ${White}"    like above, except changes to USE flags will also be considered in determining what needs to be re-built.\n"${NC}
echo -e ${Green}"etc-update\n"${NC}
echo -e ${White}"    to resolve changes to config files made by Portage updates.\n"${NC}
echo -e ${Green}"eread\n"${NC}
echo -e ${White}"    to view Portage logs.\n"${NC}
echo -e ${Green}"less /var/log/portage/elog/summary.log\n"${NC}
echo -e ${White}"    ditto.\n"${NC}
echo -e ${Green}"eselect\n"${NC}
echo -e ${White}"    to choose which SLOT of a package to use (among other things).\n"${NC}
echo -e ${Green}"gcc-config\n"${NC}
echo -e ${White}"    to choose which version of C++ compiler to use.\n"${NC}
echo -e ${Green}"env-update && source /etc/profile && emerge binutils glibc -1q\n"${NC}
echo -e ${White}"    to rebuild the "toolchain" after changing which version of C++ compiler to use.\n"${NC}
echo -e ${Green}"emerge -Ca package\n"${NC}
echo -e ${White}"    to remove a package.\n"${NC}
echo -e ${Green}"emerge -ca (--depclean --ask)\n"${NC}
echo -e ${White}"    to remove unneeded dependencies.\n"${NC}
echo -e ${Green}"emerge @preserved-rebuild\n"${NC}
echo -e ${White}"    to rebuild packages using outdated libraries.\n"${NC}
echo -e ${Green}"revdep-rebuild -p\n"${NC}
echo -e ${White}"    to rebuild packages whose (dynamically linked) dependencies are no longer needed and have been removed (requires gentoolkit), pretending at first.\n"${NC}
echo -e ${Green}"eclean -d -p distfiles\n"${NC}
echo -e ${White}"    to delete leftover package installation/build files; destructive means to remove stuff except for packages explicitly installed, pretending at first.\n"${NC}
echo -e ${Green}"rm /usr/portage/distfiles/*\n"${NC}
echo -e ${White}"    to delete leftover package installation/build files, regardless of whether you might want them again.\n"${NC}
echo -e ${Green}"eselect kernel\n"${NC}
echo -e ${White}"    to choose a version of the kernel source.\n"${NC}
echo -e ${Green}"cd /usr/src/linux && make menuconfig\n"${NC}
echo -e ${White}"    to configure kernel.\n"${NC}
echo -e ${Green}"cd /usr/src/linux && make oldconfig\n"${NC}
echo -e ${White}"    to configure kernel, showing only options that have changed since the current .config file. Since this will only prompt you with a sequence of questions, you may want to run the above command at the same time in another terminal so that you can browse through the questions and gain some context of what's being asked.\n"${NC}
echo -e ${Green}"make && make modules_install\n"${NC}
echo -e ${White}"    to build kernel & modules.\n"${NC}
echo -e ${Green}"mount /boot && cp arch/x86_64/boot/bzImage /boot/kernel-x.x.x-hardened && nano /etc/lilo.conf && lilo && umount /boot\n"${NC}
echo -e ${White}"    to install kernel; change "x.x.x-hardened" to whatever version you're building.\n"${NC}
echo -e ${Green}"rm -r /usr/src/linux-x.x.x-hardened && rm -r /lib/modules/x.x.x-hardened && rm /boot/kernel-x.x.x-hardened\n"${NC}
echo -e ${White}"    to remove an old, obsolete kernel that's no longer acknowledged by Portage.\n"${NC}
echo -e ${Green}"rc-config list\n"${NC}
echo -e ${White}"    to show which services are started in which runlevels, including those inactive.\n"${NC}
echo -e ${Green}"rc-update\n"${NC}
echo -e ${White}"    to show which services are started in which runlevels, in a slightly different format.\n"${NC}
echo -e ${Green}"rc-update add service runlevel\n"${NC}
echo -e ${White}"    to add a service, such as apache2, to a runlevel, such as default, so that it gets started when the computer boots up.\n"${NC}
echo -e ${Green}"rc-status\n"${NC}
echo -e ${White}"    to show which services are currently running.\n"${NC}
echo -e ${Green}"/etc/init.d/service restart\n"${NC}
echo -e ${White}"    to restart a service. Besides restart, you can also start, stop, etc.\n"${NC}
echo -e ${Green}"ntpq -p\n"${NC}
echo -e ${White}"    to query the status of your Network Time Protocol Daemon.\n"${NC}
echo -e ${Green}"nohup command > /dev/null 2>&1 &\n"${NC}
echo -e ${White}"    to run a process in the background, squelching its output, continuing even after you log off.\n"${NC}
echo -e ${Green}"echo 1 > /proc/sys/kernel/sysrq && echo b > /proc/sysrq-trigger\n"${NC}
echo -e ${White}"    to remotely reboot without accessing any disks, when all else fails.\n"${NC}
echo -e ${Green}"head -c 200 /dev/urandom | LC_CTYPE=C tr -c -d '[:alnum:]' | head -c 10\n"${NC}
echo -e ${White}"    to generate a password of 10 alphanumeric characters. \n"${NC}
