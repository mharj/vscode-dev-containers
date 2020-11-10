ARG VARIANT="focal"
FROM ubuntu:${VARIANT}
ENV DEBIAN_FRONTEND=noninteractive
ARG USERNAME=vscode
ARG USER_UID=1000
ARG USER_GID=$USER_UID

RUN apt-get update && \
    apt-get install -y git python sudo curl apt-transport-https software-properties-common lsb-release ca-certificates unzip  && \
    echo "# git prompt\nif [ -e /etc/bash_completion.d/git-prompt ]; then\n\tsource /etc/bash_completion.d/git-prompt\nfi" >> /etc/skel/.bashrc && \
    echo "# git prompt enable\nif [ -e ~/.bash_git_prompt.sh ]; then\n\tsource ~/.bash_git_prompt.sh\nfi" >> /etc/skel/.bashrc && \
    groupadd --gid $USER_GID $USERNAME && \
    useradd --uid $USER_UID --gid $USER_GID -m $USERNAME && \
    echo $USERNAME ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/$USERNAME && \
    curl -L https://aka.ms/downloadazcopy-v10-linux -o /tmp/azcopy.tar.gz && \
    cd /tmp/ && \
    tar xvfz /tmp/azcopy.tar.gz && \
    cp /tmp/azcopy_linux_amd64_*/azcopy /usr/bin && \
    chmod 755 /usr/bin/azcopy && \
    chmod 0440 /etc/sudoers.d/$USERNAME && \
    apt-get clean -y && rm -rf /var/lib/apt/lists/* /tmp/azcopy*
