# TDS Experiment

This is an experiment description for the [Time-Delay-Stability (TDS) Matlab](https://github.com/somnonetz/cc-tds-app)
application, which is compatible with [FAICE](https://github.com/curious-containers/faice) (Fair Collaboration and
Experiments) tools.


## Usage

The experiment is based on the `docker.io/curiouscontainers/cc-tds-app:cloudam2017` container image, which is compatible
with two different execution engines, [Curious Containers](https://www.curious-containers.cc/) and
[Common Workflow Language](https://github.com/common-workflow-language/cwltool).

Install [FAICE](https://github.com/curious-containers/faice) tools, to run an experiment.


### Option 1

Run the experiment remotely with a [Curious Containers installation](https://ccserver.f4.htw-berlin.de) in the HTW
Berlin cloud infrastructure. Input and result files will be accessed in [XNAT](https://xnat.f4.htw-berlin.de/xnat/).

```bash
faice run https://raw.githubusercontent.com/somnonetz/tds-experiment/master/curious-containers/tds-experiment.json
```

The faice tool will ask for user credentials. Required values are `cc_username`, `cc_password`, `xnat_username` and
`xnat_password`.


### Option 2

Create a Vagrant VM and run the experiment localy with Curious Containers. Input and result files will be accessed in
the local file system.

```bash
faice vagrant https://raw.githubusercontent.com/somnonetz/tds-experiment/master/curious-containers/tds-experiment.json
```

The faice tool will ask for user credentials, but none of them are strictly required.


### Option 3

Create a Vagrant VM and run the experiment localy with Curious Containers. Input and result files will be accessed in
[XNAT](https://xnat.f4.htw-berlin.de/xnat/).

```bash
faice vagrant --remote-data https://raw.githubusercontent.com/somnonetz/tds-experiment/master/curious-containers/tds-experiment.json
```

The faice tool will ask for user credentials. Only `xnat_username` and
`xnat_password` are required values.

### Option 4

Create a Vagrant VM and run the experiment localy with CWLTool (Command Workflow Language). Input and result files will
be accessed in the local file system.

```bash
faice vagrant https://raw.githubusercontent.com/somnonetz/tds-experiment/master/common-workflow-language/tds-experiment.json
```
