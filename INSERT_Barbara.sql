insert into livro (nome_livro, autor, genero) values 
('Espada de Vidro', 'Victoria Aveyard', 'Ação e Aventura'),
('A Rebelde do Deserto', 'Alwyn Hamilton', 'Ação e Aventura'),
('A Rainha Vermelha', 'Victoria Aveyard', 'Ação e Aventura'),
('A volta ao mundo em 80 dias', 'Júlio Verne', 'Ação e Aventura'),
('A Sombra da Serpente', 'Rick Riordan', 'Ação e Aventura'),
('E não sobrou nenhum', 'Agatha Christie', 'Suspense'),
('Caixa de passaros', 'Josh Malerman', 'Suspense'),
('O cemitério', 'Stephen King', 'Suspense'),
('O Iluminado', 'Stephen King', 'Suspense'),
('Logica de Programação', 'Paulo Silveira', 'Tecnologia'),
('Computação com Ruby', 'Guilherme Silveira', 'Tecnologia'),
('Selenium WebDriver', 'Rafael Peixoto', 'Tecnologia'),
('JQuery in Action', 'Bear Bibeault', 'Tecnologia'),
('Javascript Ninja', 'John Resig', 'Tecnologia'),
('Orgulho e Preconceito', 'Jane Austen', 'Romance'),
('Ainda sou eu', 'Jojo Moyes', 'Romance'),
('Dois a dois', 'Nicholas Sparks', 'Romance'),
('Dom casmurro', 'Machado de Assis', 'Romance'),
('A culpa é das estrelas', 'John Green', 'Romance'),
('Quem é você, Alasca?', 'John Green', 'Romance');


insert into aluno (nome_aluno, email) values 
('João Martinho', 'joaomartinho@gmail.com'),
('Adrian Caetano', 'adriancaetano_123@gmail.com'),
('Vanessa Petrini', 'vanessa_p_petrini@gmail.com'),
('Pamela Bragueta', 'braguetapamela@hotmail.com'),
('José da Silva', 'jose_silva@yahoo.com.br'),
('Barbara Becker', 'bbecker@gmail.com');


insert into atendente (nome_atendente) values 
('Maria Joaquina'),
('Lucas Becker');


insert into emprestimo (data_emprestimo, data_previsao, data_devolucao, id_atendente_fk, id_aluno_fk, id_livro_fk) values 
('2016-05-02', '2016-05-09', '2016-05-09', (
       SELECT id_atendente
         FROM atendente
        WHERE nome_atendente = 'Maria Joaquina'), 
        (SELECT id_aluno
        FROM aluno
        WHERE nome_aluno = 'João Martinho'),
        (SELECT id_livro
        FROM livro
        WHERE nome_livro = 'A volta ao mundo em 80 dias')),
('2018-04-10', '2018-04-17', '2018-04-20', (
       SELECT id_atendente
         FROM atendente
        WHERE nome_atendente = 'Maria Joaquina'), 
        (SELECT id_aluno
        FROM aluno
        WHERE nome_aluno = 'João Martinho'),
        (SELECT id_livro
        FROM livro
        WHERE nome_livro = 'A Rainha Vermelha')),
('2018-03-15', '2018-03-22', '2018-03-22', (
       SELECT id_atendente
         FROM atendente
        WHERE nome_atendente = 'Lucas Becker'), 
        (SELECT id_aluno
        FROM aluno
        WHERE nome_aluno = 'João Martinho'),
        (SELECT id_livro
        FROM livro
        WHERE nome_livro = 'O Iluminado')),
('2018-07-18', '2018-07-25', '2018-07-30', (
       SELECT id_atendente
         FROM atendente
        WHERE nome_atendente = 'Lucas Becker'), 
        (SELECT id_aluno
        FROM aluno
        WHERE nome_aluno = 'João Martinho'),
        (SELECT id_livro
        FROM livro
        WHERE nome_livro = 'Computação com Ruby')),
