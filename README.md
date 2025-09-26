# ML102 - Image analysis
![login](/images/REANNZ_logo.png)
This is an online workshop that will use Jupyter on the REANNZ Open OnDemand platform.

## Setup

At the beginning of the workshop, follow these instructions to start a session in the OnDemand portal:

1. Connect to OnDemand: https://ondemand.nesi.org.nz
 ![login](/images/login.png)


2. Authenticate with your Organisations Tuakiri credentials (you may need to set up 2FA if you haven't already).

   If you have any issues logging in, please let us know in the chat.

3. Choose the Jupyter App with options as below:

   - project code: *your project code*
   - walltime: 8 hours
   - number of CPUs: 4
   - memory size: 8 GB
   
   then press the **Launch** button.
 
   ![](/images/jupyter_options.png)

4. Let us know in zoom that you are ready to go (use 👍 reaction)

⚠️ If you don't manage to connect, let us know as soon as possible in the chat. ⚠️

## Workshop

This workshop consists of a series of notebooks, adapted from the [TensorFlow tutorials](https://www.tensorflow.org/tutorials):

1. [Introduction](notebooks/01_introduction.ipynb)
1. [Image classification](notebooks/02_classification.ipynb) ([source](https://www.tensorflow.org/tutorials/images/classification))
1. [Transfer learning and fine-tuning](notebooks/03_transfer_learning.ipynb) ([source](https://www.tensorflow.org/tutorials/images/transfer_learning))
1. [Slurm jobs on REANNZ GPUs](notebooks/04_slurm_jobs.ipynb)

We have already made a copy of these notebooks for you in the folder:

```
/home/$USER/ml102_workshop/
```

where `$USER` stands for your NeSI username.

You can also find them on GitHub: https://github.com/nesi/ml102_workshop

## Supplemental material

We also created or adapted the following notebooks.
We won't use them during the workshop.

- [Convolutional Neural Network (CNN)](notebooks/cnn.ipynb) example ([source](https://www.tensorflow.org/tutorials/images/cnn))
- [Image Segmentation](notebooks/segmentation.ipynb) ([source](https://www.tensorflow.org/tutorials/images/segmentation))

## Appendix

- [Generate a Jupyter kernel for the workshop](KERNEL.md) (for maintainers)

    - If you want to create a new kernel for the workshop, new instructions need to be written for OOD.     
