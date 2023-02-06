# Project: Ice-Water Classification from Sentinel-1 SAR imagery

### Introduction to this notebook

This notebook implements label propagation for ice-water classification from Synthetic Aperture Radar (SAR) images. The notebook covers all steps in this process, starting with the search for appropriate Sentinel-1 and overlapping Sentinel-2 imagery through the _sentinelAPI_ module (https://sentinelsat.readthedocs.io/en/latest/api_overview.html). The user can define the search area by making a GEOjson file that contains the region of interest (ROI) as a point or polygon. Two example ROI's are given in the _rois_ folder of this notebook, and the search for Sentinel products covering each of these regions is presented in the scripts _sentinel_search_Barents.ipynb_ and _sentinel_search_Fram_Strait.ipynb_. 

In a second step, one of the Sentinel-1 SAR images from the search results is selected as the use case for classification. The Sentinel-1 scene is first loaded, calibrated and displayed in the script _load_and_plot_S1_scene.ipynb_. Label propagation is a semi-supervised learning method and therefore requires at least one labeled polygon per class we want to obtain in the classification result. In this case, we want to classify the image into 2 classes: 'ice' and 'water'. We manually draw polygons in the SAR scene to create the 'label mask'. Note: labeling the image is not performed in this notebook, we use the publicly available tool _labelme_ for this purpose and then upload the label mask here. More info and installation instruction for _labelme_ can be found here: https://github.com/wkentaro/labelme.  

Finally, we use the calibrated SAR image (HH and HV channel) and the label mask as input to the Label Propagation algorithm of sklearn (https://scikit-learn.org/stable/modules/generated/sklearn.semi_supervised.LabelPropagation.html). The algorithm iteratively spreads the information from the few initially labeled pixels throughout the image and the results is a fully classified SAR image. The pre-processing steps for label propagation and the actual label propagation are implemented in _ice_water_classification.ipynb_. 


Requirements : source provision.sh file to install required packages, create .env file with Scihub credentials

