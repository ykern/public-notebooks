#!/bin/bash

# Use this file to provision new conda python environment
# with packages for CVL environment

conda install -c conda-forge \
  pyresample
  
pip install publish
