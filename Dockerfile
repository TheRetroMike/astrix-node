FROM ubuntu:18.04
RUN apt-get update -y
RUN apt-get install wget unzip -y
RUN apt-get install -y curl git build-essential libssl-dev pkg-config protobuf-compiler libprotobuf-dev clang-format clang-tidy clang-tools clang clangd libc++-dev libc++1 libc++abi-dev libc++abi1 libclang-dev libclang1 liblldb-dev libllvm-ocaml-dev libomp-dev libomp5 lld lldb llvm-dev llvm-runtime llvm python3-clang
WORKDIR /opt/
RUN wget https://github.com/astrix-network/astrix-node/releases/download/v0.14.1/astrix-node-v0.14.1-linux.zip
RUN unzip astrix-node-v0.14.1-linux.zip
RUN mv astrix-node/* /usr/bin/
CMD /usr/bin/astrixd
