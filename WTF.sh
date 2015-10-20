#!/bin/bash
set -o xtrace
#History
history
cat /home/*/.*hist*
jobs -l
who -a
w -i
find /var/log -type f -name "*.log"  -exec cat {} \;
last -a

#System INFO
uname -a
ps aux
top -n 1 -d
id
arch, uname -m
w
who -a
gcc -v
mysql --version
perl -v
ruby -v
python --version
df -k
mount
last -a
lastcomm
lastlog
getenforce
dmesg
lspci
lsusb
lscpu
lshw
cat /proc/cpuinfo
cat /proc/meminfo
du -h --max-depth=1 /
which nmap
locate bin/nmap
locate bin/nc
java -version

#Network Info
ip addr show
ip ro show
ifconfig -a
route -n
cat /etc/network/interfaces
iptables -L -n -v
iptables -t nat -L -n -v
ip6tables -L -n -v
iptables-save
netstat -anop
netstat -r
netstat -nltupw
arp -a
lsof -nPi
cat /proc/net/*

#User Accounts
cat /etc/passwd
cat /etc/shadow
cat /etc/group
getent passwd
getent group
pdbedit -L -w
pdbedit -L -v
cat /etc/aliases
find /etc -name aliases
getent aliases
ypcat passwd

#User Info
ls -alh /home/*/
ls -alh /home/*/.ssh/
cat /home/*/.ssh/authorized_keys
cat /home/*/.ssh/known_hosts
cat /home/*/.ssh/id
cat /home/*/.ssh/*
cat /home//.hist*
#find /home//.vnc /home//.subversion -type f
#grep ^ssh /home//.*hist*
grep ^ssh /home/*/.*hist*
#grep ^telnet ~/.*hist*
grep ^telnet /home/*/.*hist*
#grep ^mysql /home//.hist*
grep ^mysql /home/*/.*hist*
grep ^map /home/*/.*hist*
grep ^map /home/*/.*hist*
grep ^ssh /home/*/.*hist*
grep 138.201.109.74 /home/*/.*hist*
grep scan /home/*/.*hist*


cat /home/*/.viminfo
sudo -l
crontab -l
cat /home/*/.mysql_history

#Creds
cat /tmp/krb5cc_*
cat /tmp/krb5.keytab
cat /home/*/.gnupg/secring.gpgs

#Config
ls -aRl /etc/ * awk '$1 ~ /w.$/' * grep -v lrwx 2>/dev/nullte
cat /etc/issue{,.net}
cat /etc/master.passwd
cat /etc/group
cat /etc/hosts
cat /etc/crontab
cat /etc/sysctl.conf
for user in $(cut -f1 -d: /etc/passwd); do echo $user; crontab -u $user -l; done
cat /etc/resolv.conf
cat /etc/syslog.conf
cat /etc/chttp.conf
cat /etc/lighttpd.conf
cat /etc/cups/cupsd.confcda
cat /etc/inetd.conf
cat /opt/lampp/etc/httpd.conf
cat /etc/samba/smb.conf
cat /etc/openldap/ldap.conf
cat /etc/ldap/ldap.conf
cat /etc/exports
cat /etc/auto.master
cat /etc/auto_master
cat /etc/fstab
find /etc/sysconfig/ -type f -exec cat {} \;

#Distro
uname -a
lsb_release -d
cat /etc/os-release
cat /etc/issue
cat /etc/*release

#Installed Apps
rpm -qa --last | head
yum list | grep installed

#Package Sources
cat /etc/apt/sources.list
ls -l /etc/yum.repos.d/
cat /etc/yum.conf
cat /etc/yum.repos.d/*

#Find Important Files
ls -dlR */
ls -alR | grep ^d
find /var -type d
ls -dl `find /var -type d`
ls -dl `find /var -type d` | grep -v root
find /var ! -user root -type d -ls
find /var/log -type f -exec ls -la {} \;
find / -perm -4000
ls -alhtr /mnt
ls -alhtr /media
ls -alhtr /tmp
ls -alhtr /home
cd /home/; treels /home//.ssh/
find /home -type f -iname '.*history'
ls -lart /etc/rc.d/
locate tar | grep [.]tar$ 
locate tgz | grep [.]tgz$
locate sql | grep [.]sql$
locate settings | grep [.]php$
locate config.inc | grep [.]php$
ls /home//id
.properties | grep [.]properties # java config files
locate .xml | grep [.]xml # java/.net config files
find /sbin /usr/sbin /opt /lib `echo $PATH | ‘sed s/:/ /g’` -perm /6000 -ls 
locate rhosts

#Misc
find / -type f -mtime 14
find / -type d -mtime 14
l
ls -alh /root/
cat /etc/sudoers
cat /etc/shadow
cat /etc/master.passwd # OpenBSD
cat /var/spool/cron/crontabs/* | cat /var/spool/cron/*
lsof -nPi
set +o xtrace
