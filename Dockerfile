FROM n8nio/n8n:latest

# Set working directory
WORKDIR /home/node

# Environment variables
ENV N8N_PORT=5678
ENV N8N_PROTOCOL=https
ENV N8N_HOST=n8n-telegram-bot-1.onrender.com
ENV EXECUTIONS_DATA_SAVE_ON_ERROR=all
ENV EXECUTIONS_DATA_SAVE_ON_SUCCESS=all
ENV EXECUTIONS_DATA_SAVE_MANUAL_EXECUTIONS=true
ENV N8N_METRICS=false

# Expose port
EXPOSE 5678

# Start n8n
CMD n8n start
