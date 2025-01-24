FROM condaforge/miniforge3:latest

WORKDIR /biocenv
COPY . /biocenv
RUN mamba --version

RUN mamba env create -f env/release.yml
