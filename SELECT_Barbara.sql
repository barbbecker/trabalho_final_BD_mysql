SELECT * FROM livro;
SELECT * FROM aluno;
SELECT * FROM atendente;
SELECT * FROM emprestimo;

/*4 retiradas de livros por cada aluno, metade entregues por um atendente, metade pelo outro*/
SELECT a.nome_aluno as Nome, l.nome_livro as Livro, e.data_emprestimo as Emprestimo, e.data_devolucao as Devolucao, atd.nome_atendente as Atendente
FROM emprestimo e
JOIN aluno a
ON a.id_aluno = e.id_aluno_fk
JOIN livro l
ON l.id_livro = e.id_livro_fk
JOIN atendente atd
ON atd.id_atendente = e.id_atendente_fk
ORDER BY atd.nome_atendente;

/*Problema A*/
SELECT a.nome_aluno as Nome, l.nome_livro as Livro, e.data_emprestimo as Emprestimo, e.data_previsao as Previsao_entrega, e.data_devolucao as Devolucao
FROM emprestimo e
JOIN aluno a
ON a.id_aluno = e.id_aluno_fk
JOIN livro l
ON l.id_livro = e.id_livro_fk
WHERE a.nome_aluno = 'José da Silva'
AND l.nome_livro = 'Javascript Ninja';


/*Problema B*/
/*Livro JQuery disponivel*/
SELECT a.nome_aluno as Nome, l.nome_livro as Livro, e.data_emprestimo as Emprestimo, e.data_previsao as Previsao_entrega, e.data_devolucao as Devolucao
FROM emprestimo e
JOIN aluno a
ON a.id_aluno = e.id_aluno_fk
JOIN livro l
ON l.id_livro = e.id_livro_fk
AND l.nome_livro = 'JQuery in Action'
WHERE e.data_devolucao < date_sub(curdate(), interval 1 day);


/*Problema C*/
SELECT a.nome_atendente as Atendente, e.data_emprestimo as Emprestimo, e.data_devolucao as Devolucao, l.nome_livro as Livro
FROM emprestimo e
JOIN atendente a
ON e.id_atendente_fk = a.id_atendente
JOIN livro l
ON l.id_livro = e.id_livro_fk
WHERE e.data_emprestimo = DATE_SUB(curdate(), INTERVAL 1 DAY)
OR e.data_devolucao = DATE_SUB(curdate(), INTERVAL 1  DAY)
AND a.nome_atendente = 'Maria Joaquina';


/*Problema D*/
SELECT l.nome_livro as Livro, l.genero as Genero, count(e.data_emprestimo) as Quantidade_emprestimos
FROM emprestimo e
JOIN livro l
ON l.id_livro = e.id_livro_fk
GROUP BY l.nome_livro
ORDER BY count(e.data_emprestimo) DESC
LIMIT 5;

/*Problema E*/
SELECT l.nome_livro as Livro, e.data_emprestimo as Emprestimo
FROM emprestimo e
RIGHT JOIN livro l
ON l.id_livro = e.id_livro_fk
WHERE YEAR (e.data_emprestimo) < 2018
OR e.data_emprestimo is null;
