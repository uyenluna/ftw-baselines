#!/bin/bash

#SBATCH -c 8
#SBATCH -p public
#SBATCH -t 00:30:00
#SBATCH --job-name=ftw-FURI_test
#SBATCH --output=logs/ftw-FURI_CPU_%j.out
#SBATCH --error=logs/ftw-FURI_CPU_%j.err

cd /home/pnguye79/FURI-PROJECT/ftw-baselines

source .venv/bin/activate

ftw model fit -c /home/pnguye79/FURI-PROJECT/ftw-baselines/configs/FURI/FURI_prue_efnet7.yaml