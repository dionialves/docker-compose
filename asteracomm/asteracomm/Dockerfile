FROM debian:bookworm-slim

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y wget gnupg2 ca-certificates vim openjdk-21-jdk && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY AsteraComm-current.jar .

EXPOSE 8090

CMD ["java", "-jar", "AsteraComm-current.jar"]

