# Use an official Node.js runtime as a parent image
FROM node:16

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the rest of your application's source code to the container
COPY . .

# Build your React app
RUN npm run build

# Expose the port your app will run on
EXPOSE 8000

# Define the command to run your app
CMD ["npm", "start"]
