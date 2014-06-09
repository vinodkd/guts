#! /bin/bash

#guts.sh - apply guts measures on your code.

# global variables with default values 
measure="size"
opts="--all"
src="."

function main(){

	checkArgs $@
	calcMeasure $measure ${opts[@]} $src

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
			if [[ "$2"=="--all" || "$2"~="--turing*" || "$2"=="--sloc" ]]; then
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

function calcMeasure(){

	if [[ "$opts" == "--all" ]]; then
		opts=( "--turing-simple" "--turing-exact" "--sloc" )
	else
		opts=( $opts )
	fi

	printHeader
	if [[  -e $src && -d $src  ]]; then
    	#echo "dir"
    	calcMeasureMany $measure $opts $src
    elif [[ -e $src && -f $src ]]; then
		#echo "file"
    	calcMeasureOnce $measure $opts $src
    else
		    echo "couldnt find $src"    	
    fi
}

function usage(){
	echo "Usage:"
	echo "	guts measure [options] dir|file"
	echo "	measure = size"
	echo "	options = --all|turing-simple|turing-exact|sloc. all is default"
}

function printHeader(){
	outp="|file|ftype|"
	for m in ${opts[*]}; do
		method=${m##--}
		method=${method/-/_}
		outp="${outp}${method}|"			
	done 
	echo $outp	
}

function calcMeasureMany(){
	for f in ${src}*; do
		#echo "processing: $f, type: ${f##*.}"
		if [[ -d $f ]]; then
			calcMeasureMany $measure $opts $f 
		else
			calcMeasureOnce $measure $opts $f
		fi
	done
}

function calcMeasureOnce(){
	# todo check if the file command exists and use it if it does. 
	# my current env doesnt, so using extension sniffing.
	local src=$3
	local ftype=${src##*.}

	outp="|${src}|${ftype}|"
	for m in ${opts[*]}; do
		method=${m##--}					# remove leading -- from name of method
		method=${method/-/_}			# convert - to _ so it maps to function name
		fn=${measure}_${method}_$ftype
		if functionExists $fn ; then
			ret=$( $fn $src ) # using return technique from linuxjournal
		else
			ret="unk"
		fi
		outp="${outp}${ret}|"
	 done
	 echo "${outp}"
}


# from http://stackoverflow.com/questions/85880/determine-if-a-function-exists-in-bash
function functionExists(){
	declare -F "$1" >/dev/null;
}

function size_turing_simple_java(){
	src=$1

	containers=$(tr -cd { < $src | wc -c)	#TODO: CHECK IF THE OPEN AND CLOSE PARENS MATCH.
	stmts=$(tr -cd ";" < $src | wc -c)
	size=$(( $stmts+$containers ))
	echo  $size

}

function size_sloc_java(){
	src=$1

	size=$( ./cloc-1.60 --quiet --csv $src | tail -1 | cut -f5 -d, )
	echo $size
}

main $@
