FROM golang:1.12.1 as buildando

WORKDIR /app
ADD . /app

RUN go build -o ola
ENTRYPOINT ./ola


FROM alpine
WORKDIR /app
COPY --from=buildando /app/ola /app/

ENTRYPOINT ./ola


# Para rodar
#  docker image build -t ola .
#  docker image run -it ola 
