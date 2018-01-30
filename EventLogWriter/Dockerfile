# build image
FROM microsoft/dotnet-framework-build:3.5 AS build-env

WORKDIR /build

COPY . .

RUN msbuild.exe /t:Build /p:Configuration=Release

# runtime image
FROM microsoft/windowsservercore:1709

SHELL ["powershell"]

WORKDIR /app

COPY --from=build-env /build/bin/Release/EventLogWriter.exe /app/EventLogWriter.exe

