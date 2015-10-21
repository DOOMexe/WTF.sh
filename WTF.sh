#!/bin/bash
echo set -o xtrace
set -o xtrace

echo   History
#History

echo history
history
echo cat /home/*/.*hist*
cat /home/*/.*hist*
echo jobs -l
jobs -l
echo who -a
who -a
echo w -i
w -i
echo find /var/log -type f -name "*.log"  -exec cat {} \;
find /var/log -type f -name "*.log"  -exec cat {} \;
echo last -a
last -a

echo #System INFO
#System INFO
echo uname -a
uname -a
echo ps aux
ps aux
echo top -n 1 -d
top -n 1 -d
echo id
id
echo arch, uname -m
arch, uname -m
echo w
w
echo who -a
who -a
echo gcc -v
gcc -v
echo mysql --version
mysql --version
echo perl -v
perl -v
echo ruby -v
ruby -v
echo python --version
python --version
echo df -k
df -k
echo mount
mount
echo last -a
last -a
echo lastcomm
lastcomm
echo lastlog
lastlog
echo getenforce
getenforce
echo dmesg
dmesg
echo lspci
lspci
echo lsusb
lsusb
echo lscpu
lscpu
echo lshw
lshw
echo cat /proc/cpuinfo
cat /proc/cpuinfo
echo cat /proc/meminfo
cat /proc/meminfo
echo du -h --max-depth=1 /
du -h --max-depth=1 /
echo which nmap
which nmap
echo locate bin/nmap
locate bin/nmap
echo locate bin/nc
locate bin/nc
echo java -version
java -version

#Network Info
echo #Network Info
echo ip addr show
ip addr show
echo ip ro show
ip ro show
echo ifconfig -a
ifconfig -a
echo route -n
route -n
echo cat /etc/network/interfaces
cat /etc/network/interfaces
echo iptables -L -n -v
iptables -L -n -v
echo iptables -t nat -L -n -v
iptables -t nat -L -n -v
echo ip6tables -L -n -v
ip6tables -L -n -v
echo iptables-save 
iptables-save
echo netstat -anop
netstat -anop
echo netstat -r
netstat -r
echo netstat -nltupw
netstat -nltupw
echo arp -a
arp -a
echo lsof -nPi
lsof -nPi
echo cat /proc/net/*
echo cat /proc/net/*

echo #User Accounts
echo cat /etc/passwd
cat /etc/passwd
echo cat /etc/shadow
cat /etc/shadow
echo cat /etc/group
cat /etc/group
echo getent passwd
getent passwd
echo getent group
getent group
echo pdbedit -L -w
pdbedit -L -w
echo pdbedit -L -v
pdbedit -L -v
echo cat /etc/aliases
cat /etc/aliases
echo find /etc -name aliases
find /etc -name aliases
echo getent aliases
getent aliases
echo ypcat passwd
ypcat passwd

echo #User Info
#User Info
echo ls -alh /home/*/
ls -alh /home/*/
echo ls -alh /home/*/.ssh/
ls -alh /home/*/.ssh/
echo cat /home/*/.ssh/authorized_keys
cat /home/*/.ssh/authorized_keys
echo cat /home/*/.ssh/known_hosts
cat /home/*/.ssh/known_hosts
echo cat /home/*/.ssh/id
cat /home/*/.ssh/id
echo cat /home/*/.ssh/*
cat /home/*/.ssh/*
echo cat /home//.hist*
cat /home//.hist*
echo #find /home//.vnc /home//.subversion -type f
#find /home//.vnc /home//.subversion -type f
echo #grep ^ssh /home//.*hist*
#grep ^ssh /home//.*hist*
echo grep ^ssh /home/*/.*hist*
grep ^ssh /home/*/.*hist*
echo #grep ^telnet ~/.*hist*
#grep ^telnet ~/.*hist*
echo grep ^telnet /home/*/.*hist*
grep ^telnet /home/*/.*hist*
echo #grep ^mysql /home//.hist*
#grep ^mysql /home//.hist*
echo grep ^mysql /home/*/.*hist*
grep ^mysql /home/*/.*hist*
echo grep ^map /home/*/.*hist*
grep ^map /home/*/.*hist*
echo grep ^ssh /home/*/.*hist*
grep ^ssh /home/*/.*hist*
echo #grep 138.201.109.74 /home/*/.*hist*
#grep 138.201.109.74 /home/*/.*hist*
echo grep scan /home/*/.*hist*
grep scan /home/*/.*hist*

echo cat /home/*/.viminfo
cat /home/*/.viminfo
echo sudo -l
sudo -l
echo crontab -l
crontab -l
echo cat /home/*/.mysql_history
cat /home/*/.mysql_history

#Creds
echo #Creds
echo cat /tmp/krb5cc_*
cat /tmp/krb5cc_*
echo cat /tmp/krb5.keytab
cat /tmp/krb5.keytab
echo cat /home/*/.gnupg/secring.gpgs
cat /home/*/.gnupg/secring.gpgs


