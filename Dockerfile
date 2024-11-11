# Use a lightweight base image with Bash
FROM alpine:latest

# Install Bash
RUN apk add --no-cache bash

# Copy the script into the container
COPY script.sh /script.sh

# Give execution permissions to the script
RUN chmod +x /script.sh

# Set the default command to run the script
CMD ["/bin/bash", "/script.sh"]

