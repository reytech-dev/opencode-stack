FROM docker.io/vanjayak/open-design:latest

ARG OPENCODE_VERSION=1.17.13

ENV HOME="/app"
ENV NPM_CONFIG_PREFIX="${HOME}/.npm-global"
ENV NPM_CONFIG_CACHE="${HOME}/.npm-cache"
ENV PATH="${HOME}/.npm-global/bin:/app/.npm-global/lib/node_modules/opencode-linux-x64-baseline-musl/bin:${PATH}"
ENV OPENCODE_VERSION="${OPENCODE_VERSION}"

COPY opencode.json /app/.config/opencode/opencode.jsonc

RUN mkdir -p "${HOME}/.npm-global" "${HOME}/.npm-cache" && \
    npm install -g "opencode-linux-x64-baseline-musl@${OPENCODE_VERSION}"