ARG ATLANTIS_VERSION=${ATLANTIS_VERSION:-v0.7.1}
FROM runatlantis/atlantis:$ATLANTIS_VERSION

ENV TERRAGRUNT_VERSION=0.17.4

RUN curl -sLo /usr/local/bin/terragrunt https://github.com/gruntwork-io/terragrunt/releases/download/v${TERRAGRUNT_VERSION}/terragrunt_linux_amd64 && \
        chmod +x /usr/local/bin/terragrunt