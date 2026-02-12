FROM n8nio/n8n:latest

USER root

WORKDIR /home/node

# Environment variables
ENV N8N_PORT=5678
ENV N8N_PROTOCOL=https
ENV EXECUTIONS_DATA_SAVE_ON_ERROR=all
ENV EXECUTIONS_DATA_SAVE_ON_SUCCESS=all

# Expose port
EXPOSE 5678

# Start n8n using the full path
ENTRYPOINT []
CMD /usr/local/bin/node, /usr/local/lib/node_modules/n8n/bin/n8n
