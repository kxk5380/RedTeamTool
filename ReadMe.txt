Steps to set up Tool

1. Download and add the two VMs (kali box and metasploitable) to VMware.
2. On kali open a metasploit terminal
3. nmap the target ip
4. Search irc within the terminal to find the exploit
5. Type 'use exploit' but type out the exploit that has the excellent rating next to it
6. type 'show options' and add a RHOST and RPORT (Rhost is the ip of target/RPORT in the port the irc service is located on) 
7. once the details are in type 'exploit'
8. Now that you are in the target box run whoami to see who you are
9. You are root user so now you can transfer over the script and run it