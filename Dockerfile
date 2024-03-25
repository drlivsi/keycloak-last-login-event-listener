FROM gradle:latest

# Install dos2unix
RUN apt-get update \
    && apt-get install -y dos2unix \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY gradlew .
COPY gradle ./gradle

COPY . .

RUN dos2unix ./gradlew
RUN ./gradlew build