FROM debian:bullseye

ENV DEBIAN_FRONTEND=noninteractive

# Instala pacotes essenciais para build e testes
RUN apt-get update && apt-get install -y \
  vim \
  curl \
  wget \
  net-tools \
  iputils-ping \
  dnsutils \
  build-essential \
  unixodbc \
  unixodbc-dev \
  odbc-postgresql \
  libpq-dev \
  libssl-dev \
  libjansson-dev \
  libxml2-dev \
  libedit-dev \
  git \
  && apt-get clean

# Cria ponto de entrada interativo
CMD ["/bin/bash"]

