FROM --platform=linux/amd64 debian:bookworm-slim

RUN apt-get update && apt-get install unzip openssl ca-certificates -y
COPY ./jupiter-swap-api ./jupiter-swap-api
RUN chmod +x jupiter-swap-api

ENV RUST_LOG=debug

CMD ["./jupiter-swap-api --rpc-url https://solana-mainnet.g.alchemy.com/v2/HDr7q2-W0P_Vx9oJ71EU4bw6fnW9YsoF"]