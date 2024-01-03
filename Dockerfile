FROM python:3.12-bookworm

RUN mkdir /local-llm
WORKDIR /local-llm

RUN apt update
RUN apt install -y git make

RUN git clone https://github.com/ggerganov/llama.cpp
WORKDIR llama.cpp

ENV UNAME_M arm64
ENV UNAME_p arm
ENV LLAMA_NO_METAL 1
RUN make
