#DockerFile

FROM python:3.11-slim

RUN apt-get update && apt-get install -y \
    gcc \
    g++ \
    libffi-dev \
    libssl-dev \
    build-essential \
    curl \
    && rm -rf /var/lib/apt/lists/*

#set environment variables
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONBUFFERED=1

#set working directory

WORKDIR /app

#requirements file
COPY requirements.txt .

#install dependencies
RUN pip install --no-cache-dir -r requirements.txt


#copy the application code
COPY . .

#Expose the application port
EXPOSE 8000

#run the app

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
