# // base image
FROM node:latest 

# COPY source dest // source means your local path, dest means the path in the container
COPY . .

# Download all dependencies which are defined in package.json
Run npm install

# Expose port 3000 must be same as the port your app is running on
EXPOSE 3000

# Run the app node / mn index.js ki file run krna hai
CMD ["node", "index.js"]