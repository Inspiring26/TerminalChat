# TerminalChat
You can chat or transfer file in terminal between two or more machines.

Easy to config, easy to use.

# Usage
1.Download the *i.sh* and move it to *~/Downloads/* folder.

2.Edit *i.sh* 's config part
```
# Config
# Machine one's username, ip, and alias in chat.
targetip1="h@192.168.2.38"
alias1="h"
# Machine two's username, ip, and alias in chat.
targetip2="hy@192.168.3.109"
alias2="mba"
# Which is this machine?
thisNumber="1"
```

3.Make sure you can *ssh* the machine from each other.
Go further, you should achieve password-free login with the following method:
```
ssh-copy-id -i ~/.ssh/id_rsa.pub h@192.168.2.38
ssh-copy-id -i ~/.ssh/id_rsa.pub hy@192.168.3.109
```
 
4.Copy *i.sh* to the other machine and modify *thisNumber* in Config.

5.After above, you can use the shell script  with the following method:
```
# show new message
~/Downloads$ ./i.sh
# send message
~/Downloads$ ./i.sh "message"
#send file
~/Downloads$ ./i.sh -f /home/h/Pictures/screenshot_139.png
```
**Note:**

If send a long sentence with blank,should put it in ''or"".

Show "scp: /home/h/Downloads/infoswap.txt: No such file or directory
" after first command is normal result.  
  
# Example
![pic1](https://github.com/Inspiring26/TerminalChat/raw/master/example/screenshot_140.png)
![pic2](https://github.com/Inspiring26/TerminalChat/raw/master/example/screenshot_141.png)
