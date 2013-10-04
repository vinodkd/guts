#! /bin/bash

#guts.sh - apply guts measures on your code.

# global variables with default values 
measure="size"
opts="--all"
src="."

function main(){

	checkArgs $@
	calcMeasure $measure $opts $src

}

function checkArgs(){
	numargs=$#
	#echo "$numargs"

	case "$numargs" in
		3)
			measure=$1
			opts=$2
			src=$3
			;;
		2)
			if [[ "$2"=="--all" || "$2"=="--turing" || "$2"=="--sloc" ]]; then
				echo "error, dir or file needed"
				usage
				exit -1
			fi
			measure=$1
			src=$2
			exit -2
			;;
		1)
			echo "error, dir or file needed"
			usage
			exit -3
			;;
		0)
			echo "error, measure and file/dir name needed"
			usage
			exit -4
			;;
	esac

}

function usage(){
	echo "Usage:"
	echo "	guts measure [options] dir|file"
	echo "	measure = size"
	echo "	options = --all|turing|sloc. all is default"
}

function calcMeasure(){
	measure=$1
	opts=$2
	src=$3

	if [[ "$opts" == "--all" ]]; then
		opts=( "--turing" "--sloc" )
		echo $opts
	else
		opts=( $opts )
	fi

	if [[ -e $src && -f $src ]]; then
		echo "file"
    	calcMeasureOnce $measure $opts $src
    elif [[ -d $src  ]]; then
    	echo "dir"
    	calcMeasureMany $measure $opts $src
    else
		    echo "couldnt find $src"    	
    fi
}

function calcMeasureOnce(){
	measure=$1
	opts=$2
	src=$3

	# todo check if the file command exists and use it if it does. 
	# my current env doesnt, so using extension sniffing.
	ftype=${src##*.}

	outp="|"
	for m in ${opts[*]}; do
		method=${m##--}
		ret=$( ${measure}_${method}_$ftype $src ) # using return technique from linuxjournal
		outp="${outp}${ret}|"
	 done
	 echo "|${src}${outp}"
}

function size_turing_java(){
	src=$1

	containers=$(tr -cd { < $src | wc -c)	#TODO: CHECK IF THE OPEN AND CLOSE PARENS MATCH.
	stmts=$(tr -cd ";" < $src | wc -c)
	size=$(( $stmts+$containers ))
	echo  $size

}

function size_sloc_java(){
	echo "tbd"
}

main $@
