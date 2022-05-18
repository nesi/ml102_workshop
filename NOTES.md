# Notes

[JIRA](https://nznesi.atlassian.net/browse/EV-20)


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


## Running notebooks on NeSI

Make sure resources are enough to run the notebooks:

- `02_cnn.ipynb` is fine with 2 CPUS & 4GB
- `03_classification.ipynb` needs more RAM, fine with 2 CPUs and 8GB
- `04_transfer_learning.ipynb` is fine with 2 CPUs and 8GB
- `05_segmentation.ipynb`

Data:

- downloads is not working with NeSI module TF 2.6.3 (SSL certificate issue)
- this does work with NeSI jupyter kernel Python 3.8.2 (but this one has a too old version of TF)
- resources could be pre-downloaded to avoid attendees to fill up their home storage space
