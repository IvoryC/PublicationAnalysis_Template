#! /bin/bash

# Move files from the resources directory to the output directory.

# Why?
# Because downstream modules should only access "output" files.
# Because if it is an output, BioLockJ will recort the checksum of the file.

# This is a hack that uses BioLockJ's method of moving 
# module resources as a way to copy over project resources.

FILES=$(ls ../resources/)

for FILE in $FILES
do
	NAME=$(basename $FILE)
	if [ $NAME = "copy_resources.sh" ] 
	then 
		echo "skipping copy_resources.sh"
	else
		mv ../resources/$NAME ../output/$NAME
		echo "Moved file $NAME."
	fi
done

echo "Done!"
