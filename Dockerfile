FROM n8nio/n8n:latest

USER root

RUN apk add --no-cache ffmpeg

# Run as root to avoid volume permission issues on Railway
ENV N8N_USER_FOLDER=/data
WORKDIR /data

EXPOSE 5678

# Use absolute path to n8n
CMD ["/usr/local/bin/n8n", "start"]
