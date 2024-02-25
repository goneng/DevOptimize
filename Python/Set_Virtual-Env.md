# Setup Virtual Env (virtualenv) <!-- omit in toc -->

Set a sandboxed Python environment\
(the prefered way to use Python in production)

- [What is it good for?](#what-is-it-good-for)
- [One-Time Effort](#one-time-effort)
  - [Setup the Host](#setup-the-host)
  - [Prepare a Requirements File](#prepare-a-requirements-file)
- [Create and Use the Virtual-Env](#create-and-use-the-virtual-env)
  - [Choose a Name for the Virtual-Env](#choose-a-name-for-the-virtual-env)
  - [Create the Virtual-Env](#create-the-virtual-env)
  - [Initialize the Virtual-Env](#initialize-the-virtual-env)
  - [Install Required Python Packages on the Virtual-Env](#install-required-python-packages-on-the-virtual-env)

## What is it good for? ##

'virtualenv' is a tool that allows you to set an isolated installation of Python,\
complete with the Python-executable and all the relevant modules.

To confirm everything is set as required, the setup can be run every time before using the environment -\
if all is already configured, it will just verify that and continue.

see [virtualenv Lives!](https://hynek.me/articles/virtualenv-lives/)

## One-Time Effort ##

### Setup the Host ###

'virtualenv' should be pre-installed as root:

```bash
sudo pip3 install virtualenv
```

### Prepare a Requirements File ###

The requirements file should list all the packages to be installed in that virtual-env,\
as well as the specific version each should have, for example:\
requirements.txt

```bash
PyNaCl==1.2.0
PyYAML==3.12
```

- This list can be updated from time to time, as needed\
- Make sure all modules are set to a specific version (with the '==' operator)

## Create and Use the Virtual-Env ##

### Choose a Name for the Virtual-Env ###

Set a folder-name (and location) for your virtual env

```bash
VENV_DIR=<virtual-env-path-and-name>
```

### Create the Virtual-Env ###

```bash
virtualenv "${VENV_DIR}"
```

### Initialize the Virtual-Env ###

```bash
source "${VENV_DIR}/bin/activate"
```

### Install Required Python Packages on the Virtual-Env ###

```bash
pip3 install -r ./requirements.txt
```
