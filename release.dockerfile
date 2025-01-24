FROM mambaorg/micromamba:2.0.5

COPY --chown=$MAMBA_USER:$MAMBA_USER envs/release.yml /tmp/env.yaml
RUN micromamba --version

RUN micromamba install -y -n base -f /tmp/env.yaml && \
    micromamba clean --all --yes
