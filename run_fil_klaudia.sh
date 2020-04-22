#!/bin/bash

if [ $1 = "clone" ]; then
	echo ################# Klonowanie repozytorium ################
    git clone https://github.com/klaudiaf24/PN-assembler-x86-64.git

elif [ $1 = "run" ]; then
	echo ################# Uruchamienie dockera ################
	sudo docker build -t klaudiafil:1.0 .
	sudo docker run -it klaudiafil:1.0
    
elif [ $1 = "clean" ]; then
	echo ################# Usuwanie ################
   	rm -rf Dockerfile Prezentacja.pdf assembler_zad przyklady_prezentacja Instrukcja.pdf
fi

