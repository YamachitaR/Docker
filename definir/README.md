# Video

Vamos seguir esse tutorial 

[Ultimate Docker Compose Tutorial ](https://www.youtube.com/watch?v=SXwC9fSwct8&t=2048s) do Canal **TechWorld with Nana**

## Demo-Without Docker Compose 


Criando network com mongo
~~~ 
docker network create mongo-network
~~~ 

vamos listar
~~~ 
docker network ls
~~~
### Criando contêiner de Mongo
Ao olhamos na  [documentação](https://hub.docker.com/_/mongo)
 podemover os parametros necessário 

~~~ 
$ docker run -d  \
    -p 27017:27017 \
	-e MONGO_INITDB_ROOT_USERNAME=mongoadmin \
	-e MONGO_INITDB_ROOT_PASSWORD=secret \
    --network mongo-network \
    --name mongodb \
	mongo
~~~
para verificar se esta certo vamos da `docker ps`


### Criando contêiner de Mongo express
Ao olhamos na  [documentação](https://hub.docker.com/_/mongo-express)
 podemover os parametros necessário 
~~~ 
$ docker run -d  \
    -p 8081:8081 \
    -e ME_CONFIG_MONGODB_ADMINUSERNAME=mongoadmin \
    -e ME_CONFIG_MONGODB_ADMINPASSWORD=secret \
    -e ME_CONFIG_MONGODB_SERVER=mongodb \
    --network mongo-network \
    --name mongodb-express \
    mongo-express
~~~

Vamos ver se subiu, basta olhamos `docker ps`

### Difença entre eles

Em resumo, o MongoDB é o próprio sistema de gerenciamento de banco de dados NoSQL, enquanto o MongoDB Express é uma ferramenta de interface web para facilitar a administração e visualização dos dados no MongoDB. O MongoDB Express é uma das várias ferramentas disponíveis para esse propósito, e os usuários podem escolher a ferramenta que melhor se adequa às suas necessidades e preferências.

### Acessando 

Vamos no `localhost:8081` a porta é do mongodb-express

O login e a senha para saber, basta usar o comando `docker logs <id do contêiner>`

No final vai aparecer uma linha parecido com 

~~~ 
basicAuth credentials are "admin:pass", it is recommended you change this in your config.js!
~~~

Logo, login é admin e a senha é pass


##  From Docker Commands To Compose File

Obejetivo é rescrever as duas aplicação na forma de arquivo (da uma olhjada no arquivo mongodb.yaml)

