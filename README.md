# 🧩 2048 Game — Deployed on Google Cloud Run (1-Tier Architecture)

A clone of the popular 2048 game, containerized with Docker and deployed serverlessly using **Google Cloud Run**. This project showcases modern **1-Tier architecture deployment** in cloud computing.

---

## 🎯 Project Objective

To demonstrate how a static web-based game can be containerized and deployed using **Google Cloud Platform (GCP)** with minimal infrastructure overhead using **Cloud Run**.

---

## 🌐 Live Demo

🟢 [Click here to play the game](https://my-2048-game-673426855384.us-central1.run.app)
---

## 🔧 Technologies Used

- **HTML, CSS, JavaScript** (for the game)
- **Docker** (for containerization)
- **Google Cloud Run** (for serverless deployment)
- **Google Container Registry** (to store Docker images)
- **Git & GitHub**

---

## 🏗️ Architecture Overview

User
│
▼
Cloud Run (Container with Frontend + Backend)
│
▼
Google Container Registry (stores image)



> ✅ Simple 1-tier: App is containerized and deployed as a single service.

---

## 🖥️ Run Locally

### 1. Clone the Repository

```
bash
 git clone https://github.com/anvesha09/2048-cloud-run.git
 cd 2048-cloud-run
```

### 2. Run the App Using a Local Server (for testing)

If you don't have live-server installed, run:
```
npm install -g live-server
```

Then start the server:
```
live-server
```

---
📦 Containerize the Application

#1. Create a Dockerfile

```
FROM nginx:alpine
COPY . /usr/share/nginx/html
```

#2. Build Docker Image

```
docker build -t 2048-game .
```

#3. Run Locally with Docker

```
docker run -d -p 8080:80 2048-game
```


☁️ Deploy to Google Cloud Run

#1. Authenticate and Set Project

```
gcloud auth login
gcloud config set project my-first-project-2084
```

#2.Enable Required APIs

```
gcloud services enable run.googleapis.com
gcloud services enable artifactregistry.googleapis.com
```

#3.Submit Build to Cloud Build

```
gcloud builds submit --tag gcr.io/my-first-project-2084/2048-game
```

#4.Deploy to Cloud Run

```
gcloud run deploy 2048-game \
  --image gcr.io/my-first-project-2084/2048-game \
  --platform managed \
  --region us-central1 \
  --allow-unauthenticated
```

---
👩‍💻 Contribution by Anvesha Tripathi
This cloud deployment and containerization were done by Anvesha Tripathi as part of a Cloud Computing project.
The goal was to implement real-world cloud deployment using 1-Tier Architecture and serverless principles on Google Cloud Platform.

---
📜 License
This project is based on the original 2048 game and is licensed under the MIT License.













