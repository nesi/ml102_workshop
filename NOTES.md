# Notes

## Running notebooks on NeSI

Create a Jupyter kernel for Tensorflow:
```
module purge && module load JupyterLab
nesi-add-kernel tensorflow-2.4.1 TensorFlow/2.4.1-gimkl-2020a-Python-3.8.2
```

Replace the following to ensure compatibility with TF 2.4:

- `tf.keras.utils.image_dataset_from_directory` replaced with `tf.keras.preprocessing.image_dataset_from_directory`
- `layers.Rescaling` replaced with `layers.experimental.preprocessing.Rescaling`
- use `layers.experimental.preprocessing` for data augmentation

This is a temporary soultion, a better long-term solution is to update TF on NeSI.