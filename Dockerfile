FROM ubuntu:14.04

# Avoid prompts during installs.
ENV DEBIAN_FRONTEND=noninteractive

# Update package lists and install pkgs.
RUN apt update && apt upgrade -y && \
    apt install -y gcc python git patchutils

CMD ["/bin/bash"]