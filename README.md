# JupyterLab + JupyterAI Docker Environment
This Docker environment provides a pre-configured JupyterLab instance running on Python 3.12. To use this environment, you'll need to have Docker installed on your system.

## Requirements
- Docker Engine

## Usage
Clone this repository to your local machine:

```
$ git clone https://github.com/enwaytech/jupyterai-starter-kit.git && cd jupyterai-starter-kit
```

Source the bash alias file:

```
source aliases.bash
```

Then you have two commands:

- `jupyter-ai-build-image` which builds the docker image "jupyter-ai-enway:latest"
- `jupyter-ai-run-container` which runs the container. This takes one argument which is the directory you want to run jupyterlab in (this will also be the directory that is mapped into the container).

## Jupyter AI Assistant
This environment comes with the Jupyter AI assistant, which allows you to use various LLM to assist you with your work in Jupyter Notebook.

When you open the chat for the first time you can configure LLM and API key (e.g. Mistral).

