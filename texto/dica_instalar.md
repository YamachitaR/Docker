Nunca faça assim 

~~~ 
FROM ubuntu

RUN apt-get upgrade
RUN apt-get install vim --yes
RUN apt-get install curl --yes
~~~ 

O certo é 

~~~ 
FROM ubuntu

RUN apt-get upgrade && \
    apt-get install vim --yes && \
    apt-get install curl --yes
~~~ 

O que eu entendi que o problema é **reaproveitamento de cache**. Vamos supor que você criou essa imagem do jeito "errado", passou um tempo, surgiu um programa novo, ai voce colocar na ultima linha da instalação `RUN apt-get install novo_programa`. Como ele vai aproveitar o cache logo não vai atualizar o pacote e não vai encontrar o programa novo. 


# Fonte
[https://www.youtube.com/live/kxcc_PaBCm4?si=pl4ZNzVtZmZjYcT6&t=2480](https://www.youtube.com/live/kxcc_PaBCm4?si=pl4ZNzVtZmZjYcT6&t=2480)