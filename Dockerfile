# Puxa a imagem do MySQL
FROM mysql:8.2
#Um comentario para teste
# Adiciona os nossos scripts de mysql pra dentro do imagem 

ENV MYSQL_ALLOW_EMPTY_PASSWORD='yes'


COPY ./db/ /docker-entrypoint-initdb.d/