('2017-08-01', '2017-08-08', '2017-08-08', (
       SELECT id_atendente
         FROM atendente
        WHERE nome_atendente = 'Maria Joaquina'), 
        (SELECT id_aluno
        FROM aluno
        WHERE nome_aluno = 'Adrian Caetano'),
        (SELECT id_livro
        FROM livro
        WHERE nome_livro = 'Orgulho e Preconceito')),
('2018-10-16', '2018-10-24', null, (
       SELECT id_atendente
         FROM atendente
        WHERE nome_atendente = 'Maria Joaquina'), 
        (SELECT id_aluno
        FROM aluno
        WHERE nome_aluno = 'Adrian Caetano'),
        (SELECT id_livro
        FROM livro
        WHERE nome_livro = 'Ainda sou eu')),
('2018-08-12', '2018-08-20', '2018-08-20', (
       SELECT id_atendente
         FROM atendente
        WHERE nome_atendente = 'Lucas Becker'), 
        (SELECT id_aluno
        FROM aluno
        WHERE nome_aluno = 'Adrian Caetano'),
        (SELECT id_livro
        FROM livro
        WHERE nome_livro = 'O Iluminado')),
('2018-07-08', '2018-07-15', '2018-07-20', (
       SELECT id_atendente
         FROM atendente
        WHERE nome_atendente = 'Lucas Becker'), 
        (SELECT id_aluno
        FROM aluno
        WHERE nome_aluno = 'Adrian Caetano'),
        (SELECT id_livro
        FROM livro
        WHERE nome_livro = 'Logica de Programação')),
('2018-10-15', '2018-10-24', null, (
       SELECT id_atendente
         FROM atendente
        WHERE nome_atendente = 'Maria Joaquina'), 
        (SELECT id_aluno
        FROM aluno
        WHERE nome_aluno = 'Vanessa Petrini'),
        (SELECT id_livro
        FROM livro
        WHERE nome_livro = 'Espada de Vidro')),
('2017-09-12', '2017-09-20', '2017-09-20', (
       SELECT id_atendente
         FROM atendente
        WHERE nome_atendente = 'Maria Joaquina'), 
        (SELECT id_aluno
        FROM aluno
        WHERE nome_aluno = 'Vanessa Petrini'),
        (SELECT id_livro
        FROM livro
        WHERE nome_livro = 'A Rebelde do Deserto')),
('2018-09-19', '2018-09-20', '2018-09-20', (
       SELECT id_atendente
         FROM atendente
        WHERE nome_atendente = 'Lucas Becker'), 
        (SELECT id_aluno
        FROM aluno
        WHERE nome_aluno = 'Vanessa Petrini'),
        (SELECT id_livro
        FROM livro
        WHERE nome_livro = 'O Iluminado')),
('2018-08-11', '2018-08-19', '2018-08-19', (
       SELECT id_atendente
         FROM atendente
        WHERE nome_atendente = 'Lucas Becker'), 
        (SELECT id_aluno
        FROM aluno
        WHERE nome_aluno = 'Vanessa Petrini'),
        (SELECT id_livro
        FROM livro
        WHERE nome_livro = 'Logica de Programação')),
('2018-08-18', '2018-08-25', '2018-08-30', (
       SELECT id_atendente
         FROM atendente
        WHERE nome_atendente = 'Maria Joaquina'), 
        (SELECT id_aluno
        FROM aluno
        WHERE nome_aluno = 'Pamela Bragueta'),
        (SELECT id_livro
        FROM livro
        WHERE nome_livro = 'O Iluminado')),
('2018-10-24', '2018-11-02', null, (
       SELECT id_atendente
         FROM atendente
        WHERE nome_atendente = 'Lucas Becker'), 
        (SELECT id_aluno
        FROM aluno
        WHERE nome_aluno = 'Pamela Bragueta'),
        (SELECT id_livro
        FROM livro
        WHERE nome_livro = 'Caixa de passaros')),
