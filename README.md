# Kaggle-Competition----Stanford-Ribonanza-RNA-Folding

This would be a first encounter using biology data for a data science project, I started the project when it was still a competitions (i.e. about the third month of the competiton timeline), but was unable to make a submission before the end of the competition, however, I continued with the competition as a project. 

**Why I'm doing the competiton.**

The competition is related to the Biology sciences (espcially RNA, Transcriptomics), Bioinformatics, and Data Science. The competiton gives me the opportunity to work with biological data, test my skills, and brings me into the areas of data science and bioinformatics I trully am interested in.

**Goal of the Competition.**

In a nutshell the competition is to predict the reactivity of an RNA sequence to two chemical modifiers DMS and 2A3, and inferring their structural features.

For Information about the competition check the following links:

1. [Overview](https://www.kaggle.com/competitions/stanford-ribonanza-rna-folding/overview)

2. [Information on the Data](https://www.kaggle.com/competitions/stanford-ribonanza-rna-folding/data)

A key goal of this competition is to develop models that understand 3D structures of RNA and we think it might also help to use existing 3D structure prediction models to generate 3D coordinates to model the data in Ribonanza.

# Concepts and Skills in the Projects

## **RNA**

An RNA strand is a nucleotide made up of two third ribose-phosphate chain and one third Base with planar aromatic rings, decorated with partially charged hydrogen-bond donors and acceptors. The charged monomeric nucleotide unit contains charged, polar, and aromatic groups, and can make diverse typws of interactions with waterm ions, amino acids, small molecules, and other nucleotides, Making RNA wery reactive and social. [Thoughts on how to think (and talk) about RNA structure](https://www.pnas.org/doi/10.1073/pnas.2112677119) [Quentin Vicens](https://www.pnas.org/doi/10.1073/pnas.2112677119#con1) and [Jeffrey S. Kieft](https://www.pnas.org/doi/10.1073/pnas.2112677119#con2)
- The function of any RNA is always determined to some degree by its structure, RNA structure is important to its function.
-  A solid general understanding of RNA structure is important to develop rigorous mechanistic hypotheses, design experiments to test them, and derive proper interpretations.

###  Six fundamental properties of RNA structure and dynamics

**1. Stacking as a Driver for RNA Structure**
- in their normal aqueous environment RNA nucleotides are highly social—they are made to interact with one another
- every nucleotide in an RNA chain can favorably interact with every other nucleotide is critical for thinking about RNA structure
- RNA contains a planar aromatic base at every link in its chain, RNA is soluble in salty water, however noncovalent interactions drive RNA bases to stack on each other, exposing their charged exocyclic groups to the water molecules and ions in the aqueous environment, leading to RNA “solvation”.
- RNA bases stack like coins in a roll with no space between them for solvent
- Stacked bases are ∼3.4 Å (Å, angstrom or 0.1 nanometer) apart because carbon, nitrogen, and oxygen atoms have all van der Waals radii around 1.7 Å, and these intimate interactions combine with backbone constraints to create the helical conformations we are familiar with.
- within the stacking-induced helical arrangement, base pairs can assemble in A-form helices or other structural elements.
- To understand RNA structure, one must therefore understand base stacking.

**2. Inherently Structured Does Not Mean Static**
- although RNA is intrinsically structured, its conformation may change over many time scales, although RNA is intrinsically structured, its conformation may change over many time scales.
- Depending on the nature of the landscape, a given RNA populates an ensemble of conformations of various compactness, stabilities, and flexibilities.
- As the length of an RNA increases, the complexity of the landscape and the number of possible nonidentical states increases, but favored states remain.
- the conformational landscape of a given RNA can change when conditions change.

**3. RNA Is a Compact Molecule**
- All types of bases can stack and form thermodynamically favorable hydrogen bonds with each other, with the sugar–phosphate backbone, and with the solvent.
- As the strand folds back on itself this leads to overall compaction of the molecule.
- Compactness and long-distance pairing, combined with the modularity of RNA and the increase of RNA size over time by accretion, result in the 5′ and 3′ ends of any natural RNA being in relatively close spatial proximity.
- fact consistent with the idea that ribosomes, helicases, or other RNA remodeling proteins partially and transiently unwind inherently structured regions.
- When RNA needs to be accessed, proteins may need to “work at opening” intrinsic RNA structure.

**4. Watson–Crick Pairing Is Important but a Bit Overrated**
- in most cases of folded RNA three-dimensional (3D) structures, non-Watson–Crick pairs are critical for creating the tertiary interactions that stabilize the functional conformation.
-  Watson–Crick pairing is important for the RNA’s role as a carrier of analog information, but its importance changes within 3D structures of folded RNA molecules.

**5. Non-Watson–Crick Pairing Is Very Much Underrated**

**Sources**
   - [Thoughts on how to think (and talk) about RNA structure](https://www.pnas.org/doi/10.1073/pnas.2112677119)

### Mutational Profiling Experiments
**DMS (Dimethyl Sulfate)** and **2A3** are chemical probing techniques used to study the **structure of RNA molecules**. Let's delve into each of these methods:

1. **DMS (Dimethyl Sulfate)**:
   - **Use Case**: DMS is employed to investigate the **flexibility of nucleotides** within an RNA molecule.
   - **Method**: It reacts with specific RNA nucleotides (adenine and cytosine) in a structure-dependent manner.
   - **Application**: DMS can be used to probe RNA structure in living cells (in vivo ). It requires a relatively short contact time (3–5 minutes) with the cells.
   - **Signal-to-Noise Ratio**: DMS provides a significantly higher signal-to-noise ratio for probing RNA flexibility compared to other reagents.
   - **Limitation**: It interrogates only adenine (A) and cytosine (C) bases.

2. **2A3 (2-Aminopyridine-3-carboxylic acid imidazolide)**:
   - **Use Case**: Useful for studying RNA flexibility involved in highly dynamic processes.
   - **Advantage**: 2A3 exhibits a significantly greater signal-to-noise ratio compared to other reagents like NAI (2-methylnicotinic acid imidazolide).
   - **Application**: It can be used for in vivo RNA structure probing.
   - **Contact Time**: Similar to DMS, 2A3 also requires a relatively long contact time with cells (15–20 minutes).
   - **Specificity**: 2A3 interrogates all four ribonucleotides (adenine, cytosine, guanine, and uracil).
   

These methods provide valuable insights into how RNA structures influence their functional roles, including interactions with proteins and transcription elongation rates. By characterizing RNA flexibility and protein interactions, researchers gain a more comprehensive view of RNA behavior in living cells¹.

**Sources**
1. [Chemical Probing of RNA Structure In Vivo Using SHAPE-MaP and DMS-MaP](https://link.springer.com/protocol/10.1007/978-1-0716-3191-1_6.)
2. [Sequencing-based analysis of RNA structures in living cells with 2A3](https://pure.rug.nl/ws/files/663708922/1_s2.0_S0076687923001246_main.pdf.)
3. [DMS-MaPseq for Genome-Wide or Targeted RNA Structure Probing In Vitro](ttps://experiments.springernature.com/articles/10.1007/978-1-0716-1158-6_13.)
4. [Chemical Probing of RNA Structure In Vivo Using SHAPE-MaP and DMS-MaP](https://experiments.springernature.com/articles/10.1007/978-1-0716-3191-1_6.)
5. [RNA Secondary Structure Study by Chemical Probing Methods Using DMS and CMCT](https://link.springer.com/protocol/10.1007/978-1-0716-1386-3_18.)


## **Setting up the Environment**
To Visualize and analize RNA sequence data, it imperative to setup the right environment. For this competition, I had to do this for both my kaggle Notebook and my local machine.

### **Setup RNA Science Environment**

- **__on Kaggle notebook__**

For Kaggle notebook it was straight forward, as the setup process was graciously provide by the amazing Competition people at Stanford Ribonanza, the Kaggle Notebook can be found [here](https://www.kaggle.com/code/brainbowrna/rna-science-computational-environment). Important libraries for the RNA environment are

_Arnie Library_

[Arnie](https://pypi.org/project/arnie/) is a Python utility library to estimate, compare, and reweight RNA energetics across many secondary structure algorithms. It is a helpful utility library that simplifies interacting with various secondary structure prediction packages. Arnie makes structure prediction across multiple secondary structure packages, it needs at least one secondary structure predictor. One supported predictors is the [EternaFold](http://https://eternagame.org/about/software), other include Vienna, NUPACK, RNAStructure, and CONTRAfold.
    
_EternaFold_

[EternaFold](https://bioconda.github.io/recipes/eternafold/README.html?highlight=eternafold#package-package%20&#x27;eternafold&#x27;) RNA structure prediction algorithm improved through crowdsourced training data. [EternaFold](https://www.kaggle.com/code/brainbowrna/rna-science-computational-environment?scriptVersionId=143360771&cellId=4) is a leading prediction package that was trained using sequences collected via the citizen science game Eterna. In fact, Eterna players provided many of the sequences in the data for this competition. Cause the notebook is on Kaggle it required maunal configuration for the Kaggle notebook.

The EternaFold Library is found in the [Bioconda](https://bioconda.github.io/index.html) channel. The Bioconda channel let the installion of thousands of biomedical research softwares.


- **Notebook on Local PC**

For my local it wasn't quite the straight forward process, but, here is how to setup for my local PC:

1. pip install arnie

2. conda install draw_rna

3. git clone the [eternafold repo](git@github.com:eternagame/EternaFold.git) 
    - we need to compile the eternafold src file, instruction found [here](https://github.com/eternagame/EternaFold/blob/master/README_LinearFold-E_patch.md)
    - to achieve the above make sure that you have the g++ install in local or install using the following command
    > sudo apt-get install g++
    - then compile running the command 
    > make in the src folder of EternaFlod repo 
    - or
    > make multi

__Further setup__
To make sure Arnie can find the structure prediction package in this case EternaFold, we need to the instructions found in the [setup doc](https://github.com/DasLab/arnie/blob/master/docs/setup_doc.md) in the Arnie git repo.
1. on the terminal, add Arnie location to your python path in your .bashrc, i.e.
    > export PYTHONPATH=$PYTHONPATH:/path/to/arnie

2. Create a variable that point to the ARNIEFILE.txt in '.bashrc' file:
    > export ARNIEFILE="/path/to/arnie/arniefile.txt"

3. Run the following command to apply the changes to your environment variables:
    > source ~/.bashrc

4. then create a the ARNIEFILE.txt which points to the location of the predictor packages, this can be in the arnie folder

```
# Vienna RNAfold 2 Mac using installer:
vienna_2: /usr/local/bin

# NUPACK build:
nupack: /path/to/nupack3.0.6/src/bin

# CONTRAfold build
contrafold_2: /path/to/contrafold-se/src

# RNASoft build
rnasoft: /path/to/MultiRNAFold

# RNAstructure (precompiled command line src)
rnastructure: /path/to/RNAstructure/exe

# Path to EternaFold
eternafold: /path/to/EternaFold/src

# (DEPRECATED, better to put path to Eternafold)
# Path to EternaFold parameters
eternafoldparams: /path/to/EternaFold/parameters/EternaFoldParams.v1

# LinearFold build
linearfold: /path/to/LinearFold/bin

#LinearPartition build
linearpartition: /path/to/LinearPartition/bin

#directory to write temp files
TMP: /tmp
```
5. Manually setup EternaFold for your local
    > env ETERNAFOLD_PATH=/opt/conda/bin/Eternafold/src

    > env ETERNAFOLD_PARAMETERS=/opt/conda/lib/eternafold-lib/parameters/EternaFoldParams.v1
- or 
    > export PYTHONPATH=$PYTHONPATH:/path/to/eternafold

**if this does not work use the kaggle setup outright.**

**NOTE** 
- Replace /path/to/ with the actual path to the actual file/folder source code on your system.
- Run the following command to check if the ARNIEFILE environment variable is set:
> echo $ARNIEFILE


**Sources**
1. [Bioconda](https://bioconda.github.io/)
2. [EternaFold](https://bioconda.github.io/recipes/eternafold/README.html?highlight=eternafold#package-package%20&#x27;eternafold&#x27)
3. Arnie [maschka](https://github.com/maschka/arnie) [DasLab](https://github.com/DasLab/arnie)

## Dataset 

The [datasets](https://www.kaggle.com/competitions/stanford-ribonanza-rna-folding/data) for the competition are ***reactivity** data of RNA sequences to **two** chemical modifiers **DMS and 2A3** from **Mutational Profiling (MaP)** experiments. The datasets are made up of the following. 
- Ribonanza_bpp_files
- eterna_openknot_metadata
- rhofold_pdbs
- sequence_libraries
- supplementary_silico_predictions
- rmdb_data.csv
- sample_submission.csv
- test_sequences.csv
- train_data.csv
- train_data_QUICK_START.csv
further information on the competiton Data can be found on the [Kaggle competition page](https://www.kaggle.com/competitions/stanford-ribonanza-rna-folding/data).

## RNA Data Exploration and Visualixation
During the EDA of the competition dataset, it was important to visual the RNA data. To do this we need to get the **Minimum Free Energy (MFE) structure** from the RNA sequence, which can then be visualized using draw_rna to get a 2D diagram of the RNA sequence.

### MFE structure

MFE structure in RNA analysis refers to the secondary structure that contributes the lowest possible free energy. Essentially, it represents the most stable configuration of base pairings within an RNA molecule, where the total energy required to maintain these pairings is minimized ([Vienna RNA web servers](http://rna.tbi.univie.ac.at/RNAWebSuite/help.html)). The MFE structure is usual presented in **dot-bracket** notation. For example

> (((.(...(((((((....).((((......))))...(((((...))))).)))))).)...)))

### draw_rna

[draw_rna](www.github.com/DasLab/draw_rna) is a Python tool that allows you to generate quick secondary structures of nucleic acids (such as RNA) either via a Jupyter notebook or the command line ([DasLab](www.github.com/DasLab/draw_rna)).

![rna_image](image.png)


## Feature Extraction and Engineering

From the description of the competition dataset and EDA, most of the predition will have to be done using the RNA sequence data, since whta we are trying to predict is the sequence reactivity. So, it will be common sense to find way to to enrich the dataset by extract features from the RNA sequence data. From research, suggestion on the kaggle competiton forum, and code from example notebooks, here are some features that will be extract/engineered and add to both the train and test datasets.

- _Secindary Structure_
    - MFE structure
    - Free energy
    - pair and unpaired vector
    - base_pairing probabilities (bpps) matrix
    - Mean of Bpps
    - MFE count ---- UMAR IGAN
    - Mean reactivity
    - Average canonical and non-canonical base pairing
    - probability of non-canonical base pairing
    - sequence length

- _Tertiary Structure_
    - 3D Coords 
    - Sequence lib
    - forming OpenKnots and the probabity using metadata
    - propbability of forming 2D and 3D structures
    - Adjacent Guanines count
    

Important steps in the solution
- [How to check if your model generalizes to long sequences](https://www.kaggle.com/competitions/stanford-ribonanza-rna-folding/discussion/444653)
- [Modeling with 3D coordinates](https://www.kaggle.com/competitions/stanford-ribonanza-rna-folding/discussion/451853)
- [Ribonanza data update and quick starter](https://www.kaggle.com/competitions/stanford-ribonanza-rna-folding/discussion/451890)
- [What is the bpps folder and the data in each file?](https://www.kaggle.com/competitions/stanford-covid-vaccine/discussion/182021#1006985)
- [Ribonanza data update and quick starter](https://www.kaggle.com/competitions/stanford-ribonanza-rna-folding/discussion/451890)
