# Project: Ice-Water Classification from Sentinel-1 SAR imagery

### Introduction to this notebook

This notebook implements label propagation for ice-water classification from Synthetic Aperture Radar (SAR) images. The notebook covers all steps in this process, starting with the search for appropriate Sentinel-1 and overlapping Sentinel-2 imagery through the _sentinelAPI_ module (https://sentinelsat.readthedocs.io/en/latest/api_overview.html). The user can define the search area by making a GEOjson file that contains the region of interest (ROI) as a point or polygon. Two example ROI's are given in the _ROIs_ folder of this notebook, and the search for Sentinel products is presented in the scripts _sentinel_search_.ipynb_.

In a second step, one of the Sentinel-1 SAR images from the search results is selected as the use case for classification. The Sentinel-1 scene is accessed in the netCDF format, calibrated and visualised in the script _load_and_calibrate_S1_scene.ipynb_. Label propagation is a semi-supervised learning method and therefore requires at least one labeled polygon per class we want to obtain in the classification result. In this case, we want to classify the image into 2 classes: 'ice' and 'water'. We manually draw polygons in the SAR scene to create the 'label mask'. Note: labeling of the image is not performed inside this notebook. We use the publicly available tool _labelme_ for this purpose and then upload the label mask here. The installation instructions and user guide for _labelme_ can be found here: https://github.com/wkentaro/labelme.  

Finally, we use the calibrated SAR image (HH and HV channel) and the label mask as input to the Label Propagation algorithm of sklearn (https://scikit-learn.org/stable/modules/generated/sklearn.semi_supervised.LabelPropagation.html). The algorithm iteratively spreads the information from the few initially labeled pixels throughout the image and the results is a fully classified SAR image. The pre-processing steps for label propagation and the actual label propagation are implemented in _ice_water_classification.ipynb_. 

**Summary**

This notebook contains 3 scripts that build upon each other:
1) _sentinel_search_: search for Sentinel-1 and overlapping Sentinel-2 over a user-defined area (ROI) and save search results to text files.
2) _load_and_calibrate_S1_scene_: load one of the Sentinel-1 images returned by the search of the first script and calibrate both image bands (HH and HV channel). Visualise the output.
3) _ice_water_classification_: classify a subset of the Sentinel-1 image into the classes 'ice' and 'water' using Label Propagation 

### Requirements
Source the _provision.sh_ file to install required packages in the JupyterLab environment.

For the satellite product search, a user account on Copernicus Scihub is required. Save your username and password for this account in a file called _.env_, which you create inside the _S1_ice_water_classification_ directory. Your credentials will be loaded as environment variables when running the code; this avoids hardcoding your password in the code.

In the _.env_ file, save your credentials like this:

> DHUS_USER="scihub_username" <br>
> DHUS_PASSWORD="scihub_password"