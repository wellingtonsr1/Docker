# Usa a imagem oficial do mysql
FROM mysql:latest

# Copia o conteúdo da pasta /db para o entrypoint do mysql
COPY ./db/ /docker-entrypoint-initdb.d/
RUN chown -R mysql:mysql /docker-entrypoint-initdb.d/

# Variáveis de ambiente
ENV MYSQL_ROOT_PASSWORD=RootPassword
ENV MYSQL_DATABASE=listagemDeRamais
ENV MYSQL_USER=MainUser
ENV MYSQL_PASSWORD=MainPassword
# expõe a porta 3306
EXPOSE 3306
