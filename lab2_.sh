cat > file1 # Is creating file1 allows you to input text in file
cat file1 #  Displays the content of file1 and print out the text that was previoously entered with this command
cat < file1 # Displays the content but doesn't open the file directly



cat > file1.txt # creates 3 files
cat > file2.txt
cat > file3.txt
cat file1.txt file2.txt file3.txt > Final.txt #are attached




ls ./*.txt | wc -l #the number of text files 



cat file1.txt file2.txt file3.txt | sort > sorted.txt #are sorted andwritten in a new file




ls -S ./ | head -n 15 #are displayed first 15files and are sorted in decreasing order





ls ./ > ls.txt #displaying the files and move into ls.txt




echo "secret text" | tr 'a-zA-Z' 'n-za-mN-ZA-M' #encrypting the "secret text"
echo "frperg grkg" | tr 'a-zA-Z' 'n-za-mN-ZA-M' #decoding





echo "Student’s home directory is {home_dir}." > home.txt #creating new file
sed 's/{home_dir}/\/home\/student/' home.txt > home_modified.txt #with this content




echo "Line 1" > file4.txt  #create new file
echo "Line 2" >> file4.txt
echo "Line 3" >> file4.txt
echo "Line 4" >> file4.txt
echo "Line 5" >> file4.txt
sed -n '2p;4p' file4.txt #display the 2-4 lines



sed -i '2d;4d' file4_modified.txt #delete the 2-4 lines
