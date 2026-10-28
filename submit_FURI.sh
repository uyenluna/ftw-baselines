#!/bin/bash

#SBATCH -c 8
#SBATCH -p public
#SBATCH -t 0-15:00:00
#SBATCH -G a100:1
#SBATCH --job-name=ftw-FURI_train
#SBATCH --output=logs/ftw-FURI_%j.out
#SBATCH --error=logs/ftw-FURI_%j.err

cd /home/pnguye79/FURI-PROJECT/ftw-baselines

source .venv/bin/activate

ftw model fit -c /home/pnguye79/FURI-PROJECT/ftw-baselines/configs/FURI/FURI_prue_efnet7.yaml