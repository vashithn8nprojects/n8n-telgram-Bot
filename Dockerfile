FROM n8nio/n8n:latest

# Set working directory
WORKDIR /home/node

# Set environment variables
ENV N8N_PORT=5678
ENV N8N_PROTOCOL=https
ENV N8N_ENCRYPTION_KEY=change-this-to-random-string
ENV EXECUTIONS_DATA_SAVE_ON_ERROR=all
ENV EXECUTIONS_DATA_SAVE_ON_SUCCESS=all
ENV EXECUTIONS_DATA_SAVE_MANUAL_EXECUTIONS=true

# Create workflows directory
RUN mkdir -p /home/node/.n8n/workflows

# Expose port
EXPOSE 5678

# Health check
HEALTHCHECK --interval=30s --timeout=10s --start-period=60s \
  CMD wget --quiet --tries=1 --spider http://localhost:5678/healthz || exit 1

# Start n8n
CMD  n8n


