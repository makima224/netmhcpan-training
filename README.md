NetMHCpan Training
A pipeline for pan-prediction of peptide-MHC binding using deep learning tools and Nextflow.

This repository demonstrates how to run NetMHCpan-4.2 for MHC class I predictions locally in Docker and with Nextflow.

🚀 Prerequisites

Docker installed
Java (for Nextflow)
Nextflow (will be installed locally)


NetMHCpan-4.2 binary (Linux ARM64) downloaded from the DTU Bioinformatics website

🐳 Build the Docker Image

# Build the Docker image for MHC Class I
docker build --no-cache -t mhc-class1 .

This image includes all dependencies such as tcsh, gawk, perl, and Python packages (biopython, pandas, numpy).

⚡ Install Nextflow Locally
# Download and install Nextflow
curl -s https://get.nextflow.io | bash

chmod +x nextflow

# Move to a directory in your PATH
mkdir -p $HOME/.local/bin/

mv nextflow $HOME/.local/bin/

Make sure you have a recent Java version installed.

🧪 Run the Affinity Pipeline
# Run the affinity prediction pipeline using Nextflow
nextflow run affinity.nf


The pipeline will execute mhc.py inside the Docker container mhc-class1 and produce results in the results/ folder.

📂 Folder Structure
netmhcpan-training/

├── Dockerfile

├── affinity.nf

├── mhc.py

├── netMHCpan-4.2/

└── results/
Dockerfile → Builds the container with all dependencies
affinity.nf → Nextflow pipeline
mhc.py → Python script for running NetMHCpan
results/ → Output folder
