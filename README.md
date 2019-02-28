# epics-tools

#### IOC build instructions

In a terminal session, run the following commands in order:

    cd ~/build-epics
    chmod u+w .
    chmod -R u+w .git
    chmod -R u+w testapp
    git pull
    ./build-testapp.sh

This will build the IOC in the `testapp` directory. It can be run using:

    cd ~/build-epics/testapp/iocBoot/iocimage
	./st.cmd

#### Loading new displays

In a terminal session, run the following commands in order:

    cd ~/epics-tools
	git pull

#### Presentation locations

The talks are available at:

https://drive.google.com/drive/folders/1LwTfWfS5ybtEzy9DJhW1n72KCgQCH7fY

The training image can be downloaded from

https://drive.google.com/open?id=0Bxrrhhn0aTLWNVdHb3gxN1B4VDg


#### Accounts

regular user  
username: train  
password: train  

root user  
password: root  

#### directory structure

**~/build-epics**  
Contains epics 7 and associated modules

**~/epics-tools**  
Contains epics services, epics client tools, and supporting libraries

#### Tools

cs-studio/phoebus  
```>> phoebus```
