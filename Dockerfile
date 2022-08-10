FROM python:3.8

WORKDIR /app/boefjes

COPY nl-kat-boefjes/requirements-dev.txt .
RUN pip install -r requirements-dev.txt

RUN git clone -C /app https://github.com/minvws/nl-kat-octopoes octopoes && pip3 install /app/octopoes

COPY nl-kat-boefjes/ .
RUN find . -name 'requirements.txt' -execdir pip install -r {} \;
