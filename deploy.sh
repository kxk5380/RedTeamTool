#!/bin/bash

#A one line script that will flush iptables
rm -r flush.sh
touch flush.sh
echo \#!/bin/bash >> flush.sh
echo iptables -F >> flush.sh

#Creating the file that msfconsole will read from
rm -r msf.rc
touch msf.rc

#Determining what protocol will be exploited
echo "Enter the number next to the protocol that will be exploited."
echo "1 Telnet"
echo "2 SSH"
echo "3 HTTP"
echo "4 SMB"
echo "5 FTP"
read val

#Determining the Hosts IP
echo "What is your IP?"
read ip

#Determining the Target IP
echo "What is the target IP?"
read tar

#Determing the username and password that will be used. 
#Not all exploits will use these values.
echo "What is the username? If not needed you can leave blank."
read user
echo "What is the password? If not needed you can leave blank."
read pass

#Writes into the file that msfconsole will read from.
#These commands should match the commands that would normally be entered for these exploits.
#1 = Telnet
if (($val == 1)); then
	echo "Telnet Selected."
	#echo use meterpreter/METERPRETER_PATH_HERE >> msf.rc
	#echo set rhosts $tar >> msf.rc
	#echo set rport 23 >> msf.rc
	#echo set lhosts $ip >> msf.rc
	#Do we need an lport? 
	#echo exploit >> msf.rc

	#msfconsole -r msf.rc

#2 = SSH
elif (($val == 2)); then
	echo "SSH Selected."
	#PUT THE COMMANDS HERE
	#msfconsole -r msf.rc

#3 = HTTP
elif (($val == 3)); then
	echo "HTTP Selected."

	#msfconsole -r msf.rc

#4 = SMB
elif (($val == 4)); then
	echo "SMB Selected."
	#msfconsole -r msf.rc

#5= FTP
elif (($val == 5)); then
	echo "FTP Selected."
	#msfconsole -r msf.rc
else
	echo "Error. Number entered was not valid."
fi
