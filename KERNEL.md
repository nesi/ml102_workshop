## Create a kernel for the workshop

Create a Conda environment and install dependencies:

```
module purge && module load Miniconda3
source $(conda info --base)/etc/profile.d/conda.sh
export PYTHONNOUSERSITE=1

CONDA_VENV=/nesi/project/nesi99999/ml102_jupyter_kernel_env
conda env create -p "$CONDA_VENV" python=3.9.12
conda activate "$CONDA_VENV"
pip install -r requirements.lock.txt
conda deactivate
```

Then add it as a share kernel:

```
module purge && module load JupyterLab
nesi-add-kernel -p "$CONDA_VENV" --shared "tensorflow_ml102" cuDNN/8.1.1.33-CUDA-11.2.0
```

**Note: This needs to be updated for the workshop to use folder in nesi99991.**
