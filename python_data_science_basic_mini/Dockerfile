# Base image
FROM continuumio/miniconda3

# File structure management
RUN ["mkdir", "notebooks" ]
COPY jupyter_notebook_config.py /root/.jupyter/
COPY run_jupyter.sh /
COPY requirement.txt /

# Updating repository sources and install packages thru conda
RUN apt-get update && apt-get install -y git && \
    rm -rf /var/lib/apt/lists/* && \
    /opt/conda/bin/conda update -n base conda && \
    /opt/conda/bin/conda install --file=/requirement.txt -y

# Jupyter ports
EXPOSE 8000

# Store notebooks in this mounted directory
VOLUME /notebooks

# Running jupyter notebook
CMD ["/run_jupyter.sh"]
