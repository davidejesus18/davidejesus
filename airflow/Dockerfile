from apache/airflow:2.4.2-python3.9
USER root
COPY oracle-instantclient19.17-basic-19.17.0.0.0-1.x86_64.rpm /tmp/oracle-instantclient19.17-basic-19.17.0.0.0-1.x86_64.rpm
COPY 10-250-7-210-chain.pem /tmp/10-250-7-210-chain.pem
RUN apt-get update
RUN apt-get install alien libaio1 libaio-dev -y
COPY ./requirements.txt /tmp/requirements.txt
RUN alien -i /tmp/oracle-instantclient19.17-basic-19.17.0.0.0-1.x86_64.rpm
USER airflow
RUN pip install --trusted-host pypi.org --trusted-host pypi.python.org --trusted-host files.pythonhosted.org --upgrade pip
RUN pip install --retries 3 -I --trusted-host pypi.org --trusted-host pypi.python.org --trusted-host files.pythonhosted.org -r "/tmp/requirements.txt"
