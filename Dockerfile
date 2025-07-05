# Puxa a imagem do MySQL
FROM mysql:5.7

# Adiciona os nossos scripts de mysql pra dentro do imagem 
COPY ./db/ /docker-entrypoint-initdb.d/
