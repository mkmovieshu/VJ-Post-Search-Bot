FROM python:3.10-slim

# Install required system packages
RUN apt-get update && apt-get install -y --no-install-recommends git && \
    rm -rf /var/lib/apt/lists/*

# Install Python dependencies
COPY requirements.txt /requirements.txt
RUN pip install --no-cache-dir -r /requirements.txt

# Copy all files
COPY . .

# Start web + bot
CMD ["bash", "-c", "gunicorn app:app & python main.py"]
