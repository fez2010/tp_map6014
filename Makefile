
.PHONY: main.pdf all clean

all: outputs/py/script.py

main.pdf: rapport/main.pdf
	cd rapport
	make
dep: outputs/sh/script.sh
	sh outputs/sh/script.sh
build: outputs/py/script.py
	cp outputs/py/script.py .script.py
	python .script.py
	rm .script.py
	cp -r outputs/images/* rapport/images
	cp -r outputs/csv/ rapport/csv

%.py: %.ipynb
	jupyter nbconvert $<  --to python 

outputs/py/script.py: outputs/txts/script.txt
	python setup/convert_txt_script.py

outputs/sh/script.sh: outputs/txts/script.txt
	python setup/convert_txt_script.py 

outputs/txts/script.txt: TP_MAP6009.ipynb
	jupyter nbconvert TP_MAP6009.ipynb --to script --output outputs/txts/script

open: TP_MAP6009.ipynb
	jupyter execute TP_MAP6009.ipynb --allow-errors
TP_MAP6009.ipynb:
	wget https://raw.githubusercontent.com/fez2010/tp_map6014/refs/heads/main/TP_MAP6009.ipynb
clean: outputs/py/script.py  outputs/txts/script.txt  outputs/sh/script.sh
	rm outputs/py/script.py
	rm outputs/txts/script.txt
	rm outputs/sh/script.sh