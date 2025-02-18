#python as parent image
From python:3.0-slim


# set working directory in the container 
WORKDIR /app
 
 
# copy requirement file into container 
COPY requirements.txt


# run requirments 
RUN pip install --no-cache-dir -r requirements.txt

# copy rest files of application

COPY . . 

#show port availbiity outside container 
EXPOSE 5000

# run the application 
CMD ["python", "app.py"]

