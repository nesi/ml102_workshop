# Create a Jupyter kernel for the workshop

Notebooks of the workshop use a shared Jupyter kernel, based on a Python virtual environment.


## Setup

Clone this repository:

```
git clone https://github.com/nesi/ml102_workshop.git
cd ml102_workshop
```

Create the Python virtual environment and install dependencies:

```
module purge && module load Python/3.9.9-gimkl-2020a
export PYTHONNOUSERSITE=1

VENV=/nesi/project/nesi99991/ml102_20220616/jupyter_kernel_env
python3 -m venv "$VENV"
. "$VENV/bin/activate"
pip install -r requirements.lock.txt
deactivate
```

Then add it as a shared kernel for nesi99991:

```
module purge && module load JupyterLab
nesi-add-kernel -v "$VENV" -a nesi99991 --shared tensorflow_ml102 \
    Python/3.9.9-gimkl-2020a cuDNN/8.1.1.33-CUDA-11.2.0
```


## References

Relevant NeSI support pages:

- [Tensorflow on GPUs](https://support.nesi.org.nz/hc/en-gb/articles/360000990436-TensorFlow-on-GPUs)
- [Jupyter kernel](https://support.nesi.org.nz/hc/en-gb/articles/4414958674831-Jupyter-kernels-Tool-assisted-management)
