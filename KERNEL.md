# Create a Jupyter kernel for the workshop

Notebooks of the workshop use a shared Jupyter kernel, based on a Python virtual environment.


## Setup

Clone this repository:

```
git clone https://github.com/nesi/ml102_workshop.git
cd ml102_workshop
```

Create the Conda environment and install dependencies:

```
module purge && module load Miniconda3
source $(conda info --base)/etc/profile.d/conda.sh
export PYTHONNOUSERSITE=1

CONDA_VENV=/nesi/project/nesi99991/ml102_20230713/jupyter_kernel_env
conda create -p "$CONDA_VENV" -y python=3.10.5
conda activate "$CONDA_VENV"
pip install -r requirements.lock.txt
conda deactivate
```

Then add it as a shared kernel for nesi99991:

```
module purge && module load JupyterLab
nesi-add-kernel -a nesi99991 -p "$CONDA_VENV" --shared tensorflow_ml102 TensorFlow/2.8.2-gimkl-2022a-Python-3.10.5
```

Alternative Kernel for Simplicity uses only the Tensorflow Module:

```
module purge && module load JupyterLab
nesi-add-kernel -a nesi99991 --shared tensorflow_ml102 TensorFlow/2.8.2-gimkl-2022a-Python-3.10.5
```

## References

Relevant NeSI support pages:

- [Tensorflow on GPUs](https://support.nesi.org.nz/hc/en-gb/articles/360000990436-TensorFlow-on-GPUs)
- [Miniconda3](https://support.nesi.org.nz/hc/en-gb/articles/360001580415-Miniconda3)
- [Jupyter kernel](https://support.nesi.org.nz/hc/en-gb/articles/4414958674831-Jupyter-kernels-Tool-assisted-management)
