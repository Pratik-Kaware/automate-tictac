🎯 Objectives

    Deploy a sample app (Tic Tac Toe) using Docker & Kubernetes

    Set up CI/CD with GitHub Actions

    Integrate DevSecOps tools like Trivy, KubeSec, ESLint, npm audit

    Learn how to scan source code, containers, and Kubernetes manifests for vulnerabilities

    Practice infrastructure automation and secure delivery

🔧 Tech Stack
Area	Tools & Tech
App Frontend	TypeScript, Tailwind, Vite
Containerization	Docker
Orchestration	Kubernetes (local or cloud)
CI/CD	GitHub Actions
Security	ESLint, Trivy, npm audit, KubeSec
🚀 Setup Instructions (For Local Deployment)
✅ Prerequisites

    Node.js

    Docker

    Kubernetes CLI (kubectl)

    Minikube or Kind

    GitHub account for triggering CI/CD workflows

📦 Installation & Local Run

# 1. Clone the repo
git clone https://github.com/<your-username>/devsecops-demo.git
cd devsecops-demo

# 2. Install dependencies
npm install

# 3. Run the app locally
npm run dev

🐳 Docker Build & Run

# Build Docker image
docker build -t devsecops-demo .

# Run the container locally
docker run -p 3000:3000 devsecops-demo

☸️ Kubernetes Deployment

# Start your local Kubernetes cluster (example with Minikube)
minikube start

# Apply deployment files
kubectl apply -f kubernetes/

# Verify pods/services
kubectl get pods
kubectl get svc

🔁 CI/CD Pipeline (GitHub Actions)

The workflow includes:

    Linting with ESLint

    Dependency scan with npm audit

    Docker image scan with Trivy

    Kubernetes manifest scan with KubeSec

    Secret detection with GitHub Advanced Security

Workflows are defined in .github/workflows/devsecops.yaml.
