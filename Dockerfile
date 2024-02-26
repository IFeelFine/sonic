# Use the latest version of Alpine Linux as the base image
# Update version number and rebuild when necessary

ARG  OS_VERSION=3.19
ARG  KC_VERSION=1.28.2
FROM --platform=$TARGETPLATFORM alpine:${OS_VERSION}

ARG BUILD_DATE
ARG VERSION
ENV PS1='[\[\e[38;5;46m\]\u\[\e[0m\]@\[\e[38;5;51m\]\h\[\e[0m\] \D{%m.%d.%y} \t] \[\e[38;5;147m\]\w\[\e[0m\] \\$ '

LABEL maintainer="imdebating"
LABEL build_version="ifeelfine.ca version:- ${VERSION} Build Date:- ${BUILD_DATE} Arch:- ${TARGETARCH}"

# Install Alpine packages: kubectl, OCI CLI, MySQL client, and network troubleshooting tools
RUN apk add --no-cache  \
      bash                \
      bind-tools          \
      ca-certificates     \
      core-utils					\
      curl                \
      ethtool             \
      iftop               \
      iperf               \
      iptables            \
      iputils             \
      jq                  \
      mysql-client        \
      mytop               \
      nano                \
      net-tools           \
      netcat-openbsd      \
      ngrep               \
      nmap                \
      openssl             \
      percona-toolkit     \
      strace              \
      sysstat             \
      tcpdump             \
      wget                \
      tzdata              

RUN curl -LO "https://storage.googleapis.com/kubernetes-release/release/${KC_VERSION}/bin/linux/${TARGETARCH}/kubectl" \
    && chmod +x kubectl \
    && mv kubectl /usr/local/bin/
  
# Copy the config files into the image
COPY kubeconfig /root/.kube/config
COPY bashrc /root/.bashrc

# Set entrypoint
CMD ["/entrypoint.sh"]
