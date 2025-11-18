# // base image
FROM node:latest 

# Install nodemon globally
RUN npm install -g nodemon

# Working directory in container
WORKDIR /app

# COPY source dest // source means your local path, dest means the path in the container
COPY . .

# Download all dependencies which are defined in package.json
RUN npm install

# Expose port 3000 must be same as the port your app is running on
EXPOSE 3000

# Run the app node / mn index.js ki file run krna hai
CMD ["npm", "start"]