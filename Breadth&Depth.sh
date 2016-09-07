##Homework 2. Creates folders of specified breadth and depth at a specified location.##

#!/bin/sh

function main(){

open=($1)
closed=()

for((i=1; i<=d; i++)); do
	new_open=()
	for x in ${open[@]}; do 	
		temp=()
		for((k=1; k<=b; k++)); do
				mkdir $x/$i-$k
				temp=(${temp[@]} $x/$i-$k)
  	done
		new_open=(${new_open[@]} ${temp[@]})
		closed=(${closed[@]} $x)
  done
	open=(${new_open[@]})
done
}

d=$1
b=$2
seed_dir=$3

main $seed_dir
