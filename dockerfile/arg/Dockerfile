# nesse exemplo simples, vamos receber valor de argumento e e imprimir 

# docker build -t nomeImagem
# docker  run -e variavel="valor desejado" nomeImagem

FROM debian

ARG variavel


CMD ["sh", "-c", "echo $variavel"]
