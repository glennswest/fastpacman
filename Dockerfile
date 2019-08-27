FROM mcr.microsoft.com/windows/nanoserver:10.0.17763.678
MAINTAINER Glenn West <gwest@redhat.com>

RUN mkdir c:\app
WORKDIR c:\\app
COPY winpacman/winpacman.exe /app/winpacman.exe
COPY public/ /app/pulbic

EXPOSE 8080

CMD [ "/app/winpacman.exe"]
