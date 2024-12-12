FROM ghcr.io/webassembly/wasi-sdk:wasi-sdk-25

RUN apt update && apt install -y curl nodejs npm && npm install -g n && n lts
