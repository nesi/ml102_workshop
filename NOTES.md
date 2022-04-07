# Notes

## Running notebooks on NeSI

Create a shared Jupyter kernel for Tensorflow 2.6 for all users of the same account:
```
module purge && module load JupyterLab
nesi-add-kernel --shared "tensorflow-2.6.3" TensorFlow/.2.6.3-gimkl-2020a-Python-3.9.9
```

Make sure resources are enough to run the notebooks:

- `02_cnn.ipynb` is fine with 2 CPUS & 4GB
- `03_classification.ipynb` needs more RAM, fine with 2 CPUs and 8GB
- `04_transfer_learning.ipynb` is fine with 2 CPUs and 8GB
- `05_segmentation.ipynb` needs `tensorflow_datasets` to be installed

Data

- downloads not working for me
- will work on a download resource location?

