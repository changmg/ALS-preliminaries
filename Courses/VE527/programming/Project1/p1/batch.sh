#!/bin/bash

if  [ ! -d out ]
then
    mkdir out
fi

for file in bench/*
do
    if test -f $file
    then
        name=`basename $file`
		filename="${name%%.*}"
       	if [[ "$name" == *.bench ]];then


            for fileVal in val/*
            do
                if test -f $fileVal
                then
                    nameVal=`basename $fileVal`
                    filenameVal="${nameVal%%.*}"
                    if [[ "$nameVal" == *.val && $filenameVal == $filename* ]];then
                        echo -e "./main ${file} ${fileVal} > out/${filenameVal}_cmp.out"
                        ./main ${file} ${fileVal} > out/${filenameVal}_cmp.out
                        ./p1 ${file} ${fileVal} > out/${filenameVal}_ori.out
                        diff out/${filenameVal}_ori.out out/${filenameVal}_cmp.out
                        rm out/${filenameVal}_cmp.out
                        #rm out/${filenameVal}_ori.out
                    fi
                fi
            done


		fi
    fi
done

