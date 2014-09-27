test=$(cat $1)
cd $2
pwd
for line in $test;
do
	trap exit INT
	array=(${line//#?/ })
	if [ -n "${array[1]}" ]; then
		youtube-dl ${array[0]} -o "${array[1]}.mp4";
	else
		youtube-dl $array[0] -o '%(title)s';
	fi
done
