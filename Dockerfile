ARG IMAGE=containers.intersystems.com/intersystems/irishealth-community:2021.1.0.215.0
#ARG IMAGE=store/intersystems/irishealth-community:2020.3.0.221.0
ARG IMAGE=intersystemsdc/irishealth-community

FROM $IMAGE

USER root

RUN mkdir /opt/app && chown irisowner:irisowner /opt/app

USER irisowner

WORKDIR /opt/app

COPY ./Installer.cls ./
COPY ./iris.script ./
COPY ./src ./src/
COPY ./shared ./shared/

# run iris and initial 
RUN iris start IRIS \
    && iris session IRIS < iris.script \
    && iris stop IRIS quietly
