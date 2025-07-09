CREATE DATABASE perguntas_e_respostas;
USE perguntas_e_respostas;
CREATE TABLE perguntas (
    id_pergunta integer not null auto_increment,
    titulo_pergunta varchar(100),
    nome_usuario_pergunta varchar(60),
    texto_pergunta TEXT not null, 
    PRIMARY KEY (id_pergunta)
);

CREATE TABLE respostas(
    id_respostas integer not null auto_increment,
    nome_usuario_resposta varchar(100),
    texto_resposta TEXT not null,
    id_pegunta_resposta integer not null,
    PRIMARY KEY (id_respostas),
    FOREIGN KEY (id_pegunta_resposta) REFERENCES perguntas(id_pergunta)
);

SET character_set_client = utf8;
SET character_set_connection = utf8;
SET character_set_results = utf8;
SET collation_connection = utf8_general_ci;
INSERT INTO perguntas (titulo_pergunta, nome_usuario_pergunta, texto_pergunta) VALUES ('Bem Vindo ao Q&A', 'Anoniquest', 'Bem Vindo ao Site, aqui você pode fazer perguntas e repostas, você sabe fazer perguntas?');
INSERT INTO respostas (nome_usuario_resposta, texto_resposta, id_pegunta_resposta) VALUES ('Anoniquest Novamente', 'Para responder basta clicar em reponda essa reposta, ou algo assim sei lá como é pra ser o layout do site.',1)