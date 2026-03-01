FROM nginx:alpine

# Railway routes traffic to the port exposed by the container.
EXPOSE 8080

# Serve project files as static web assets.
COPY . /usr/share/nginx/html

# Override default site config to make the landing file the homepage.
COPY default.conf /etc/nginx/conf.d/default.conf
