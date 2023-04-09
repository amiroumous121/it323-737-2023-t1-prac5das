# Use an official Node.js runtime as a parent image
FROM node:16-slim

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json into the container
COPY package*.json /app/

# Install any needed packages specified in package.json
RUN npm ci

# Copy the rest of the application code
COPY . /app

# Make port 3040 available to the world outside this container
EXPOSE 3040

# Run the application
CMD ["node", "amir.js"]
