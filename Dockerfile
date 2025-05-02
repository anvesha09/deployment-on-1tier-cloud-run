# Use an official Node.js runtime as the base image
FROM node:18

# Set the working directory
WORKDIR /app

# Copy all files to the container
COPY . .

# Install any dependencies (if package.json exists)
RUN if [ -f package.json ]; then npm install; fi

# Expose the port (optional if it's a frontend game)
EXPOSE 8080

# Use a basic HTTP server to serve the game
RUN npm install -g http-server

# Start the HTTP server
CMD ["http-server", ".", "-p", "8080"]

