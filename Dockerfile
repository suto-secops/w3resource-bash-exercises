FROM debian:bookworm-slim

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends \
        bash \
        coreutils \
        findutils \
        grep \
        sed \
        gawk \
        tar \
        gzip \
        bzip2 \
        diffutils \
        file \
        tree \
        ncurses-bin \
        man-db \
        manpages \
        bc \
        procps \
        psmisc \
        util-linux \
        less \
        nano \
        ca-certificates \
        curl \
        netcat-openbsd \
        iproute2 \
        net-tools \
        iputils-ping \
        dnsutils \
        hostname \
        zip \
        unzip \
        wamerican \
        sudo \
    && rm -rf /var/lib/apt/lists/* \
    && touch /.exercise-container

# uid 1000 so files created via the bind mount land owned by the host user,
# not root.
RUN useradd -m -u 1000 -s /bin/bash student \
    && echo "student ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/student \
    && chmod 440 /etc/sudoers.d/student

WORKDIR /home/student/workspace
USER student

CMD ["/bin/bash"]
