FROM node:alpine

EXPOSE 3002

RUN apk add --no-cache git -y \
    && git clone https://github.com/dinzawtani/Gigadrop
	
COPY entrypoint.sh Gigadrop

WORKDIR snapdrop

RUN npm install -g gulp bower  \
    && npm install  \
    && bower install --allow-root

CMD entrypoint.sh
