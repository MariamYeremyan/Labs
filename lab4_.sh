
# 1
touch file.txt  #create a new file
chmod 744 file.txt #define permission


# 2
chmod a+x file.txt #Change the permissions for all users adding the permission of executing


#3
chmod go-x file.txt #Change the permissions for group users deleting the permssion of executing


# 4
chmod 600 file.txt ##change the permissions and delete all permissions


# 5
mkdir dir #new directory
chmod 666 dir #Define permissions
touch dir/file.txt #new file


# 6
touch dir/file1.txt dir/file2.txt #2new files
chmod 766 dir/* #change permissions

# 7
umask 027 #define a bitmask where new files by default are getting - rwx rw- rw- permissions


# 8
umask 077 #define a bitmask where new files are getting - rw- r-- --- permissions
umask 022


#9
echo 'ls /home/student' > script.sh #the output will be the list of file
chmod 741 script.sh #Defines permissions
./script.sh
chmod +x script.sh #changing the permissions so as it's executed 


# 10
mkdir ~/bin #creating new directory
mv script.sh ~/bin #move to ~bin
echo 'export PATH=$PATH:~/bin' >> ~/.bashrc 
source ~/.bashrc #change the variable so as it could be executed without address
