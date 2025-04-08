# Fraud Detection ML System

A real-time machine learning inference and monitoring system for credit card fraud detection.

## 🧠 Project Overview

This project implements an end-to-end machine learning system for real-time credit card fraud detection. It provides a production-ready architecture that includes model training, deployment, serving, monitoring, and continuous integration.

## ✨ Features

- **Real-time inference** with FastAPI
- **Model monitoring** with Prometheus and Grafana
- **Experiment tracking** with MLflow
- **Containerized deployment** with Docker
- **Orchestration** with Kubernetes
- **CI/CD pipeline** with GitHub Actions

## 🏗️ Architecture

### Tech Stack

- **ML Framework**: scikit-learn/PyTorch
- **API Framework**: FastAPI
- **Containerization**: Docker
- **Orchestration**: Kubernetes (GCP/GKE)
- **Monitoring**: Prometheus + Grafana
- **Experiment Tracking**: MLflow
- **CI/CD**: GitHub Actions
- **Infrastructure as Code**: Terraform/Pulumi (optional)

### Project Structure

```
fraud-detection/
├── data/                # Data files (raw data, processed data)
├── notebooks/           # Jupyter notebooks for exploration and analysis
├── src/                 # Source code
│   ├── training/        # Model training code
│   ├── inference/       # Model serving code
│   └── utils/           # Utility functions
├── docker/              # Docker configuration
├── k8s/                 # Kubernetes manifests
├── monitoring/          # Monitoring configuration
│   ├── grafana-config/  # Grafana dashboards
│   └── prometheus.yaml  # Prometheus configuration
├── mlruns/              # MLflow tracking
└── requirements.txt     # Python dependencies
```

## 🚀 Getting Started

### Prerequisites

- Python 3.8+
- Docker
- Kubernetes cluster (for production deployment)

### Installation

1. Clone the repository

```bash
git clone https://github.com/username/fraud-detection.git
cd fraud-detection
```

2. Install dependencies

```bash
pip install -r requirements.txt
```

### Training the Model

```bash
python src/training/train.py
```

### Running the API Locally

```bash
uvicorn src.inference.app:app --reload
```

### Deployment

#### Docker

```bash
docker build -f docker/inference.Dockerfile -t fraud-detection:latest .
docker run -p 8000:8000 fraud-detection:latest
```

#### Kubernetes

```bash
kubectl apply -f k8s/deployment.yaml
kubectl apply -f k8s/service.yaml
```

## 📊 Monitoring

Access monitoring dashboards:

- Prometheus: http://localhost:9090
- Grafana: http://localhost:3000

## 🔄 CI/CD

The project includes GitHub Actions workflows for:

- Automated testing
- Model evaluation
- Docker image building
- Deployment to Kubernetes

## 📝 License

[MIT License](LICENSE)
