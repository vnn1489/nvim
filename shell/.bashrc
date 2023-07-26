# mv *.extension PathToPaste

#00 OTHER (OT)
#00 PERMISSION (01)
#00 RESOURCE & INFO (02)
#00 NETWORKING (03)
#00 USER & GROUP (04)
#00 QUESTION & NOT UNDERSTAND (?)

#OT

#01 type | rwx  | rwx   | rwx
#01 d, l | 421  | 421   | 421
#01 d, l | user | group | other
#01 0 (---) | 1 (--x) | 2 (-w-) | 3 (-wx) | 4 (r--) | 5 (r-x) | 6 (rw-) | 7 (rwx)
#01 USE FLAG chmod -R TO SET PERMISSION WITH RECURSIVE FOR DIRECTORY
#01 <--- chmod ±rwx FileOrDirectory --->
#01 <--- chmod u±rwx FileOrDirectory ---> FOR SPECIFIC USER
#01 <--- chmod a±rwx FileOrDirectory ---> FOR ALL USER
#01 <--- chmod g±rwx FileOrDirectory ---> FOR GROUP
#01 <--- chmod o±rwx FileOrDirectory ---> FOR OTHER USER
#01 <--- chmod go±rwx FileOrDirectory ---> COMBINE FOR GROUP & OTHER USER
#01 <--- chmod NumberNumberNumber FileOrDirectory ---> SET PERMISSION WITH NUMERICALLY (4210)
#01 <--- sudo chown UserName FileOrDirectory
#01 ? <--- sudo chown UserName: UserName FileOrDirectory
#01 ? <--- sudo chown UserName: FileOrDirectory (in the same previuos cli)

#02 <--- free ---> RAM
#02 <--- df ---> STORAGE
#02 <--- uptime ---> CPU
#02 <--- cat /etc/os-release --->
#02 <--- uname -a ---> LINUX KERNEL & SYSTEM ARCHITECTURE
#02 <--- lsb_release -a ---> LINUX DISTRIBUTION & RELEASE
#02 <--- cat /etc/os-release ---> LINUX DISTRIBUTION & RELEASE
#02 <--- hostnamectl ---> SYSTEM HOSTNAME & RELATED SETTINGS
#02 <--- lscpu --->  INFORMATION & ARCHITECTURE ABOUT CPU
#02 <--- sudo lshw ---> LIST HARDWARE
#02 <--- lspci ---> LIST PCI
#02 <--- lsusb ---> LIST USB
#02 <--- sudo dmidecode ---> DETAILED INFORMATION HARDWARE

#03 <--- ip addr show --->
#03 <--- ifconfig --->
#03 <--- netstat -tulpn ---> CHECK NETWORK & LISTENING PORTS
#03 <--- scp PathOfFilesOrFolders HostName@IP:/Path ---> SEND
#03 <--- scp HostName@IP:PathOfFilesOrFolders /Path ---> REVERSE

#04 USER STRUCTURE: username:password(at /etc/shadow):UID:GID:UserInfo(opt):HomeDirectory:DefaultShell
#04 FILE: /etc/passwd | /etc/group | /etc/shadow ---> FILE ENCRYPT PASSWORD OF USERS
#04 FILE: sudo /etc/sudoers ---> THIS FILE IS IMPORTANT, BE CAREFUL WHEN YOU WORK WITH THIS FILE, DON'T LOCK YOURSELF IN. USE CLI sudo visudo FOR SAFER MANIPULATION OF FILES
#04 <--- groups ---> LIST GROUP RELATED TO USER
#04 <--- groups UserName ---> LIST GROUP RELATED TO USER
#04 <--- sudo useradd UserName ---> CREATING USER
#04 <--- sudo useradd -r UserNameSystem ---> CREATE SYSTEM USER
#04 <--- sudo su UserName ---> SWITCH TO USER
#04 <--- sudo su - UserName ---> SWITCH TO USER
#04 <--- sudo su - UserName ---> SWITCH TO USER
#04 <--- sudo userdel -r UserName ---> REMOVING USER INCLUDE DIRECTORY OF USER WITH FLAG -r
#04 <--- passwd | passwd UserName ---> IF IS ADMIN | CHANGE, UPDATE PASSWORD USER
#04 <--- sudo groupadd GroupName ---> CREATE GROUP
#04 <--- sudo usermod -aG UserName GroupName ---> ADDING USER
#04 <--- sudo gpasswd -d UserName GroupName ---> DELETING USER
#04 <--- sudo groupdel GroupName ---> DELETING GROUP
#04 ? <--- sudo groupadd -g OptPID GroupName ---> CREATE GROUP WITH PID SPEC