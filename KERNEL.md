# Create a Jupyter kernel for the workshop

Notebooks of the workshop use a shared Jupyter kernel, based on a Conda environment.


## Setup

Create the Conda environment and install dependencies:

```
module purge && module load Miniconda3
source $(conda info --base)/etc/profile.d/conda.sh
export PYTHONNOUSERSITE=1

CONDA_VENV=/nesi/project/nesi99991/ml102_20220616/jupyter_kernel_env
conda env create -p "$CONDA_VENV" python=3.9.12
conda activate "$CONDA_VENV"
pip install -r requirements.lock.txt
conda deactivate
```

Then add it as a share kernel:

```
module purge && module load JupyterLab
nesi-add-kernel -p "$CONDA_VENV" --shared tensorflow_ml102 cuDNN/8.1.1.33-CUDA-11.2.0
```


## References

Relevant NeSI support pages:

- [Miniconda3](https://support.nesi.org.nz/hc/en-gb/articles/360001580415-Miniconda3)
- [Tensorflow and Miniconda](https://support.nesi.org.nz/hc/en-gb/articles/360000990436-TensorFlow-on-GPUs#conda_environments)
- [Jupyter kernel](https://support.nesi.org.nz/hc/en-gb/articles/4414958674831-Jupyter-kernels-Tool-assisted-management)
