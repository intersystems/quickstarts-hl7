# quickstarts-hl7  

## Summary
A stand-alone HL7 application built on InterSystems IRIS for Health and Docker. 
In five terminal commands, build an HL7 integration engine, send a sample message, and view the trace of routing and transformations.
Recommended for use with: https://learning.intersystems.com/course/view.php?name=HL7%20QS  
Contact InterSystems Learning Services Support with questions or feedback: online.training@intersystems.com 

## Repo Contents   
* Dockerfile, docker-compose.yml, and Installer.cls to create container with HL7QS.Production in INTEROP namespace  
* /src with source files for HL7QS Production  

* /shared directory which acts as a volume between local machine and IRIS container 
* /.vscode/settings.json for automatic server connections when opened in VS Code. 

## Requirements:  
* [Docker desktop]( https://www.docker.com/products/docker-desktop)
* Get the latest InterSystems IRIS for Health image for use in the Dockerfile: https://hub.docker.com/_/intersystems-iris-for-health  

## To Run on Windows (PowerShell):  
```
	git clone https://github.com/intersystems/quickstarts-hl7  
	cd quickstarts-hl7  
	docker-compose up -d  
	cp shared\data\sample_data\ADT_A01.txt shared\data\registration\  
	start explorer "http://localhost:52785/csp/interop/EnsPortal.ProductionConfig.zen?PRODUCTION=isclearning.HL7QS.Production&$NAMESPACE=INTROP" 
```
Log in with credentials: SuperUser | SYS

## To Run on macOS:  

```
	git clone https://github.com/intersystems/quickstarts-hl7  
	cd quickstarts-hl7  
	docker-compose up -d  
	cp shared/data/sample_data/ADT_A01.txt shared/data/registration/  
	open "http://localhost:52785/csp/interop/EnsPortal.ProductionConfig.zen?PRODUCTION=isclearning.HL7QS.Production&$NAMESPACE=INTEROP"  
```
Log in with credentials: SuperUser | SYS
