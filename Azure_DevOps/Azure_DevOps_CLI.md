# Azure DevOps CLI Tips  <!-- omit in toc -->

- [Basic Use](#basic-use)
  - [Installation](#installation)
  - [Login](#login)
  - [Set Default Organization and Project](#set-default-organization-and-project)
  - [Create a New Project](#create-a-new-project)
  - [List Work Items](#list-work-items)
  - [Create a New Repository](#create-a-new-repository)
  - [Clone a Repository](#clone-a-repository)
  - [Create a New Pipeline](#create-a-new-pipeline)
  - [Run a Pipeline](#run-a-pipeline)
  - [Help](#help)

&nbsp;

## Basic Use

### Installation

You can install the Azure DevOps extension for Azure CLI using the command \
`az extension add --name azure-devops`.

### Login

Before you start using the ADO CLI, you need to login using the command \
`az login`.

### Set Default Organization and Project

To avoid specifying the organization and project for every command, \
you can set them as default using \
`az devops configure --defaults organization=https://dev.azure.com/myorg/ project=myproject`.

*Remember to replace the placeholders with your actual \
organization, project, and repository names.

### Create a New Project

You can create a new project using the command \
`az devops project create --name`.

### List Work Items

You can list all work items in a project using the command \
`az boards work-item list --project`.

### Create a New Repository

You can create a new repository using the command \
`az repos create --name`.

### Clone a Repository

You can clone a repository using the command \
`az repos clone --name`.

### Create a New Pipeline

You can create a new pipeline using the command \
`az pipelines create --name`.

### Run a Pipeline

You can run a pipeline using the command \
`az pipelines run --name`.

### Help

If you need help with a command, you can use the `--help` flag, \
for example: \
`az devops --help`.

&nbsp;
