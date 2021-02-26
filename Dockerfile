# Set image from base on offical node lts alpine
ARG VERSION=lts-alpine
FROM node:$VERSION

# Set label maintainer, version & description
LABEL maintainer="danangekal@gmail.com"
LABEL version="0.1.0"
LABEL description="Unofficial Next.js + Typescript + PWA starter with a latest package"

# Set working directory
WORKDIR /app

# Copy all files
COPY . .

# Install dependencies
RUN yarn install --frozen-lockfile

# Build app
RUN yarn build

# Expose the listening port
EXPOSE 3000

# Run yarb start script when container starts
CMD yarn start
