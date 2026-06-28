FROM ghcr.io/webassembly/wasi-sdk:wasi-sdk-32

RUN apt update && apt install -y curl nodejs npm jq && npm install -g n && n lts

RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- --default-toolchain none --profile minimal -y

ENV PATH="/opt/wasi-sdk/bin:/root/.cargo/bin:${PATH}"
