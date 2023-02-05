#!/bin/bash

# Use this file to provision new conda python environment
# with packages for the 'S1_sea_ice_classification' environment

conda install -c conda-forge \
  gdal \
  netcdf4 \
  geopandas \
  xarray \
  dask \
  cartopy \
  loguru \
  python-dotenv \
  sentinelsat \
  scikit-learn \
  dateparser \
