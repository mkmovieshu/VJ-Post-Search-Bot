FROM python:3.10-slim

# OS packages
RUN apt-get update \
    && apt-get install -y --no-install-recommends git \
    && rm -rf /var/lib/apt/lists/*

COPY requirements.txt /requirements.txt
RUN pip install --no-cache-dir -r /requirements.txt

# మిగతావన్ని నీ existing Dockerfile లో ఉన్నట్టు sameగా ఉంచు
# (COPY . ., CMD / ENTRYPOINT etc. అలాగే వదిలేయి)

