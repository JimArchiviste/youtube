test=$(cat $1)
cd $2
pwd
for line in $test; do youtube-dl "$line" ; done
