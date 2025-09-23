# COLIBRE

This repository introduces the COLIBRE simulation data, along with some tools that are useful when analysing it.

### Running the introductory notebook

Run the following commands to log in to cosma8b (this node hosts the [Jupyter Hub instance](https://cosma.readthedocs.io/en/latest/jupyter.html)), clone this repository, and run the setup script. You will need to replace `USER` with your cosma username. This will create a virtual environment with the required python packages, and add it to the Jupyter Hub.

```
ssh USER@login8b.cosma.dur.ac.uk
git clone https://github.com/robjmcgibbon/COLIBRE_Introduction.git
cd COLIBRE_Introduction
./cosma_env.sh
```

You then need to log out of cosma, and then connect again with port forwarding. Run the following from a terminal on your own computer.
```
ssh -N -L 8443:login8b.cosma.dur.ac.uk:443 USER@login8b.cosma.dur.ac.uk
```

Note that this command won’t show anything, but you must leave this command running for as long as you want to use the Jupyter Hub. You should then open https://localhost:8443 in your browser. You may need to enter your cosma username and password. Navigate to the `COLIBRE_Introduction` directory and open the notebook. Switch the kernel to use `colibre_workshop` (in the top right click where it says `Python 3 (ipykernel)`, and select `colibre_workshop`.

### Running analysis jobs

Basic exploration of the data (e.g. with ipython/jupyter notebooks) can be carried out on the login node. However, any more significant analysis should should be done by submitting a job to the queue. An example job script is given in `plot_stellar_mass.sh`, which can be submitted using the command `sbatch plot_stellar_mass.sh`.
