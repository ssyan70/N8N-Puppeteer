# Start from the official N8N image
FROM docker.n8n.io/n8nio/n8n:latest

# Install system dependencies for Puppeteer/Chromium
RUN sudo apt-get update && \
    sudo apt-get install -y \
    ca-certificates \
    fonts-liberation \
    libasound2 \
    libatk1.0-0 \
    libcairo2 \
    libgbm-dev \  # Required for headless Chrome
    libnss3 \
    libx11-6 \
    libxcomposite1 \
    libxdamage1 \
    libxext6 \
    libxfixes3 \
    libxrandr2 \
    libxshmfence1 \
    wget \
    xdg-utils && \
    sudo rm -rf /var/lib/apt/lists/*

# Install Puppeteer via npm
RUN npm install puppeteer
