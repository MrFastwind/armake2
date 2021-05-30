FROM rust

RUN apt update
RUN apt install -y libssl-dev

COPY ./ /armake2-src
WORKDIR /armake2-src
RUN cargo install --path .
CMD [ "armake2" ]