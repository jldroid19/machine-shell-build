FROM nginx

COPY ./book /usr/share/nginx/html

EXPOSE 80


# FROM nginx:1.21-alpine

# # Create a non-root user and give ownership of the app directory to them
# RUN addgroup -g 1001 -S appgroup && \
#     adduser -u 1001 -S appuser -G appgroup && \
#     chown -R appuser:appgroup /usr/share/nginx/html

# USER appuser

# COPY ./book /usr/share/nginx/html

# EXPOSE 80