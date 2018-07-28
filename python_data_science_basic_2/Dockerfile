# Base image
FROM continuumio/miniconda3

# File structure management
RUN ["mkdir", "notebooks", "env_files"]
COPY jupyter_notebook_config.py /root/.jupyter/
COPY run_jupyter.sh /
COPY data_science_basic_2.yaml /env_files/env.yml

# Updating repository sources and install packages thru conda
RUN apt-get update && apt-get install -y git && \
    rm -rf /var/lib/apt/lists/* && \
    /opt/conda/bin/conda update -n base conda && \
    /opt/conda/bin/conda env create -f /env_files/env.yml

# Jupyter ports
EXPOSE 8000

# Store notebooks in this mounted directory
VOLUME /notebooks

# Running jupyter notebook
CMD ["/run_jupyter.sh"]
