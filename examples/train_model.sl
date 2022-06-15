#!/usr/bin/env bash
#SBATCH --account=nesi99991
#SBATCH --time=00-00:10:00
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=2
#SBATCH --mem=8GB
#SBATCH --gpus-per-node=A100-1g.5gb:1

# load required environment modules
module purge
module load Miniconda3 cuDNN/8.1.1.33-CUDA-11.2.0

# activate the conda environment
source $(conda info --base)/etc/profile.d/conda.sh
export PYTHONNOUSERSITE=1
conda deactivate
conda activate /nesi/project/nesi99991/ml102_20220616/jupyter_kernel_env

# execute the script
python train_model.py
