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

