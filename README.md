# docker-jenkins

To build image, browse to the directory
```
docker build -t jenkins .\docker-jenkins\
```

To run the container
```
docker run -d jenkins powershell.exe -command c:\temp\startup.ps1
```