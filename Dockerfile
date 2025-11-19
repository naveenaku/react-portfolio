FROM node:18-alpine

WORKDIR /app

# Copy package.json and yarn.lock first for better caching
COPY package.json yarn.lock ./

# Install dependencies
RUN yarn install

# Copy project files
COPY . .

# Expose the React dev server port
EXPOSE 3000

# Start the development server
CMD ["yarn", "start"]


