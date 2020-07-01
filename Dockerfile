# The image is built on top of one that has node preinstalled
FROM node:12

# Create app directory
# WORKDIR /app
# Create app directory
WORKDIR /usr/src/app

# Copy all files into the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Open appropriate port 
EXPOSE 8080

COPY . .

# Start the application
CMD ["npm", "start"]