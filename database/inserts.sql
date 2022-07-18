INSERT INTO cleaner 
(
	cpf,
    `name`
) VALUES 
('98069101091', 'Julian Pereira Barros'),
('43207995500', 'Vinicius Santos Carvalho'),
('98834693817', 'Aline Sousa Goncalves'),
('69666937905', 'Camila Goncalves Souza'),
('43364288674', 'Eduarda Souza Pereira'),
('38364898302', 'Breno Castro Costa'),
('23770162005', 'Rebeca Ribeiro Rodrigues'),
('58457790650', 'Kauan Alves Cunha'),
('92961948576', 'Amanda Lima Fernandes'),
('42556596309', 'Raissa Barbosa Costa');

INSERT INTO responsible
(
	cpf,
    `name`
) VALUES 
('75273657652','Vitoria Barros Pereira'),
('47560200117','Mariana Ribeiro Alves'),
('67804039034','Bruno Pinto Barbosa'),
('75615008903','Rodrigo Barbosa Costa'),
('90320510328','Paulo Cavalcanti Martins'),
('27229064309','Luís Almeida Dias'),
('79709738410','Vinicius Gomes Fernandes'),
('08812320503','Carlos Carvalho Cunha'),
('17342020176','Larissa Santos Correia'),
('17541960713','Sophia Silva Cavalcanti');

INSERT INTO size 
(
	`description`,
    cleaning_price
) VALUES 
('1 QUARTO 1 BANHEIRO', 100.0),
('2 QUARTOS 1 BANHEIRO', 145.0),
('2 QUARTOS 2 BANHEIROS', 165.0),
('3 QUARTOS 1 BANHEIRO', 200.0),
('3 QUARTOS 2 BANHEIROS', 230.0),
('3 QUARTOS 3 BANHEIROS', 260.0),
('4 QUARTOS 1 BANHEIRO', 300.0),
('4 QUARTOS 2 BANHEIROS', 330.0),
('4 QUARTOS 3 BANHEIROS', 360.0),
('4 QUARTOS 4 BANHEIROS', 390.0);

INSERT INTO residence
(
	city,
    neighborhood,
    street,
    complement,
    `number`,
    size_id,
    responsible_id
) VALUES
('Aracaju', 'São Conrado', 'São Diogo', 'Próximo à farmácia', 853, 2, 3),
('Imperatriz', 'Nova Imperatriz', 'Rua Projetada A', 'Próximo ao parque', 221, 3, 1),
('Rio Branco', 'Conjunto Bela Vista', 'Rua Salgueiro', '', 354, 4, 7),
('Manaus', 'Zumbi dos Palmares', 'Rua Jauari', 'Em frente à lombada', 255, 1, 5),
('São Luís', 'Turu', 'Rua do Bico', 'Portão amarelo', 803, 5, 2),
('Campo Grande', 'Vila Nogueira', 'Rua Albino', 'Casa C', 161, 6, 8),
('Campina Grande', 'Centro', 'Rua Peregrino de Carvalho', 'Bloco 11 Apto 34', 250, 7, 9),
('Manacapuru', 'Morada do Sol', 'Rua Araras', 'Em frente à padaria', 175, 8, 10),
('Teresina', 'Aroeiras', 'Rua do Bico', 'Casa verde', 20, 9, 8),
('Gurupi', 'Vila Iris', 'Rua Parisi', '', 47, 10, 1);

INSERT INTO cleaning
(
	scheduled_date,
    realization_date,
    must_be_paid,
    was_paid,
    responsible_evaluation,
    responsible_feedback,
    cleaner_id,
    residence_id
) VALUES 

('2022-07-14', '2022-07-14', 1, 1, 'good', 'bom trabalho!', 2, 3),
('2022-06-02', '2022-06-02', 1, 1, 'regular', 'realizou o serviço esperado!', 3, 5),
(null, '2022-06-25', 1, 1, 'good', 'bom trabalho!', 4, 6),
('2022-05-17', null, 0, 0, null, '', 5, 8),
('2022-07-15', '2022-07-15', 1, 0, 'bad', 'faltou um cômodo para ser limpo', 6, 10),
('2022-04-20', null, 0, 0, 'regular', 'realizou o serviço esperado!', 7, 5),
('2022-05-10', '2022-05-10', 1, 1, 'terrible', 'não gostei do serviço', 8, 7),
('2022-07-16', '2022-07-16', 1, 1, 'regular', 'realizou o serviço esperado!', 9, 2),
('2022-07-14', null, 0, 0, null, '', 10, 2);

SELECT * FROM cleaner;
SELECT * FROM responsible;
SELECT * FROM size;
SELECT * FROM residence;
SELECT * FROM cleaning;