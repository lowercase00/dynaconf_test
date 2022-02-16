# Use the Python
FROM python:3.9-slim-buster

# Set the working directory to /app
WORKDIR /app

# Copy env file
COPY requirements.txt .

# Install requirements
RUN apt-get update  && \
    apt-get install python3-dev -y && \
    apt-get install gcc -y && \
    apt-get install libc-dev -y && \
    apt-get install libpq-dev -y && \
    pip install --no-cache-dir --upgrade pip && \
    rm -rf /var/lib/apt/lists/* && \
    python3 -m venv .venv && \
    /bin/bash -c "source .venv/bin/activate" && \
    pip3 install -r requirements.txt

# Copy the current directory contents into the container at /app 
ADD . /app

# Copy env file
# COPY .env /app/.env
EXPOSE 5000

# run the command to start uWSGI
CMD ["uwsgi", "app.ini"]