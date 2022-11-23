FROM tzenderman/docker-nvm:latest

WORKDIR /app
COPY . /app

COPY .nvmrc /code/.nvmrc

RUN npm install -g appcenter-cli \
    && apk update \
    && apk add git 

RUN chmod +x /app/entrypoint.sh

ENTRYPOINT [ "/app/entrypoint.sh" ]

