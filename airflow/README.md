## Install Airflow with Oracle Client 19c and other libraries 
### Running airflow in docker with custom docker image

- 1 Make the clone of this respository 

- 2 Edit the "requirements.txt" with desired libraries  

- 3 Run this command 
##### docker build -t my/airflow:latest . 

- 4 Run docker-compose databases 
##### docker-compose up -d airflow-init

- 5 Run all services 
##### docker-compose up -d 







