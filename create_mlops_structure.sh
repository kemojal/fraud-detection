#!/bin/bash

# Create the main project directory
mkdir -p fraud-detection-mlops

# Navigate into the project directory
cd fraud-detection-mlops || exit

# Create data directories
mkdir -p data/raw

# Create notebooks directory with EDA notebook
mkdir -p notebooks
touch notebooks/eda.ipynb

# Create src directory structure
mkdir -p src/training
touch src/training/train.py

mkdir -p src/inference
touch src/inference/app.py
# model.joblib will be generated later

mkdir -p src/utils

# Create docker directory
mkdir -p docker
touch docker/inference.Dockerfile

# Create k8s directory
mkdir -p k8s
touch k8s/deployment.yaml
touch k8s/service.yaml

# Create monitoring directory
mkdir -p monitoring
touch monitoring/prometheus.yaml
mkdir -p monitoring/grafana-config

# Create GitHub workflows directory
mkdir -p .github/workflows
touch .github/workflows/ci-cd.yml

# Create other files
mkdir mlruns
touch README.md
touch requirements.txt

echo "Folder structure for fraud-detection-mlops created successfully!"