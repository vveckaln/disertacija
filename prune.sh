#bin/bash
#find . -type d -exec bash prune.sh {} \;
#https://stackoverflow.com/questions/1333813/recursively-read-folders-and-executes-command-on-each-of-them
dir=$1
#echo "dir $dir"
for file in $dir/*;
do
    filename=$(basename -- "$file")
    #echo $filename
    extension="${file##*.}"
    #echo $extension
    if [[ ${extension} == "php" ]];
    then
	echo $file
	rm $file
    fi
done
