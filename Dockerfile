FROM mysql:latest

COPY ./db/ /docker-entrypoint-initdb.d/
RUN chown -R mysql:mysql /docker-entrypoint-initdb.d/

# Variáveis de ambiente
ENV MYSQL_ROOT_PASSWORD=RootPassword
ENV MYSQL_DATABASE=listagemDeRamais
ENV MYSQL_USER=MainUser
ENV MYSQL_PASSWORD=MainPassword

EXPOSE 3306
