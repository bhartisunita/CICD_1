# Dockerfile - simple Python web server (run as module)
FROM python:3.11-slim

WORKDIR /app

# Install runtime deps
COPY requirements.txt ./
RUN python -m pip install --upgrade pip && pip install --no-cache-dir -r requirements.txt

# Copy app code
COPY src/ ./src

# Run the app as a module so package imports work
CMD [ "python", "-u", "-m", "src.app" ]
