FROM n8nio/n8n:latest

USER root

RUN apk add --no-cache ffmpeg

# Fix volume permissions and set user back to node for security
# but keep root for now if needed.
# Actually, the base image expects to run as node.
# We'll use the default entrypoint.

ENV N8N_USER_FOLDER=/data

EXPOSE 5678
