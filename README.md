
# 🛡️ DevSecOps Demo – Hands-On Deployment

This repository is a fork/follow-along of [Abhishek Veeramalla's DevSecOps Demo](https://github.com/iam-veeramalla/devsecops-demo), designed to help understand and implement security practices within a DevOps pipeline.

I am using this project to **learn DevSecOps** by deploying a secure Tic Tac Toe web application with full CI/CD and security scanning integrated.

---

## 🎯 Objectives

- Deploy a sample app (Tic Tac Toe) using Docker & Kubernetes
- Set up CI/CD with GitHub Actions
- Integrate DevSecOps tools like Trivy, KubeSec, ESLint, npm audit
- Learn how to scan source code, containers, and Kubernetes manifests for vulnerabilities
- Practice infrastructure automation and secure delivery

---

## 🔧 Tech Stack

| Area            | Tools & Tech                 |
|------------------|------------------------------|
| App Frontend     | TypeScript, Tailwind, Vite   |
| Containerization | Docker                       |
| Orchestration    | Kubernetes (local or cloud)  |
| CI/CD            | GitHub Actions               |
| Security         | ESLint, Trivy, npm audit, KubeSec |

---

## 🚀 Setup Instructions (For Local Deployment)

### ✅ Prerequisites

- [Node.js](https://nodejs.org/)
- [Docker](https://www.docker.com/)
- [Kubernetes CLI (kubectl)](https://kubernetes.io/docs/tasks/tools/)
- [Minikube](https://minikube.sigs.k8s.io/docs/) or [Kind](https://kind.sigs.k8s.io/)
- GitHub account for triggering CI/CD workflows

---

### 📦 Installation & Local Run

```bash
# 1. Clone the repo
git clone https://github.com/<your-username>/devsecops-demo.git
cd devsecops-demo

# 2. Install dependencies
npm install

# 3. Run the app locally
npm run dev
```

---

### 🐳 Docker Build & Run

```bash
# Build Docker image
docker build -t devsecops-demo .

# Run the container locally
docker run -p 3000:3000 devsecops-demo
```

---

### ☸️ Kubernetes Deployment

```bash
# Start your local Kubernetes cluster (example with Minikube)
minikube start

# Apply deployment files
kubectl apply -f kubernetes/

# Verify pods/services
kubectl get pods
kubectl get svc
```

---

## 🔁 CI/CD Pipeline (GitHub Actions)

The workflow includes:

- Linting with ESLint
- Dependency scan with `npm audit`
- Docker image scan with Trivy
- Kubernetes manifest scan with KubeSec
- Secret detection with GitHub Advanced Security

Workflows are defined in `.github/workflows/devsecops.yaml`.

---

## 💡 Notes (Personal Progress)

- ✅ Successfully ran app locally with `npm run dev`
- ✅ Built Docker image and ran container
- 🔄 Working on deploying to Minikube & verifying pods
- ⏳ Next: Debugging CI pipeline triggers on push

---

## 📚 Reference

- [Abhishek Veeramalla's YouTube Channel](https://www.youtube.com/@AbhishekVeeramalla)
- [Original GitHub Repository](https://github.com/iam-veeramalla/devsecops-demo)
