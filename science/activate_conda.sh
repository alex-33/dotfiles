conda create -n science
conda activate science

conda install python
conda config --append channels conda-forge
conda install -c conda-forge jupyterlab
conda install --file conda_requirements.txt