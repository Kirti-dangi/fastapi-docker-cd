# Use Ubuntu as base
FROM ubuntu:20.04

# Avoid interactive prompts
ENV DEBIAN_FRONTEND=noninteractive

# Install Python and pip
RUN apt update && apt install -y python3 python3-pip

# Create a working directory
WORKDIR /app

# Copy files
COPY . /app

# Install dependencies
RUN pip3 install --no-cache-dir -r requirements.txt

# Expose port
EXPOSE 8000

# Run FastAPI with Uvicorn
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
