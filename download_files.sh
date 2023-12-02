FILENAME=(  
# "sequence_libraries/230601_GPN_library_RCK_edit.fasta"                 
# "sequence_libraries/pseudoknot90_puzzle_11387276.tsv.RNA_sequences.fa"
# "sequence_libraries/Positives240-2000.tsv.fa"
# "sequence_libraries/DasLabBigLib1M_sequences_SUBLIBRARY.fa"
# "sequence_libraries/1Mround2_all.fasta"
# "sequence_libraries/puzzle_11627601_Final120k_from_ETERNA.tsv_SUBLIBRARY.fa"
# "sequence_libraries/pseudoknot50_puzzle_11318423.tsv.RNA_sequences.fa"
# "sequence_libraries/SL5_library_with_rescues_control.fa"
# "sequence_libraries/FINAL390_clean.fasta"
"eterna_openknot_metadata/puzzle_11387276_RYOP90_with_description.tsv"
"eterna_openknot_metadata/puzzle_11836497_with_description.tsv"
"eterna_openknot_metadata/puzzle_11627601_with_descriptions_PLUS_RFAM.tsv"
"eterna_openknot_metadata/puzzle 12378132.tsv"
"eterna_openknot_metadata/Positives240-2000.tsv"
"eterna_openknot_metadata/puzzle_11318423_RYOP50_with_description.tsv"
"supplementary_silico_predictions/PK50_silico_predictions.csv"
"supplementary_silico_predictions/PK90_silico_predictions.csv"
"supplementary_silico_predictions/R1_silico_predictions.csv"
"supplementary_silico_predictions/GPN15k_silico_predictions.csv"
# "OLD/train_data.csv"
# "test_sequences.csv"
# "train_data_QUICK_START.csv"
# "train_data.csv"
# "sample_submission.csv"
)

# Loop through the list of paths
for path in "${paths[@]}"; do
    # Extract the filename from the path
    filename=$(basename "$path")

    # Download the file using the Kaggle API
    kaggle datasets download -d stanford-ribonanza-rna-folding -f "$path" -p /download

    # Unzip the downloaded file
    unzip "$filename.zip" -d /download

    # Remove the downloaded zip file
    rm "$filename.zip"
done