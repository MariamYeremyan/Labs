#1
ls /etc | grep '[0-9]' #show files in etc directory which contains numbers


#2
echo -e "Hello\nWorld\nTestlo\nHillo\nOtherlo\n" >test_file.txt #create file
grep -E '\b\w{3}lo$' test_file.txt #search words



#3
grep -h '[A-Z]' list*.txt:  #Is looking for line containing at least 1 upper-case letter
grep -h '[-AZ]' list*.txt:  # Searching lines containing one of these symbols «-», «A» or «Z» 
grep -h '^[A-Z]' list*.txt: # Is searching lines started with upper-case letter
grep -h '[^A-Z]' list*.txt: # Is looking for lines that except for upper-case letters contain different symbols




#4
grep -E '^(bz|zip)' dirlist-bin.txt dirlist-sbin.txt #Is searching lines started with bz/zip




#5
grep -Eh '^(bz|gz|zip)' list*.txt #Is searching "bz" "gz" or "zip" lines
grep -Eh '^bz|gz|zip' list*.txt   #Is searchig lines started with bz or containing gz or zip



#6
echo "test@test.com" | grep -E '^([a-zA-Z0-9._%+-]+)@([a-zA-Z0-9.-]+)\.([a-zA-Z]{2,})$' #validation of email



#7
echo "192.168.0.1" | grep -E '^([0-9]{1,3}\.){3}[0-9]{1,3}$' #check the validation of Ip address



#9
echo "01/02/1970" | sed -E 's~([0-9]+)/([0-9]+)/([0-9]+)~\3-\2-\1~' #Changing the format of date


# 10
echo "0xx 12-34-56" | sed -E 's~^(0xx) ([0-9]{2})-([0-9])([0-9])-([0-9]{2})$~(\1) \2\3-\4\5~' #Change the format of phone number
