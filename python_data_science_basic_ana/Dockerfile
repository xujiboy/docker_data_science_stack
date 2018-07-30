# Base image
FROM continuumio/anaconda3

# Update ENV
ENV PATH /opt/conda/bin:$PATH

# Updating repository sources
RUN apt-get update && \
    conda install jupyter pyyaml -y

RUN ["mkdir", "notebooks"]
COPY jupyter_notebook_config.py /root/.jupyter/
COPY run_jupyter.sh /

# Running jupyter notebook
CMD ["/run_jupyter.sh"]
