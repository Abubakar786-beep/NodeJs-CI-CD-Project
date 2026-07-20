# Use official Node.js image
FROM node:22-alpine

# Set working directory
WORKDIR /app

# Copy package files first
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy remaining project files
COPY . .

# Expose application port
EXPOSE 8080

# Start the application
CMD ["node", "index.js"]
