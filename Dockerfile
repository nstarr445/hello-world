FROM redhat/ubi8

# Install make
RUN dnf install -y make

# Set the working directory
WORKDIR /app

# Copy the contents of the local app directory to the container
COPY . /app

# Your additional Dockerfile configuration goes here
