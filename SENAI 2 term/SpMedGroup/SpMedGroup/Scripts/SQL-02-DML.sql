--DML
--MUDAR O VARCHAR CPF 11 RG 9 E VER A SEQUECIA DAS PALAVRAS
--COMPARAR O DDL COM O DML
--FZR SELECT * FROM ;
USE SpMedGroup;

INSERT INTO TipoUsuario(TituloTipoUsuario)
VALUES ('Comum'),('ADM'),('Medico');

INSERT INTO Usuario(IdTipoUsuario,NomeUsuario)
VALUES 	('3','Ricardo Lemos'),
	('3','Riberto Possarle'),
	('3','Helena Strada'),
	('1','Ligia'),
	('1','Alexandre'),
	('1','Fernando'),
	('1','Henrique'),
	('1','Joao'),
	('1','Bruno'),
	('1','Mariana');

INSERT INTO Especialidades(TipoEspecialidade)
VALUES 	('Acupuntura'),
	('Anestesiologia'),
	('Angiologia'),
	('Cardiologia'),
	('Cirurgia Cardiovascular'),
	('Cirurgia da Mão'),
	('Cirurgia do Aparelho Digestivo'),
	('Cirurgia Geral'),
	('Cirurgia Pediátrica'),
	('Cirurgia Plástica'),
	('Cirurgia Torácica'),
	('Cirurgia Vascular'),
	('Dermatologia'),
	('Radioterapia'),
	('Urologia'),
	('Pediatria'),
	('Psiquiatria');

INSERT INTO Situacao(SituacaoConsulta)
VALUES	('Realizada'),
	('Cancelada'),
	('Pendente');

INSERT INTO Endereco(NomeEndereco)
VALUES	('Rua Estado de Israel 240, São Paulo, Estado de São Paulo, 04022-000'),
	('Av. Paulista, 1578 - Bela Vista, São Paulo - SP, 01310-200'),
	('Av. Ibirapuera - Indianópolis, 2927,  São Paulo - SP, 04029-200'),
	('R. Vitória, 120 - Vila Sao Jorge, Barueri - SP, 06402-030'),
	('R. Ver. Geraldo de Camargo, 66 - Santa Luzia, Ribeirão Pires - SP, 09405-380'),
	('Alameda dos Arapanés, 945 - Indianópolis, São Paulo - SP, 04524-001'),
	('R Sao Antonio, 232 - Vila Universal, Barueri - SP, 06407-),
	('Av. Barão Limeira, 532, São Paulo, SP');

INSERT INTO Paciente(IdEndereco,IdTipoUsuario,Nome,Email,Senha,DataNascimento,RG,CPF)
VALUES 	('1','1','Ligia','ligia@gmail.com','123','29/10/2002','43522543-5','94839859000')
	('2','1','Alexandre','alexandre@gmail.com','123','13/11/1990','32654345-7','73556944057'),
	('3','1','Fernando','fernando@gmail.com','123','11/9/1999','54636525-3','16839338002'),
	('4','1','Henrique','fernando@gmail.com','123','5/8/1983','54366362-5','14332654765'),
	('5','1','Joao','','henrique@gmail.com','123','9/8/1954','32544444-1','91305348010',),
	('6','1','Bruno','joao@hotmail.com','','123','11/11/1999','54566266-7','79799299004'),
	('7','1','Mariana','mariana@outlook.com','123','7/8/2000','54566266-8','13771913039');

INSERT INTO Medicos('IdEspecialidade','IdTipoUsuario','Nome','Crm','Email','Senha')
VALUES	('2','3','Ricardo Lemos','54356-SP','ricardo.lemos@spmedicalgroup.com.br','123'),
	('17','3','Roberto Possarle','53452-SP','roberto.possarle@spmedicalgroup.com.br','123'),
	('16','3','Helena Strada','65463-SP','helena.souza@spmedicalgroup.com.br','123');

INSERT INTO Consultas(IdMedico,IdSituacao,IdPaciente,NomeConsulta,DataConsulta)
VALUES	('3','1','7','deslocamento de tendao','20/01/2020  15:00:00'),
	('2','2','2','corona virus',''),
	('2','1','3','doenca contagiosa','07/02/2020  11:00:00'),
	('2','1','2','gripado','06/02/2018  10:00:00'),
	('1','2','4','dor de cabeca','07/02/2019  11:00:45'),
	('3','1','7','frebre alta','08/03/2020  15:00:00'),
	('2','3','4','estomago','09/03/2020  11:00:45');


INSERT INTO Clinica('IdConsulta,IdEndereco,NomeClinica,CNPJ,RazaoSocial')
VALUES 	('1','8','SpGroupMed','86.400.902/0001-30','1'),
	('2','8','SpGroupMed','86.400.902/0001-30','1'),
	('3','8','SpGroupMed','86.400.902/0001-30','1'),
	('4','8','SpGroupMed','86.400.902/0001-30','1'),
	('5','8','SpGroupMed','86.400.902/0001-30','1'),
	('6','8','SpGroupMed','86.400.902/0001-30','1'),
	('7','8','SpGroupMed','86.400.902/0001-30','1');