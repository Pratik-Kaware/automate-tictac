#adding an alias for multistage build
FROM node:24-alpine AS build

# set working directory
WORKDIR /app

# copy package.json
COPY package*.json ./

# install dependencies
RUN npm ci 

# copy source files 
COPY . .

# BUILD TRHE APPLICATION
RUN npm run build 

# start a new stage from the nginx image 
FROM nginx:alpine
# copy the build files from the previous stage
COPY --from=build /app/dist /usr/share/nginx/html
# # copy the nginx config file
# COPY nginx.conf /etc/nginx/conf.d/default.config
EXPOSE 80
# start nginx server
CMD ["nginx", "-g", "daemon off;"]

# This Dockerfile builds a Node.js application and serves it using Nginx.
# It uses a multi-stage build to keep the final image size small.