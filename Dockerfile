FROM node:16.3.0-alpine

WORKDIR /app
COPY . /app

# RUN nvm install 16.0.0
# RUN node --version
# RUN npm --version

RUN npm install -g appcenter-cli

RUN chmod +x /app/entrypoint.sh

ENTRYPOINT [ "/app/entrypoint.sh" ]

