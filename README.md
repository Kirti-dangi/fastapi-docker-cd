# FastAPI Docker Project

This is a simple FastAPI app. It runs inside Docker. When I push code to GitHub, it builds the Docker image and uploads it to Docker Hub.

## How to Run on My Computer

1. Install Python
2. Open Terminal or CMD
3. Run:
   pip install -r requirements.txt
4. Then:
   uvicorn main:app --reload
5. Go to:
   http://localhost:8000

## How to Run with Docker

1. Build the Docker image:
   docker build -t myusername/fastapi-app .
2. Run the container:
   docker run -p 8000:8000 myusername/fastapi-app
3. Go to:
   http://localhost:8000

## What GitHub Does Automatically

1. When I push code to GitHub,
2. It logs into Docker Hub using my secret token,
3. Builds my Docker image,
4. Sends it to Docker Hub.

## How I Set the Docker Token

1. Go to Docker Hub → Account Settings → Security
2. Click “New Access Token”
3. Copy the token
4. Go to GitHub → My Repository → Settings → Secrets → Actions
5. Add new secret: Name = DOCKERTOKEN, Value = (Paste the token)
