#!/bin/bash
	sample_header=
	sample_id=
	reference_directory=
	gtf_directory=
	
	for i in ${sample_id};
	do
	bowtie2 -x ${reference_directory} -U ./3_CUTADAPT/${sample_header}${i}_trimmed.fastq  -S ./4_BOWTIE2/${sample_header}${i}_trimmed.sam >./log/${sample_header}${i}_BOWTIE2_standard_output 2>./log/${sample_header}${i}_BOWTIE2_log
	done;

	for i in ${sample_id};
	do
	samtools view -bSF 4 -o ./5_SAMTOOLS/${sample_header}${i}_trimmed.bam ./4_BOWTIE2/${sample_header}${i}_trimmed.sam >./log/${sample_header}${i}_SAMTOOLS_1_standard_output 2>./log/${sample_header}${i}_SAMTOOLS_1_log
	samtools sort -n -o ./5_SAMTOOLS/${sample_header}${i}_trimmed_srt.bam ./5_SAMTOOLS/${sample_header}${i}_trimmed.bam >./log/${sample_header}${i}_SAMTOOLS_2_standard_output 2>./log/${sample_header}${i}_SAMTOOLS_2_log
	done;

	for i in ${sample_id};
	do
	htseq-count -f bam -r name -s no ./5_SAMTOOLS/${sample_header}${i}_trimmed_srt.bam ${gtf_directory} >./6_HTSEQCOUNT/${sample_header}${i}_Count.txt 2>./log/${sample_header}${i}_HTSEQCOUNT_log
	done; 
