# BiocPy Environments

This repository provides Conda/Mamba configuration files and Dockerfiles to simplify the creation of environments containing most Python packages in the BiocPy (& friends) ecosystem. These provide easy setup for users looking to use the BiocPy tools.

In addition, pre-built Docker images for these configurations are published to the [GitHub Package Registry](https://github.com/orgs/BiocPy/packages?repo_name=environments).

---

## Getting Started

### Using Conda or Mamba

To create an environment using one of the configuration YAML files:

```shell
# Use conda or mamba to create the environment
conda env create -f envs/release.yml

# Activate the environment
conda activate biocpy_release

# Check the versions of the installed packages
pip list
```

> **Note**: If you have multiple Conda channels enabled, you may need to set the channel priority for reliable package resolution:
>
> ```sh
> conda config --set channel_priority flexible
> ```

---

### Using Docker

To create and use a Docker image based on the provided Dockerfile:

```sh
# Build the Docker image
docker build -f release.dockerfile -t biocpy_release

# Run the Docker container
docker run -it biocpy_release
```

---

## Available Configurations

### Conda Configurations

- `envs/release.yml`: Contains the stable release versions of BiocPy and related packages.

### Docker Images

Pre-built Docker images are available in the [GitHub Package Registry](https://github.com/orgs/BiocPy/packages?repo_name=environments). These images correspond to the provided Conda configurations:

- `biocpy/release`: Based on `release.yml`

You can pull these images directly:

```sh
## Replace the VERSION tag with an available version from the registry

# Pull the stable release image
docker pull ghcr.io/biocpy/environments/release:<VERSION>
```

> **Note**: We might expand this to include both dev and release configurations of the packages. In that case:
> `envs/dev.yml`: Includes the latest development versions of BiocPy packages for testing and contributions
> `biocpy/dev`: Docker image based on `dev.yml`

---

## Support

If you encounter issues or have questions, please open an issue in this repository or reach out via the [BiocPy GitHub Discussions](https://github.com/biocpy/biocpy/discussions).
