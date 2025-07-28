FROM python:3.11-slim

WORKDIR /app

# Copy requirements from backend directory
COPY backend/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy all backend files to the working directory
COPY backend/ .

# Expose the Flask server port
EXPOSE 5001

# Default command
CMD ["python", "agent.py", "start"]
