#!/bin/bash
#SBATCH --job-name=evoground-train
#SBATCH --time=2-00:00:00
#SBATCH --account=def-yourPI
#SBATCH --gres=gpu:v100l:1
#SBATCH --cpus-per-task=4
#SBATCH --mem=32G
#SBATCH --output=slurm-%j.out
#SBATCH --error=slurm-%j.err

# --- Load modules (SciNet standard) ---
module load python/3.10
module load cuda/12.1

# --- Activate Conda ---
source ~/miniconda3/etc/profile.d/conda.sh
conda activate evoground

# --- Run training ---
echo "Starting EvoGround training..."
python experiments/scripts/run_agentic.py \
    --config experiments/configs/agentic.yaml

echo "Job completed."
