# Kickstarter v1.0

This is a simple bash script which will automate the starting of a ctf game

This is the first release of the script and so it will not be extremely complex and you may encounter errors. 

If you encounter errors or wish to suggest additions , post them on the issues tab.

## Features

* Pings the IP
* Creates required files and directories to keep you organised
* Starts nmap scans

## Requirements 

* A linux distro such as Kali/Ubuntu/Mint
* Nmap

## Installation 

### Nmap

```
sudo apt install nmap -y
```

```
sudo yum install nmap -y 
```

```
sudo snap install nmap -y
```

### Kickstarter

```
git clone https://github.com/arav06/kickstarter
chmod +x kickstarter.sh
./kickstarter.sh
```
## Updates 

### v1.1
* Starting basic enumeration such as gobuster, nikto, enum4linux, etc
* Syntax Highlighting 


Note: There will be more updates in the future 
