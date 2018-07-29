#! /usr/bin/env sh

rm -rf compiled
mkdir .compiled

for D in */; do
	echo  -e "Compiling ${D}	 \n--------------------------------\n"
	cd "${D}"
	if [ ! -d "out" ]; then
  		mkdir out
	fi
	pdflatex -interaction=batchmode -halt-on-error -output-directory ./out/ summary.tex
	cp out/summary.pdf ../.compiled/"${D%?}.pdf"
	echo -e "\n"
	cd ..
done 

cp -r .compiled compiled
rm -rf .compiled