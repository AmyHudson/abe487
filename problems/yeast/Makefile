#!/bin/bash

set -u

.PHONY: all fasta features test clean

all: clean fasta genome chr-count chr-size features gene-count verified-genes uncharacterized-genes gene-types palinsreg terminated-genes

clean:
	find . \( -name \*gene\* -o -name chr-\* \) -exec rm {} \;

fasta:
	echo "Download files into \"fasta\" directory"
	mkdir ~/abe487/problems/yeast/fasta
	cd !$
	wget http://downloads.yeastgenome.org/sequence/S288C_reference/chromosomes/fasta/chr01.fsa 
	wget http://downloads.yeastgenome.org/sequence/S288C_reference/chromosomes/fasta/chr02.fsa 
	wget http://downloads.yeastgenome.org/sequence/S288C_reference/chromosomes/fasta/chr03.fsa 
	wget http://downloads.yeastgenome.org/sequence/S288C_reference/chromosomes/fasta/chr04.fsa
	wget http://downloads.yeastgenome.org/sequence/S288C_reference/chromosomes/fasta/chr05.fsa
	wget http://downloads.yeastgenome.org/sequence/S288C_reference/chromosomes/fasta/chr06.fsa
	wget http://downloads.yeastgenome.org/sequence/S288C_reference/chromosomes/fasta/chr07.fsa
	wget http://downloads.yeastgenome.org/sequence/S288C_reference/chromosomes/fasta/chr08.fsa
	wget http://downloads.yeastgenome.org/sequence/S288C_reference/chromosomes/fasta/chr09.fsa
	wget http://downloads.yeastgenome.org/sequence/S288C_reference/chromosomes/fasta/chr10.fsa
	wget http://downloads.yeastgenome.org/sequence/S288C_reference/chromosomes/fasta/chr11.fsa
	wget http://downloads.yeastgenome.org/sequence/S288C_reference/chromosomes/fasta/chr12.fsa
	wget http://downloads.yeastgenome.org/sequence/S288C_reference/chromosomes/fasta/chr13.fsa
	wget http://downloads.yeastgenome.org/sequence/S288C_reference/chromosomes/fasta/chr14.fsa
	wget http://downloads.yeastgenome.org/sequence/S288C_reference/chromosomes/fasta/chr15.fsa
	wget http://downloads.yeastgenome.org/sequence/S288C_reference/chromosomes/fasta/chr16.fsa
	wget http://downloads.yeastgenome.org/sequence/S288C_reference/chromosomes/fasta/chrmt.fsa

genome: fasta
	echo OK > fasta/genome.fa
	cd fasta
	touch 'genome.fa'
	cat chr01.fsa  chr04.fsa  chr07.fsa  chr10.fsa  chr13.fsa  chr16.fsa chr02.fsa  chr05.fsa  chr08.fsa  chr11.fsa  chr14.fsa  chrmt.fsa chr03.fsa  chr06.fsa  chr09.fsa  chr12.fsa  chr15.fsa  > fasta/genome.fa


chr-count: genome
	echo OK > chr-count
	cd fasta
	touch 'chr-count'
	grep '>' genome.fa | wc -l > chr-count

chr-size: genome
	echo OK > chr-size
	touch 'chr-size'
	wc -L genome.fa > chr-size

features:
	echo "Download SGD_features.tab"
	wget http://downloads.yeastgenome.org/curation/chromosomal_feature/SGD_features.tab

gene-count: features
	echo OK > gene-count
	touch 'gene-count'
	column SGD_features.tab

verified-genes: features
	echo OK > verified-genes

uncharacterized-genes: features
	echo OK > uncharacterized-genes

gene-types: features
	echo OK > gene-types

palinsreg:
	echo "Download palinsreg"
 	wget ftp://ftp.imicrobe.us/abe487/yeast/palinsreg.txt
        grep '/G=[^ ]*' somefile -o | cut 


terminated-genes: palinsreg
	echo OK > terminated-genes

test:
	./test.pl6