('2018-08-14', '2018-08-22', '2018-08-22', (
       SELECT id_atendente
         FROM atendente
        WHERE nome_atendente = 'Maria Joaquina'), 
        (SELECT id_aluno
        FROM aluno
        WHERE nome_aluno = 'Pamela Bragueta'),
        (SELECT id_livro
        FROM livro
        WHERE nome_livro = 'Computação com Ruby')),
('2018-10-18', '2018-10-25', '2018-10-30', (
       SELECT id_atendente
         FROM atendente
        WHERE nome_atendente = 'Lucas Becker'), 
        (SELECT id_aluno
        FROM aluno
        WHERE nome_aluno = 'Pamela Bragueta'),
        (SELECT id_livro
        FROM livro
        WHERE nome_livro = 'Javascript Ninja')),
('2018-11-14', '2018-11-21', null, (
       SELECT id_atendente
         FROM atendente
        WHERE nome_atendente = 'Maria Joaquina'), 
        (SELECT id_aluno
        FROM aluno
        WHERE nome_aluno = 'José da Silva'),
        (SELECT id_livro
        FROM livro
        WHERE nome_livro = 'Javascript Ninja')),
('2018-11-09', '2018-11-18', '2018-11-18', (
       SELECT id_atendente
         FROM atendente
        WHERE nome_atendente = 'Maria Joaquina'), 
        (SELECT id_aluno
        FROM aluno
        WHERE nome_aluno = 'José da Silva'),
        (SELECT id_livro
        FROM livro
        WHERE nome_livro = 'Logica de Programação')),
('2018-11-06', '2018-11-13', null, (
       SELECT id_atendente
         FROM atendente
        WHERE nome_atendente = 'Lucas Becker'), 
        (SELECT id_aluno
        FROM aluno
        WHERE nome_aluno = 'José da Silva'),
        (SELECT id_livro
        FROM livro
        WHERE nome_livro = 'O Iluminado')),
('2018-09-13', '2018-09-26', '2018-09-20', (
       SELECT id_atendente
         FROM atendente
        WHERE nome_atendente = 'Lucas Becker'), 
        (SELECT id_aluno
        FROM aluno
        WHERE nome_aluno = 'José da Silva'),
        (SELECT id_livro
        FROM livro
        WHERE nome_livro = 'Computação com Ruby')),
('2016-03-08', '2016-03-15', '2016-03-15', (
       SELECT id_atendente
         FROM atendente
        WHERE nome_atendente = 'Maria Joaquina'), 
        (SELECT id_aluno
        FROM aluno
        WHERE nome_aluno = 'Barbara Becker'),
        (SELECT id_livro
        FROM livro
        WHERE nome_livro = 'Dois a dois')),
('2018-07-28', '2018-08-05', '2018-08-06', (
       SELECT id_atendente
         FROM atendente
        WHERE nome_atendente = 'Maria Joaquina'), 
        (SELECT id_aluno
        FROM aluno
        WHERE nome_aluno = 'Barbara Becker'),
        (SELECT id_livro
        FROM livro
        WHERE nome_livro = 'JQuery in Action')),
('2018-05-05', '2018-05-13', '2018-05-13', (
       SELECT id_atendente
         FROM atendente
        WHERE nome_atendente = 'Lucas Becker'), 
        (SELECT id_aluno
        FROM aluno
        WHERE nome_aluno = 'Barbara Becker'),
        (SELECT id_livro
        FROM livro
        WHERE nome_livro = 'A culpa é das estrelas')),
('2018-10-13', '2018-10-20', '2018-10-23', (
       SELECT id_atendente
         FROM atendente
        WHERE nome_atendente = 'Lucas Becker'), 
        (SELECT id_aluno
        FROM aluno
        WHERE nome_aluno = 'Barbara Becker'),
        (SELECT id_livro
        FROM livro
        WHERE nome_livro = 'Computação com Ruby'));