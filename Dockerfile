# Use the latest Alpine-based Nginx image for static hosting
FROM nginx:1.27-alpine

# Ensure Alpine packages are at their latest patched versions
RUN apk upgrade --no-cache

# Copy static assets into the web root with proper ownership
COPY --chown=nginx:nginx huxorder.html index.html /usr/share/nginx/html/
COPY --chown=nginx:nginx Assets/ /usr/share/nginx/html/assets/

# Expose HTTP port for local runs or cloud deployment
EXPOSE 80

# Run Nginx using the unprivileged user already defined in the base image
USER nginx
