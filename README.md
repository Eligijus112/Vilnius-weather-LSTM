# Vilnius weather analysis

Repository for the analysis of Vilnius weather using tensorflow. 

The main aim of this analysis is to try to create a deep learning model to forecast the various weather attributes. 

# Data 

The data was obtained from the API via https://openweathermap.org/api. The data is hourly and spans from 1990.01.01 up untill 2020.11.30. 

# Starting the virtual environment

The creation of the virtual environment and the installation of all the necesary packages is done using anaconda. The commands: 

```
conda create python=3.7 --name weather
conda activate weather
pip install -r requirements.txt
```

# Starting the jupyter notebook 

The jupyter instance is created using Docker. To start the jupyter server on your local machine use the commands (the bellow works in Ubuntu):


```
sudo docker-compose build 
sudo docker-compose up 
```