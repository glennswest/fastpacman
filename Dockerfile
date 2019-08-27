FROM mcr.microsoft.com/windows/nanoserver:10.0.17763.678
MAINTAINER Glenn West <gwest@redhat.com>

# copy nodejs to nanoserver
RUN mkdir c:/app
WORKDIR c:/app
COPY winpacman.exe /app/winpacman.exe
COPY public/ /app/pulbic

EXPOSE 8080

CMD [ "/app/winpacman.exe"]
