# Base image
FROM continuumio/anaconda3

# Updating repository sources
RUN apt-get update && \
    /opt/conda/bin/conda install jupyter pyyaml -y

RUN ["mkdir", "notebooks"]
COPY jupyter_notebook_config.py /root/.jupyter/
COPY run_jupyter.sh /

# Jupyter and Tensorboard ports
EXPOSE 8000

# Store notebooks in this mounted directory
VOLUME /notebooks

# Running jupyter notebook
CMD ["/run_jupyter.sh"]
