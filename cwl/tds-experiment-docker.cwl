cwlVersion: v1.0
class: CommandLineTool
baseCommand: run_sn_TDS.sh

hints:
  DockerRequirement:
    dockerPull: docker.io/curiouscontainers/cc-tds-app

inputs:
  MCRroot:
    type: string
    inputBinding:
      position: 0
    description: "Path to the Matlab Compiler Runtime 2015a installation"
  data:
    type: File
    inputBinding:
      prefix: data
    description: "Polysomnography in EDF format."
  montage_filename:
    type: File?
    inputBinding:
      prefix: montage_filename
    description: "Montage in plain text format: a list of signal types contained in the Polysomnography EDF file. Should contain one signal type per row for each corresponding channel. Possible values are eeg, eog, emg, ecg and resp."
  resultpath:
    type: string?
    inputBinding:
      prefix: resultpath
    description: "directory where the results are stored, default: working"
  outputfilebase:
    type: string?
    inputBinding:
      prefix: outputfilebase
    description: "string from which the result filenames are deduced, default filebasename of the EDF"
  wl_sfe:
    type: int?
    inputBinding:
      prefix: wl_sfe
    description: "windowlength of signal feature extraction, default 2 secs"
  ws_sfe:
    type: int?
    inputBinding:
      prefix: ws_sfe
    description: "windowshift of signal feature extraction, default 1 secs"
  wl_xcc:
    type: int?
    inputBinding:
      prefix: wl_xcc
    description: "windowlength of crosscorrelation in seconds, default 60"
  ws_xcc:
    type: int?
    inputBinding:
      prefix: ws_xcc
    description: "windowshift of crosscorrelation in seconds, default 30"
  wl_tds:
    type: int?
    inputBinding:
      prefix: wl_tds
    description: "windowlength of stability analysis in seconds, default 5"
  ws_tds:
    type: int?
    inputBinding:
      prefix: ws_tds
    description: "windowshift of stability analysis in seconds, default 1"
  mld_tds:
    type: float?
    inputBinding:
      prefix: mld_tds
    description: "maximum lag difference in window to be accounted as stable sequence, default 2"
  mlf_tds:
    type: float?
    inputBinding:
      prefix: mlf_tds
    description: "minimum lag fraction in window that need to fulfill mld_tds, default: 0.8"
  debug:
    type: int?
    inputBinding:
      prefix: debug
    description: "if set to 1 debug information is provided, default 0"

outputs:
  tds:
    type: File?
    outputBinding:
      glob: "*_getTDS.mat"
  tds_all:
    type: File?
    outputBinding:
      glob: "*_getTDS_all.mat"
