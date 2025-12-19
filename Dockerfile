FROM n8nio/n8n:latest

USER root

RUN apk add --no-cache ffmpeg

RUN mkdir -p /data && chown -R node:node /data

USER node

ENV N8N_USER_FOLDER=/data
WORKDIR /data

EXPOSE 5678

CMD ["n8n"]
