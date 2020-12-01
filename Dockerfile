# Selecting the base image 
FROM ubuntu:latest

# Configuring timezone
ENV TZ=Europe/Vilnius
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# Updating all the packages
RUN apt-get update && apt-get -y update

# Installing the essentials
RUN apt-get install -y apt-utils build-essential python3.7 python3-pip python3-dev graphviz

# Instaling pip 
RUN pip3 -q install pip --upgrade

# Instaling jupyter notebook
RUN pip install jupyter

# Creating a directory inside the container
WORKDIR /src 

# Copying everything to the container
COPY . .  

# Instaling the necessary requirements
RUN pip install -r requirements.txt 

# Running the jupyter notebook 
CMD ["jupyter", "notebook", "--port=8080", "--ip=0.0.0.0", "--allow-root"]