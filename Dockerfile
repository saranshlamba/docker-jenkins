FROM microsoft/dotnet-framework
RUN powershell.exe -command New-Item -ItemType Directory -Path c:/temp
ADD startup.ps1 C:/temp/
RUN powershell.exe -command \
    iex ((new-object net.webclient).DownloadString('https://chocolatey.org/installabsolutelatest.ps1')); \
    choco install jdk8 -y; \
    choco install jenkins -y; \
    choco install git -y;
EXPOSE 8080
EXPOSE 50000
#RUN powershell.exe -executionpolicy bypass c:\temp\startup.ps1
#CMD ping localhost -t
    