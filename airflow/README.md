## Install Airflow with Oracle Client 19c and other libraries 
### Running airflow in docker with custom docker image

- 1 Make the clone of this respository 

- 2 Edit the "requirements.txt" with desired libraries  

- 3 Run this command 
##### docker build -t my/airflow:latest . 

- 4 Run docker-compose databases 
##### docker-compose up -d airflow-init

- After initialization is complete:
- ![image](https://user-images.githubusercontent.com/69523065/200425316-9f86db45-c865-42f9-8939-65af734190fb.png)


- 5 Run all services 
##### docker-compose up -d 

- 6 Verify all if all services are healthy 
##### docker ps 


##

### Reference:
##### https://airflow.apache.org/docs/apache-airflow/stable/howto/docker-compose/index.html





