FROM timbru31/java-node:8-slim@sha256:6cad8b3a7e744baf7b741a32ffb93d437c3bac533137d3af7237eddccd728ddc

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

RUN apt-get update -qq \
 && apt-get install -qq --no-install-recommends git \
 && apt-get install -qq --no-install-recommends wget \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*
