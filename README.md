# quickstarts-hl7  

Zack's ForkA stand-alone HL7 sample app built on InterSystems IRIS for Health and Docker  

Repo includes:   
	Dockerfile, docker-compose.yml, and Installer.cls to create container with HL7QS.Production in INTEROP namespace  
	/src with soruce files for HL7QS Production  
	/shared directory which acts as a volume between local machine and instance  

Requirements:  
	Docker command line  

To Run on Windows:  
```
	git clone https://github.com/intersystems/quickstarts-hl7  
	cd quickstarts-hl7  
	docker-compose up -d  
	cp shared\data\sample_data\ADT_A01.txt shared\data\registration\  
	start "http://localhost:52785/csp/sys/UtilHome.csp"  
```
To Run on Mac:  
```
	git clone https://github.com/intersystems/quickstarts-hl7  
	cd quickstarts-hl7  
	docker-compose up -d  
	cp shared/data/sample_data/ADT_A01.txt shared/data/registration/  
	xdg-open http://localhost:52785/csp/sys/UtilHome.csp  
```

open bugs:   
	-remove password expire from final container  
	-create role/user that's not SuperUser  
