#!/bin/bash
#SBATCH --job-name=evoground-train
#SBATCH --partition=gpu
#SBATCH --gres=gpu:1
#SBATCH --cpus-per-task=6
#SBATCH --mem=40G
#SBATCH --time=2-00:00:00
#SBATCH --output=slurm-%j.out
#SBATCH --error=slurm-%j.err

# --- Load environment on Vector ---
module load cuda/12.1
module load anaconda/2023a

# --- Activate conda environment ---
source activate evoground

# --- Optional: Faster IO ---
export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK

# --- Run EvoGround experiment ---
srun python experiments/scripts/run_agentic.py \
    --config experiments/configs/agentic.yaml

echo "Training completed."
