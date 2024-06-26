# Use the official Node.js image as the base image
FROM node:14

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose port 3000 (the port that the Node.js app will listen on)
EXPOSE 3000

# Define the command to run the Node.js app
CMD ["node", "index.js"]  
