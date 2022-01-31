
##### run glycompare
# python glyCompare.py structure -a <ABUNDANCE TABLE> -v <VARIABLE ANNOTATION> 
# -o <OUTPUT_DIRECTORY> -p <GLYCAN_DATA_TYPE> [-n <NORMALIZATION_MODE>, 
# -m <SUBSTRUCTURE_ABUNDANCE_MULTIPLIER>, -c <NUMBER_OF_CORES>, -r <ROOT>, -u <CUSTOM_ROOT>, -d, -s, -b]

python code/GlyCompareCT/glyCompareCT.py structure \
	-a data-raw/GlyTouCan-abundance.csv \
	-v data-raw/GlyTouCan-GlycoCT.csv \
	-o data-final/glytoucan_glycoct -p glycoCT -c 20 -i