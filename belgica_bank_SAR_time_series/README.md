# Project: Sentinel-1 imagery time series generation

### Introduction to this notebook
---
This notebook shows how to generate a time series of Sentinel-1 imagery for a given time period over a specific region of interest (ROI). It demonstrates the use of the sentinelAPI from sentinelsat to search for Sentinel-1 (S1) data, and how to access the corresponding netcdf files of all found images. HH and HV channles are are calibrated and stacked to false-color RGB images for visualization in the original radar geometry and on a georeferenced map. The processing steps are first shown and tested on one example image, then a loop over the time series over the S1 search results produces a time series pngs.

For every S1 scene, another search is performed to find overlapping Sentinel-2 (S2) data. Search results are written to text files for later download and processing. One example for common visualiztion of overlapping S1 and S2 data is shown.

Detailed information on all processing steps and parameters to be adjusted is given in the notebook as markdown and comment.

### Requirements
---
Required packages are listed in "provision.sh". Source this file to install the packages for your JupyterLab environment.
