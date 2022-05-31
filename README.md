# ML102 - Image analysis

This repository contains the material for the ML 102 workshop.


## Setup

At the beginning of the workshop, follow these instructions to start a session on Jupyter-on-NeSI:

1. Follow https://jupyter.nesi.org.nz/hub/login

2. Enter NeSI username, HPC password and 6 digit second factor token
   ![](images/jupyter_login.png)

3. Choose server options as below:

   - project code: nesi99991
   - walltime: 8 hours
   - number of CPUs: 4
   - memory size: 8 GB
   - GPU: **None** (we don't need any yet 😉)
   
   then press **Start** button.
   ![](images/server_options.png)

4. Let us know in the zoom chat that you are ready to go 👍

⚠️ If you don't manage to connect, let us know as soon as possible in the chat. ⚠️


## Notebooks

- [Introduction](notebooks/01_introduction.ipynb)
- [CNN](notebooks/02_cnn.ipynb) ([source](https://www.tensorflow.org/tutorials/images/cnn))
- [Classification](notebooks/03_classification.ipynb) ([source](https://www.tensorflow.org/tutorials/images/classification))
- [Transfer learning](notebooks/04_transfer_learning.ipynb) ([source](https://www.tensorflow.org/tutorials/images/transfer_learning))
- [Segmentation](notebooks/05_segmentation.ipynb) ([source](https://www.tensorflow.org/tutorials/images/segmentation))
- [Slurm jobs on NeSI GPUs](notebooks/06_slurm_jobs.ipynb)
