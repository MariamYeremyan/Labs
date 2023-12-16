# 1
count=0
while [ $count -le 20 ]; do
	echo $count
	count=$((count + 2))
done
#Is printing even number in[1,20] range with while cycle




#2
count=0
until [ $count -gt 20 ]; do
	echo $count
	count=$((count + 2))
done
#with until cycle



#3
index=0
while true; do
	square=$((index * index))
	if [ $square -gt 1000 ]; then
		break
	fi
	echo "Square of $index is $square"
	index=$((index + 1))
done
#infinite cycle which is printing the square of index 



#4
for ((count = 0; count <= 20; count += 2)); do
	echo $count
done
#with for cycle



#5
while true; do
	read -r -p "Enter an integer or 'q' to exit: " input
	if [ "$input" == "q" ]; then
		break
	fi
	echo "Double of $input is $((input * 2))"
done

#program for printing the double of given number


#6
index=1
while [ $index -le 5 ]; do
	touch ./file_$index.txt
	index=$((index + 1))
done

#printing the names of files of directory and number them


#7
for ((i = 0; i <= 30; i+=3)); do
    echo "$i"
done
#the multiples of 3 in the range of [0,30]


#8
for file in *; do
	echo "$file"
done
#is printing the names of all files from current directory

#9
for file in "$@"; do
	shortest_word=$(awk '{ print length, $0 }' "$file" | sort -n | head -n 1 | cut -d" " -f2-)
	echo "Shortest word in $file: $shortest_word"
done
#Is getting file names as arguments and is printing the shortest word in them



#10
for file in "$@"; do
	if [ -e "$file" ]; then
		echo "$file exists."
		if [ -r "$file" ]; then
			echo "$file is readable."
		else
			echo "$file is not readable."
		fi
	else
		echo "$file does not exist."
	fi
done
#Is getting file names as arguments and checking if there are any files with that name
