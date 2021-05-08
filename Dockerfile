# download Alpine docker image
FROM alpine
# install PHP in Alpine container
RUN apk add php
# create folder /app inside the container
WORKDIR /app
# copy source file into container's /app
COPY src/ /app
# php -f index.php -S 0.0.0.0:8080

# Use PHP
ENTRYPOINT ["php"]
# Pass args to php
CMD ["-f", "index.php", "-S", "0.0.0.0:8080"]
# Expose port 8080 inside container
EXPOSE 8080
