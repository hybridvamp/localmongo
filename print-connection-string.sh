#!/bin/bash

# Wait for MongoDB to be ready
until nc -z localhost 27017; do
  echo "Waiting for MongoDB to be ready..."
  sleep 1
done

# Print the connection string
echo "MongoDB Connection String:"
echo "mongodb://admin:admin123@localhost:27017/mydb"
