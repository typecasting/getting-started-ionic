# Use an official Python runtime as a parent image
FROM circleci/node:latest

# Set the working directory to /app
WORKDIR ~/app

# Copy the current directory contents into the container at /app
ADD . ~/app

# Install any needed packages specified in requirements.txt
RUN sudo npm install -g cordova ionic

# Make port 80 available to the world outside this container
EXPOSE 80

# Define environment variable
ENV NAME World

#CMD ["ionic", "serve"]
