# TLS

TLS (Transport Layer Security) é um protocolo de segurança que fornece comunicação segura pela Internet. Ele é uma evolução do protocolo SSL (Secure Sockets Layer) e é utilizado para garantir a privacidade e a integridade dos dados transmitidos entre clientes e servidores na rede.

O principal objetivo do TLS é proteger as informações sensíveis durante a transferência, como dados de login, informações de cartão de crédito e outros dados confidenciais. Ele funciona criptografando os dados para que apenas o destinatário pretendido possa decifrá-los.

Principais características do TLS:

1. **Criptografia:**
   O TLS usa algoritmos criptográficos para garantir que os dados transmitidos sejam ilegíveis para qualquer pessoa que não seja o destinatário autorizado.

2. **Integridade dos Dados:**
   O TLS inclui verificações de integridade que garantem que os dados transmitidos não foram alterados durante a transferência.

3. **Autenticação:**
   O TLS permite a autenticação do servidor e, opcionalmente, do cliente. Isso ajuda a garantir que os usuários se conectem aos servidores corretos e vice-versa.

4. **Suporte a Múltiplas Versões:**
   O TLS possui várias versões, como TLS 1.0, TLS 1.1, TLS 1.2 e TLS 1.3. Cada versão traz melhorias em termos de segurança e eficiência.

5. **Compatibilidade com HTTPS:**
   O TLS é comumente usado em conjunto com o protocolo HTTPS (HTTP seguro) para garantir que as comunicações entre navegadores da web e servidores web sejam seguras.

6. **Negociação de Parâmetros de Segurança:**
   Antes de estabelecer uma conexão segura, clientes e servidores negociam parâmetros de segurança, como algoritmos de criptografia e métodos de autenticação.

É importante manter as implementações do TLS atualizadas para garantir a segurança contínua, pois novas ameaças e vulnerabilidades são descobertas ao longo do tempo. O uso de versões mais recentes do TLS é recomendado para obter os benefícios de melhorias de segurança e desempenho.

## Sobre exemplo

Objetivo maior que ter controle da versão TLS, nesse exemplo coloamos `ssl_protocols TLSv1.2 TLSv1.3;` para isso, nós precisamos usar ssl, por isso estamos instalando. 


## Para verificar TLSv

Primeiro temos quer rodar de modo que entre pelo terminal 


~~~
docker exec -it  <id ou nome>  /bin/bash
~~~




~~~ 
openssl s_client localhost:443
~~~ 
Saída 

~~~
Protocol  : TLSv1.3
Cipher    : TLS_AES_256_GCM_SHA384
Session-ID: A832274838A8A416D086E6E51211BF678D25CBA55571C63958808FE76D0EE25C
Session-ID-ctx: 
~~~
