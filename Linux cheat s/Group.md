group list 
$ groups 

$  cat /etc/groups

$ id -ng   // my group
$ id -Gn userName  // all group where this user 
$ id -nG   // all groups

$ getent group mehdi // all member of mehdi's group


// NEW GOUP
$ sudo groupadd GroupName

// ADD USER to group
sudo usermod -a -G GroupName $USER 


// which users are in this group 
grep GroupName /etc/group