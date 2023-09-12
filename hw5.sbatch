#!/bin/bash
#SBATCH --job-name=me_bash
#SBATCH --ntasks=1
#SBATCH --nodes=1
#SBATCH --mem=1gb
#SBATCH --time=00:03:00
#SBATCH --partition=windfall
#SBATCH --account=windfall
awk '$5 = "coding"' gene_results.txt > coding_gene.txt
sed -i 's/\s0\s/ None /g' coding_gene.txt
