FROM node:bullseye-slim

# Bundle app source
COPY . /app
WORKDIR /app

# Install app dependencies
COPY package*.json /app
RUN npm install

# Set the application port to 3000
ENV PORT = "3000"

# Run as non-root user 1001 - Bitnami helm chart requires user 1001
RUN groupmod -g 1001 node && usermod -u 1001 -g 1001 node
RUN chown -R node:node /app
USER node

# Start the application
CMD ["npm", "start"]