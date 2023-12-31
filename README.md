# Kaggle-Competition----Stanford-Ribonanza-RNA-Folding
My First live Kaggle Competition, the competition is relative to the Biology or Bioinformatics field, and a gives me practice opportunity to work with biological data. ultimately using the reactivity data to predict RNA base pairing, folding, and structure both in a 2D and 3D context.

For Information about the competition check the following links:

1. [Overview](https://www.kaggle.com/competitions/stanford-ribonanza-rna-folding/overview)

2. [Information on the Data](https://www.kaggle.com/competitions/stanford-ribonanza-rna-folding/data)

**Goal of the Competition**
A key goal of this competition is to develop models that understand 3D structures of RNA and we think it might also help to use existing 3D structure prediction models to generate 3D coordinates to model the data in Ribonanza.

# What I Learned:
- Setting up the Envirinment
The first step will be to import the data to the notebook using the right libraries. From the Notebook [Setting up an RNA Science Environment](https://www.kaggle.com/code/brainbowrna/rna-science-computational-environment#Setting-up-an-RNA-Science-Environment) by [Stanford Ribonanza RNA Folding](https://www.kaggle.com/competitions/stanford-ribonanza-rna-folding) gives an example of libraries and configuration for importing the dataset.
 

# Important Concepts
This will  be concepts, libraries, modules etc. that are I learned in the competition. I have no prior knowledge of either working with biological Data or done any computational biology works. In this competition I will be mostly learning and researching.

## RNA 

An RNA strand is a nucleotide made up of two third ribose-phosphate chain and one third Base with planar aromatic rings, decorated with partially charged hydrogen-bond donors and acceptors. The charged monomeric nucleotide unit contains charged, polar, and aromatic groups, and can make diverse typws of interactions with waterm ions, amino acids, small molecules, and other nucleotides, Making RNA wery reactive and social. [Thoughts on how to think (and talk) about RNA structure](https://www.pnas.org/doi/10.1073/pnas.2112677119) [Quentin Vicens](https://www.pnas.org/doi/10.1073/pnas.2112677119#con1) and [Jeffrey S. Kieft](https://www.pnas.org/doi/10.1073/pnas.2112677119#con2)
- The function of any RNA is always determined to some degree by its structure, RNA structure is important to its function.
-  A solid general understanding of RNA structure is important to develop rigorous mechanistic hypotheses, design experiments to test them, and derive proper interpretations.

####  Six fundamental properties of RNA structure and dynamics
- **Stacking as a Driver for RNA Structure**
- in their normal aqueous environment RNA nucleotides are highly social—they are made to interact with one another
- every nucleotide in an RNA chain can favorably interact with every other nucleotide is critical for thinking about RNA structure
- RNA contains a planar aromatic base at every link in its chain, RNA is soluble in salty water, however noncovalent interactions drive RNA bases to stack on each other, exposing their charged exocyclic groups to the water molecules and ions in the aqueous environment, leading to RNA “solvation”.
- RNA bases stack like coins in a roll with no space between them for solvent
- Stacked bases are ∼3.4 Å (Å, angstrom or 0.1 nanometer) apart because carbon, nitrogen, and oxygen atoms have all van der Waals radii around 1.7 Å, and these intimate interactions combine with backbone constraints to create the helical conformations we are familiar with.
- within the stacking-induced helical arrangement, base pairs can assemble in A-form helices or other structural elements.
- To understand RNA structure, one must therefore understand base stacking.

- **“Inherently Structured” Does Not Mean “Static”**
- although RNA is intrinsically structured, its conformation may change over many time scales, although RNA is intrinsically structured, its conformation may change over many time scales.
- Depending on the nature of the landscape, a given RNA populates an ensemble of conformations of various compactness, stabilities, and flexibilities.
- As the length of an RNA increases, the complexity of the landscape and the number of possible nonidentical states increases, but favored states remain.
- the conformational landscape of a given RNA can change when conditions change.

- **RNA Is a Compact Molecule**
- All types of bases can stack and form thermodynamically favorable hydrogen bonds with each other, with the sugar–phosphate backbone, and with the solvent.
- As the strand folds back on itself this leads to overall compaction of the molecule.
- Compactness and long-distance pairing, combined with the modularity of RNA and the increase of RNA size over time by accretion, result in the 5′ and 3′ ends of any natural RNA being in relatively close spatial proximity.
- fact consistent with the idea that ribosomes, helicases, or other RNA remodeling proteins partially and transiently unwind inherently structured regions.
- When RNA needs to be accessed, proteins may need to “work at opening” intrinsic RNA structure.

- **Watson–Crick Pairing Is Important but a Bit Overrated**
- in most cases of folded RNA three-dimensional (3D) structures, non-Watson–Crick pairs are critical for creating the tertiary interactions that stabilize the functional conformation.
-  Watson–Crick pairing is important for the RNA’s role as a carrier of analog information, but its importance changes within 3D structures of folded RNA molecules.

- **Non-Watson–Crick Pairing Is Very Much Underrated**
- 


[Thoughts on how to think (and talk) about RNA structure](https://www.pnas.org/doi/10.1073/pnas.2112677119)
    
## Computational Biology

## Arnie Library

[Arnie](https://pypi.org/project/arnie/) is a Python utility library to estimate, compare, and reweight RNA energetics across many secondary structure algorithms. It is a helpful utility library that simplifies interacting with various secondary structure prediction packages. Arnie makes structure prediction across multiple secondary structure packages, it needs at least one secondary structure predictor. 
One supported predictors is the [EternaFold](http://https://eternagame.org/about/software).
    
## EternaFold

[EternaFold](https://bioconda.github.io/recipes/eternafold/README.html?highlight=eternafold#package-package%20&#x27;eternafold&#x27;) RNA structure prediction algorithm improved through crowdsourced training data. [EternaFold](https://www.kaggle.com/code/brainbowrna/rna-science-computational-environment?scriptVersionId=143360771&cellId=4) is a leading prediction package that was trained using sequences collected via the citizen science game Eterna. In fact, Eterna players provided many of the sequences in the data for this competition. Cause the notebook is on Kaggle it required maunal configuration for the Kaggle notebook.

The EternaFold Library is found in the [Bioconda](https://bioconda.github.io/index.html) channel. The Bioconda channel let the installion of thousands of biomedical research softwares.

## Draw_RNA



# Setting Up RNA Science Environment

To Visualize and analize RNA sequence data, it imperative to setup the right environment. 
For this competition I had to do this for both my kaggle Notebook and my local machine.

**Kaggle**
For Kaggle notebook it was straight forward as the setup process was graciously provide by the amazing Competition people at Stanford Ribonanza, the Kaggle Notebook can be found [here](https://www.kaggle.com/code/brainbowrna/rna-science-computational-environment).

**Local Machine**
For my local it wasn't quite the straight forward process, but, here is how to setup for your system:

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

### **Further setup**
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
or 
> export PYTHONPATH=$PYTHONPATH:/path/to/eternafold

**if this does not work use the kaggle setup outright.**

**NOTE** 
- Replace /path/to/ with the actual path to the actual file/folder source code on your system.
- Run the following command to check if the ARNIEFILE environment variable is set:
> echo $ARNIEFILE


# Sources
1. [Bioconda](https://bioconda.github.io/)
2. [EternaFold](https://bioconda.github.io/recipes/eternafold/README.html?highlight=eternafold#package-package%20&#x27;eternafold&#x27)


Important steps in the solution
- [How to check if your model generalizes to long sequences](https://www.kaggle.com/competitions/stanford-ribonanza-rna-folding/discussion/444653)
- [Modeling with 3D coordinates](https://www.kaggle.com/competitions/stanford-ribonanza-rna-folding/discussion/451853)
- [Ribonanza data update and quick starter](https://www.kaggle.com/competitions/stanford-ribonanza-rna-folding/discussion/451890)
- [What is the bpps folder and the data in each file?](https://www.kaggle.com/competitions/stanford-covid-vaccine/discussion/182021#1006985)
- [Ribonanza data update and quick starter](https://www.kaggle.com/competitions/stanford-ribonanza-rna-folding/discussion/451890)