#Config
echo #Config
echo ls -aRl /etc/ * awk '$1 ~ /w.$/' * grep -v lrwx 2>/dev/nullte
ls -aRl /etc/ * awk '$1 ~ /w.$/' * grep -v lrwx 2>/dev/nullte
echo cat /etc/issue{,.net}
cat /etc/issue{,.net}
echo cat /etc/master.passwd
cat /etc/master.passwd
echo cat /etc/group
cat /etc/group
echo cat /etc/hosts
cat /etc/hosts
echo cat /etc/crontab
cat /etc/crontab
echo cat /etc/sysctl.conf
cat /etc/sysctl.conf
echo for user in $(cut -f1 -d: /etc/passwd); do echo $user; crontab -u $user -l; done
for user in $(cut -f1 -d: /etc/passwd); do echo $user; crontab -u $user -l; done
echo cat /etc/resolv.conf
cat /etc/resolv.conf
echo cat /etc/syslog.conf
cat /etc/syslog.conf
echo cat /etc/chttp.conf
cat /etc/chttp.conf
echo cat /etc/lighttpd.conf
cat /etc/lighttpd.conf
echo cat /etc/cups/cupsd.confcda
cat /etc/cups/cupsd.confcda
echo cat /etc/inetd.conf
cat /etc/inetd.conf
echo cat /opt/lampp/etc/httpd.conf
cat /opt/lampp/etc/httpd.conf
echo cat /etc/samba/smb.conf
cat /etc/samba/smb.conf
ecoh cat /etc/openldap/ldap.conf
cat /etc/openldap/ldap.conf
echo cat /etc/ldap/ldap.conf
cat /etc/ldap/ldap.conf
echo cat /etc/exports
cat /etc/exports
echo cat /etc/auto.master
cat /etc/auto_master
echo cat /etc/fstab
cat /etc/fstab
echo find /etc/sysconfig/ -type f -exec cat {} \;
find /etc/sysconfig/ -type f -exec cat {} \;

#Distro
echo #Distro
uname -a
echo uname -a
lsb_release -d
echo lsb_release -d
cat /etc/os-release
echo cat /etc/os-release
cat /etc/issue
echo cat /etc/issue
cat /etc/*release
echo cat /etc/*release

echo #Installed Apps
#Installed Apps
echo rpm -qa --last | head
rpm -qa --last | head
echo yum list | grep installed
yum list | grep installed

echo #Package Sources
#Package Sources
cat /etc/apt/sources.list
echo cat /etc/apt/sources.list
ls -l /etc/yum.repos.d/
echo ls -l /etc/yum.repos.d/
cat /etc/yum.conf
echo cat /etc/yum.conf
cat /etc/yum.repos.d/*
echo cat /etc/yum.repos.d/*

echo #Find Important Files
#Find Important Files
echo ls -dlR */
ls -dlR */
echo ls -alR | grep ^d
ls -alR | grep ^d
echo find /var -type d
find /var -type d
echo ls -dl `find /var -type d`
ls -dl `find /var -type d`
echo ls -dl `find /var -type d` | grep -v root
ls -dl `find /var -type d` | grep -v root
echo find /var ! -user root -type d -ls
find /var ! -user root -type d -ls
echo find /var/log -type f -exec ls -la {} \;
find /var/log -type f -exec ls -la {} \;
echo find / -perm -4000
find / -perm -4000
echo ls -alhtr /mnt
ls -alhtr /mnt
echo ls -alhtr /media
ls -alhtr /media
echo ls -alhtr /tmp
ls -alhtr /tmp
echo ls -alhtr /home
ls -alhtr /home
echo cd /home/; treels /home//.ssh/
cd /home/; treels /home//.ssh/
echo find /home -type f -iname '.*history'
find /home -type f -iname '.*history'
echo ls -lart /etc/rc.d/
ls -lart /etc/rc.d/
echo locate tar | grep [.]tar$ 
locate tar | grep [.]tar$ 
echo locate tgz | grep [.]tgz$
locate tgz | grep [.]tgz$
echo locate sql | grep [.]sql$
locate sql | grep [.]sql$
echo locate settings | grep [.]php$
locate settings | grep [.]php$
echo locate config.inc | grep [.]php$
locate config.inc | grep [.]php$
echo ls /home//id
ls /home//id
echo .properties | grep [.]properties # java config files
.properties | grep [.]properties # java config files
echo locate .xml | grep [.]xml # java/.net config files
locate .xml | grep [.]xml # java/.net config files
echo find /sbin /usr/sbin /opt /lib `echo $PATH | ‘sed s/:/ /g’` -perm /6000 -ls 
find /sbin /usr/sbin /opt /lib `echo $PATH | ‘sed s/:/ /g’` -perm /6000 -ls 
echo locate rhosts
locate rhosts

echo #Misc
#Misc
echo find / -type f -mtime 14
find / -type f -mtime 14
echo find / -type d -mtime 14
find / -type d -mtime 14
echo l
l
echo ls -alh /root/
ls -alh /root/
echo cat /etc/sudoers
cat /etc/sudoers
echo cat /etc/shadow
cat /etc/shadow
echo cat /etc/master.passwd # OpenBSD
cat /etc/master.passwd # OpenBSD
echo cat /var/spool/cron/crontabs/* | cat /var/spool/cron/*
cat /var/spool/cron/crontabs/* | cat /var/spool/cron/*
echo lsof -nPi
lsof -nPi
echo set +o xtrace
set +o xtrace
md5sum * > checklist$(date +%Y-%m-%d_%H).chk  # generates a list of checksums for any file that matches *
md5sum -c checklist.chk
