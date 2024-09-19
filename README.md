# COLIBRECON2024

This notebook walks you through some things you might want to do with the COLIBRE data.

### Running on cosma

Run the following commands to log in to cosma8b (this node hosts the [Jupyter Hub instance](https://cosma.readthedocs.io/en/latest/jupyter.html)), clone this repository, and run the setup script. You will need to replace `USER` with your cosma username. This will create a virtual environment with the required python packages, and add it to the Jupyter Hub.

```
ssh USER@login8b.cosma.dur.ac.uk
git clone https://github.com/robjmcgibbon/COLIBRECON2024.git
cd COLIBRECON2024
./cosma_env.sh
```

You then need to log out of cosma, and then connect again with port forwarding. Run the following from a terminal on your own computer.
```
ssh -N -L 8443:login8b.cosma.dur.ac.uk:443 USER@login8b.cosma.dur.ac.uk
```

Note that this command won’t show anything, but you must leave this command running for as long as you want to use the Jupyter Hub. You should then open https://localhost:8443 in your browser. You may need to enter your cosma username and password. Navigate to the `COLIBRECON2024` directory and open the notebook. Switch the kernel to use `colibre_workshop` (in the top right click where it says `Python 3 (ipykernel)`, and select `colibre_workshop`. If    
previously running instance
