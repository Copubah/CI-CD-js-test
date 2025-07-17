# Use official Node.js base image
FROM node:18

# Create app directory
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the app
COPY . .

# Run tests (optional for local build)
# RUN npm test

# Default command
CMD ["node"]
