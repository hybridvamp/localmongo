# Use the official MongoDB image as the base image
FROM mongo:latest

# Set environment variables
ENV MONGO_INITDB_ROOT_USERNAME=hybrid
ENV MONGO_INITDB_ROOT_PASSWORD=hybrid
ENV MONGO_INITDB_DATABASE=mydb

# Copy the script to print the connection string
COPY print-connection-string.sh /docker-entrypoint-initdb.d/
