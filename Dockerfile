# backend/Dockerfile
FROM node:18-alpine

# Set the working directory for the backend
WORKDIR /app

# Copy package.json and yarn.lock for better caching
COPY package.json yarn.lock ./

# Install dependencies using yarn
RUN yarn install

# Copy the backend application code into the container
COPY . .

# Expose the necessary port (adjust if needed)
EXPOSE 5000

# Run the backend using `yarn dev` as specified
CMD ["yarn", "dev"]