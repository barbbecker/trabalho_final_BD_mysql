create database TrabalhoFinalBarbara;
show databases;
use TrabalhoFinalBarbara;

create table livro (
id_livro integer auto_increment not null,
nome_livro char(150) not null,
autor char(150) not null,
genero char(40) not null,
primary key(id_livro));

create table aluno (
id_aluno integer auto_increment not null,
nome_aluno char(150) not null,
email char(50) not null,
primary key(id_aluno));

create table atendente (
id_atendente integer auto_increment not null,
nome_atendente char(150) not null,
primary key(id_atendente));

create table emprestimo (
id_emprestimo integer auto_increment not null,
data_emprestimo date,
data_previsao date,
data_devolucao date,
id_atendente_fk integer not null,
id_aluno_fk integer not null,
id_livro_fk integer not null,
primary key(id_emprestimo));

ALTER TABLE emprestimo ADD CONSTRAINT id_atendente_fk FOREIGN KEY (id_atendente_fk) REFERENCES atendente (id_atendente);
ALTER TABLE emprestimo ADD CONSTRAINT id_aluno_fk FOREIGN KEY (id_aluno_fk) REFERENCES aluno (id_aluno);
ALTER TABLE emprestimo ADD CONSTRAINT id_livro_fk FOREIGN KEY (id_livro_fk) REFERENCES livro (id_livro);


/*FUNÇÃO PARA RETORNAR A DISPONIBILIDADE DO LIVRO*/
FUNCTION
delimiter $$
CREATE FUNCTION livro_disponivel (id INT) RETURNS CHAR(100)
BEGIN
DECLARE disponivel INT;
DECLARE retorno CHAR(40);
SET retorno = '';

SET disponivel = (SELECT COUNT(id_livro_fk) FROM emprestimo WHERE id_livro_fk = id && data_devolucao is null);

IF disponivel = 0 THEN SET retorno = 'Livro disponivel';
	ELSE SET retorno = 'Livro indisponivel';
END IF;

RETURN retorno;
END $$

SELECT livro_disponivel(12);


/*PROCEDURE RESERVAR LIVRO*/
delimiter $$

CREATE PROCEDURE reservar (IN aluno INT, IN livro INT, IN atendente INT)
BEGIN
SET @dt_emprestimo = curdate();
SET @dt_devolucao = adddate(@dt_emprestimo, 15);

INSERT INTO emprestimo (id_aluno_fk, id_livro_fk,  id_atendente_fk, data_emprestimo, data_devolucao)
VALUE (aluno, livro, atendente, @dt_emprestimo, @dt_devolucao);
END $$

delimiter ;

CALL reservar (6, 11, 1);
CALL reservar (3, 17, 2);

/*VIEW*/
/*VIEW - TODOS EMPRESTIMOS*/
CREATE VIEW todos_emprestimos AS
SELECT l.nome_livro Livro, 
e.data_emprestimo Emprestimo,
e.data_previsao Previsao_entrega,
e.data_devolucao Devolucao
FROM aluno a
JOIN emprestimo e
ON a.id_aluno = e.id_aluno_fk
JOIN livro l 
WHERE e.id_aluno_fk = a.id_aluno 
AND e.id_livro_fk = l.id_livro;

SELECT * FROM todos_emprestimos;

/*VIEW - LIVROS DISPONIVEIS*/
CREATE VIEW livros_disponiveis AS 
SELECT * FROM todos_emprestimos
WHERE previsao_entrega < now() AND devolucao is not null;

SELECT * FROM livros_disponiveis;
   
        