# download glycans
cd data-raw
wget https://data.glygen.org/ln2releases/v-1.9.9/reviewed/glycan_sequences_glycoct.csv

# install glycomparect
cd ../code/

# get the repo
git clone https://github.com/yuz682/GlyCompareCT.git

# enter the repo
cd GlyCompareCT

# Create the environment with all required dependencies installed.
conda env create -f environment.yml

# Activate conda environment
conda activate glyCompareCT_env

##### run glycompare
# python glyCompare.py structure -a <ABUNDANCE TABLE> -v <VARIABLE ANNOTATION> 
# -o <OUTPUT_DIRECTORY> -p <GLYCAN_DATA_TYPE> [-n <NORMALIZATION_MODE>, 
# -m <SUBSTRUCTURE_ABUNDANCE_MULTIPLIER>, -c <NUMBER_OF_CORES>, -r <ROOT>, -u <CUSTOM_ROOT>, -d, -s, -b]
python code/GlyCompareCT/glyCompareCT.py structure -a data-raw/glycan_sequences_glycoct.abundance.csv -v data-raw/glycan_sequences_glycoct.csv -o data-final/ -p glycoCT -c 20