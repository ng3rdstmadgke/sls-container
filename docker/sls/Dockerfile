FROM docker:20.10.12-dind
RUN printenv
RUN apk update && apk add --no-cache nodejs npm
RUN npm install -g serverless@3.7.9
RUN mkdir /opt/sls
WORKDIR /opt/sls
COPY . .
RUN npm install