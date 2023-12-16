mkdir lab1 #new directory
cd lab1 #move
touch file.txt file1.txt file2.txt file3.txt #creating new files
mkdir dir1 dir2 #new directories


ls *.txt # is searching *.txt  files
ls * .txt #is searching .txt and * seperately

ls f???.txt # is showing  files


ls file[0-9]*.txt # is showing files with numbers 


ls *[a-z0-1].txt #is showing files with little letters and numbers1,2


cp /etc/passwd lab1/ #copiing file with this name in directory



mv lab1/passwd lab1/new #renameing
mv lab1/new lab1/dir1/ #moving to dir1
mv lab1/dir1/new lab1/dir2/ #moving to dir2


mv ./dir2 ./dir3 #renaming dir2 to dir3
mv ./dir3 ./dir1/ # moving dir3 into dir1



mv ./dir1/new ./ #moving file from dir1 to lab1


rm -r lab1 #delete lab1

