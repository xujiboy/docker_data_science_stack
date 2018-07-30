# Base image
FROM continuumio/miniconda3

# Update ENV
ENV PATH /opt/conda/bin:$PATH

# File structure management
RUN ["mkdir", "notebooks" ]
COPY jupyter_notebook_config.py /root/.jupyter/
COPY run_jupyter.sh /
COPY requirement.txt /

# Updating repository sources and install packages thru conda
RUN apt-get update && apt-get install -y git && \
    rm -rf /var/lib/apt/lists/* && \
    conda update -n base conda && \
    conda install --file=/requirement.txt -y

# Running jupyter notebook
CMD ["/run_jupyter.sh"]
