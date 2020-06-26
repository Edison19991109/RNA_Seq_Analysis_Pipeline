# RNA-Seq Analysis Pipeline
This is the RNA-Seq Analysis Pipeline that can be used for differential gene expression analysis. All the codes have been stored here.

If you get any question about the pipeline, you can directly contact Edison Jianning KANG (e-mail address: <jianning.18@intl.zju.edu.cn>).

# Outline
<!-- TOC -->

- [RNA-Seq Analysis Pipeline](#rna-seq-analysis-pipeline)
- [Outline](#outline)
- [Introduction](#introduction)
- [Copyright](#copyright)
- [Running Environment](#running-environment)
- [Useage](#useage)
    - [0. Introduction](#0-introduction)
    - [1. Data Downloading and Quality Control](#1-data-downloading-and-quality-control)
    - [2. Data cleaning and its Quality Control](#2-data-cleaning-and-its-quality-control)
    - [3. Alignment, Format Transformation and Gene Assignment](#3-alignment-format-transformation-and-gene-assignment)
- [Reference](#reference)

<!-- /TOC -->

# Introduction
This pipeline can be used for analyzing the RNA-Seq sequencing data. It includes six steps:
1. Data Downloading (*This step can be skipped if the sequencing data is already on hand.*)

2. Quality Control

3. Data Cleaning and its Quality Control

4. Alignment

5. Format Transformation

6. Gene Assignment

The corresponding running scripts are provided. For their useage, please refer to the later content.

# Copyright
Copyright (C) 2020 Edison Jianning KANG

This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with this program.  If not, see <https://www.gnu.org/licenses/>.

![ [Large GPLv3 logo with “Free as in Freedom”] ](https://www.gnu.org/graphics/gplv3-with-text-136x68.png)

# Running Environment

1. Ubuntu 19.10 (GNU/Linux 5.3.0-18-generic x86_64)

2. Aspera Connect version 3.9.9.177872
   
   ascp version 3.9.1.168302

3. FastQC v0.11.9

4. cutadapt version 2.9

5. Bowtie 2 version 2.3.4.3

6. samtools version 1.9

7. htseq-count version 0.11.2

# Useage
## 0. Introduction
All the scripts and an example directory structure for running those scripts have been added to this repository. To use the pipeline, you can directly fork or clone the repository to the local computer. 

(**Notice: Any further change may be added to the pipeline. If you want to keep using the latest one, it is better to fork the repository rather than clone it.**)

The structure of this repository is illustrated below:
```
    - codes
    It stores all the scripts and an example directory structure
        - 1_RAW
        - 2_FASTQC
        - 3_CUTADAPT
        - 4_BOWTIE2
        - 5_SAMTOOLS
        - 6_HTSEQCOUNT
        - log

        Above directories are an example directory strcture. Running results of each steps will be stored in corresponding dicretory. For log directory, it will store the log file of all the steps.

          Aspera_FASTQC.sh
          Cutadapt.sh
          Bowtie2_SAMtools_Htseq_cout.sh

        Above are all the scripts needed for running.

          Type_in.txt
          
        Above .txt file is the running command that can be typed in the console.

    - LICENSE
    It is the lincense file for this pipeline

    - README.md
    It is the ReadMe file that shown here.
```

## 1. Data Downloading and Quality Control
To perform the first two steps, you can run the script [`Aspera_FASTQC.sh`](https://github.com/Edison19991109/RNA_Seq_Analysis_Pipeline/blob/master/codes/Aspera_FASTQC.sh). Downloading is conducted by using the `IBM Aspera` and an example downloading ftp link is provided. Quality control is conducted by using `FastQC`. To run the script, sample header and sample ID are needed.

*(Detail version information of all the programs that are mentioned here are provided in an early section.)*

## 2. Data cleaning and its Quality Control
To perform the third step, you can run the script [`Cutadapt.sh`](https://github.com/Edison19991109/RNA_Seq_Analysis_Pipeline/blob/master/codes/Cutadapt.sh). Several examples of how to run `cutadapt` are provided. The quality control of processed sequencing data is also conducted by using `FastQC`. To run the script, sample header and sample ID are needed.

*(Detail version information of all the programs that are mentioned here are provided in an early section.)*

## 3. Alignment, Format Transformation and Gene Assignment
To perform these three steps, you can run the script [`Bowtie2_SAMtools_Htseq_cout.sh`](https://github.com/Edison19991109/RNA_Seq_Analysis_Pipeline/blob/master/codes/Bowtie2_SAMtools_Htseq_cout.sh). Alignment is conducted through `Bowtie2` and format transformation is conducted by using `samtools`. Gene assignment is conducted through `htseq-count`. 

To run the script, sample header and sample ID are needed. For `Bowtie2` and `htseq-count`, paths of reference genome and its `.gtf` file are also needed.

*(Detail version information of all the programs that are mentioned here are provided in an early section.)*

# Reference
It will be added later.