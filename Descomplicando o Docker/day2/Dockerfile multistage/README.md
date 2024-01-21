#  Aula 



# Multistage

O multistage build (construção multietapa) é uma técnica no Docker que permite criar imagens mais leves e eficientes, removendo o excesso de dependências e artefatos utilizados durante o processo de compilação. Isso é feito em estágios (etapas) distintos dentro do mesmo Dockerfile, onde cada estágio representa um ambiente de construção separado.

A ideia principal por trás do multistage build é reduzir o tamanho da imagem final, eliminando a necessidade de incluir ferramentas de compilação, código-fonte e outros recursos usados apenas durante o processo de construção. A imagem resultante contém apenas os artefatos necessários para executar a aplicação ou serviço.

Aqui está um exemplo simples de um Dockerfile usando multistage build:

```Dockerfile
# Stage 1: Construir a aplicação
FROM golang:1.17 AS builder

WORKDIR /app
COPY . .

RUN go build -o myapp

# Stage 2: Criar imagem final
FROM alpine:latest

WORKDIR /app
COPY --from=builder /app/myapp .

CMD ["./myapp"]
```

Neste exemplo:

- O `Stage 1` usa a imagem oficial do Golang para compilar o código-fonte Go e criar o executável `myapp`.
- O `Stage 2` usa uma imagem Alpine mais leve como base. Em seguida, copia apenas o executável `myapp` do `Stage 1` para o `Stage 2`.

O resultado é uma imagem Docker final que contém apenas o executável necessário, sem incluir o ambiente de compilação completo. Isso pode ajudar a reduzir significativamente o tamanho da imagem, o que é importante para a eficiência do armazenamento e a transferência rápida da imagem pela rede.

O uso de multistage build é especialmente benéfico para linguagens de programação compiladas, como Go, C++ ou Java, onde o ambiente de compilação não é necessário na imagem de produção.