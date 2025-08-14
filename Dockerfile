# Use official Node.js LTS image
FROM node:18

# Set working directory inside container
WORKDIR /app

# Copy package.json and install dependencies (if any)
COPY package*.json ./
RUN npm install

# Copy app source
COPY . .

# Expose port
EXPOSE 3000

# Command to run app
CMD ["npm", "start"]
