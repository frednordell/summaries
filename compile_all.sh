#! /bin/bash

for D in */; do
	echo  -e "Compiling ${D}	 \n--------------------------------\n"
	if [ ! -d "out" ]; then
  		mkdir out
	fi
	pdflatex -interaction=batchmode -halt-on-error -output-directory ./out/ summary.tex
	mv "${D}"out/summary.pdf out/"${D}.pdf"
	echo -e "\n"
done 

read v1