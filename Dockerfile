FROM microsoft/windowsservercore

# Install AutoIt
ARG AUTOIT_VERSION=3.3.14.5
ADD https://www.autoitscript.com/autoit3/files/archive/autoit/autoit-v${AUTOIT_VERSION}.zip /autoit.zip

# Adds Aut2Exe.exe to the PATH
COPY ./autoit-setup.ps1 /autoit-setup.ps1
RUN powershell -Command C:\autoit-setup.ps1

# Run cmd prompt by default
CMD [ "cmd" ]
