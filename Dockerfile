FROM node:16.3.0-slim

WORKDIR /app
COPY . /app

# RUN nvm install 16.0.0
# RUN node --version
# RUN npm --version
RUN apt-get update; apt-get install curl
RUN curl -sL https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.0/install.sh -o install_nvm.sh
RUN export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
RUN source ~/.bash_profile
RUN nvm --version

RUN npm install -g appcenter-cli

RUN chmod +x /app/entrypoint.sh

ENTRYPOINT [ "/app/entrypoint.sh" ]

