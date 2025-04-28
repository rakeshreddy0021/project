# Docker Apache Server Project

## Description
This project demonstrates how to set up an Apache web server inside a Docker container using an Ubuntu base image.

## Dockerfile Explanation

1. **FROM ubuntu:latest**
   - Uses the latest Ubuntu image as the base for the Docker container.

2. **RUN apt-get update && apt-get install -y apache2**
   - Updates the package list and installs the Apache web server.

3. **EXPOSE 80**
   - Exposes port 80 so that the Apache server can receive HTTP requests.

4. **ENTRYPOINT ["apachectl", "-D", "FOREGROUND"]**
   - Runs the Apache server in the foreground, ensuring the container doesn't exit immediately.

## Commands

### Build the Docker Image
To build the Docker image from the Dockerfile:
```bash
docker build -t ubuntu_apache .
```

### Run the Docker Container
To run the container in detached mode:
```bash
docker run -d -p 81:80 -v C:/path/to/sample.html:/var/www/html/index.html --name myapache ubuntu_apache
```
- **-d**: Run the container in detached mode (background).
- **-p 81:80**: Map port 81 on the host to port 80 on the container.
- **-v C:/path/to/sample.html:/var/www/html/index.html**: Mount a custom `sample.html` file from your system into the container.

### Verify the Container
To check if the container is running:
```bash
docker ps
```

### View Logs
To view the logs of the running container:
```bash
docker logs myapache
```

### Stop the Container
To stop the container:
```bash
docker stop myapache
```

## Additional Notes
- Make sure to replace `C:/path/to/sample.html` with the actual path to your HTML file.
- The container will serve the `index.html` page you provide on port 81 of your host machine.

## License
This project is open-source and available for use.
