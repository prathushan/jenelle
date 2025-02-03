# Use official Node.js image as base
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json first to leverage Docker caching
COPY package.json package-lock.json ./

# Install dependencies
RUN npm install

# Copy the entire project to the container
COPY . .

# Expose the React development server port
EXPOSE 3000

# Start the React development server
CMD ["npm", "start"]