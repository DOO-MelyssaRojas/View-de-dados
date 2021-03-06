CREATE DATABASE `GAME OF THRONES`;

USE `GAME OF THRONES`;

set autocommit=0;

COMMIT;

CREATE TABLE `PERSONAGENS` (
  `NOME_DO_ATOR` varchar(200) PRIMARY KEY,
  `PERSONAGEM` varchar(200),
  `APARICOES` varchar(2),
  `PRIMEIRA_APARICAO` varchar(50),
  `ULTIMA_APARICAO` varchar(50)
);

CREATE TABLE `EPISODIOS` (
  `NOME_DO_EP` varchar(200) primary key,
  `TEMPORADA` varchar(50),
  `LANCAMENTO` varchar(50),
  `TEMPO_DE_DURACAO` int,
  `DIRETOR` varchar(200),
  `RATINGS` float,
  `ESTRELA_1` varchar(200)
);

ALTER TABLE `EPISODIOS` ADD FOREIGN KEY (`ESTRELA_1`) REFERENCES `PERSONAGENS` (`NOME_DO_ATOR`);

COMMIT;

/*IMPORTAR O CONJUNTO DE DADOS DE ACORDO COM AS TABELAS ACIMA PARA FAZER AS OPERACOES E CONSULTAS DAS PERGUNTAS DO PROJETO, ABAIXO*/

SELECT * FROM `EPISODIOS` ORDER BY TEMPORADA;

SELECT DIRETOR, RATINGS FROM `EPISODIOS` order by RATINGS DESC;

SELECT TEMPO_DE_DURACAO, RATINGS FROM `EPISODIOS` ORDER BY TEMPO_DE_DURACAO DESC;

SELECT MAX(TEMPORADA) FROM `EPISODIOS`;

SELECT LANCAMENTO FROM `EPISODIOS` WHERE NOME_DO_EP = 'A Golden Crown' OR NOME_DO_EP = 'A Knight of the Seven Kingdoms';

SELECT * FROM `PERSONAGENS`;

SELECT PERSONAGEM, APARICOES FROM `PERSONAGENS` WHERE APARICOES = 67 ORDER BY APARICOES DESC;

SELECT COUNT(PERSONAGEM) FROM `PERSONAGENS`;

SELECT PERSONAGEM FROM `PERSONAGENS` WHERE ULTIMA_APARICAO = 2019;

set autocommit = 0;

commit;

/* COLOCANDO OS VALORES NA COLUNA ESTRELA_1 COM A CHAVE ESTRANGEIRA 
DE ACORDO COM A CHAVE PRIMÁRIA DA TABELA PERSONAGENS COM A COLUNA NOME_DO_ATOR
*/

UPDATE `EPISODIOS` SET ESTRELA_1 = 'Sean Bean' WHERE NOME_DO_EP = 'A Golden Crown';

UPDATE `EPISODIOS` SET ESTRELA_1 = 'Sean Bean' WHERE NOME_DO_EP = 'Baelor';

UPDATE `EPISODIOS` SET ESTRELA_1 = 'Sean Bean' WHERE NOME_DO_EP = 'You Win or You Die';

UPDATE `EPISODIOS` SET ESTRELA_1 = 'Sean Bean' WHERE NOME_DO_EP = 'Winter Is Coming';

UPDATE `EPISODIOS` SET ESTRELA_1 = 'Sean Bean' WHERE NOME_DO_EP = 'The Wolf and the Lion';

UPDATE `EPISODIOS` SET ESTRELA_1 = 'Sean Bean' WHERE NOME_DO_EP = 'Cripples, Bastards, and Broken Things';

UPDATE `EPISODIOS` SET ESTRELA_1 = 'Sean Bean' WHERE NOME_DO_EP = 'Fire and Blood';

UPDATE `EPISODIOS` SET ESTRELA_1 = 'Sean Bean' WHERE NOME_DO_EP = 'Lord Snow';

UPDATE `EPISODIOS` SET ESTRELA_1 = 'Sean Bean' WHERE NOME_DO_EP = 'The Pointy End';

UPDATE `EPISODIOS` SET ESTRELA_1 = 'Sean Bean' WHERE NOME_DO_EP = 'The Kingsroad';

UPDATE `EPISODIOS` SET ESTRELA_1 = 'Peter Dinklage' WHERE NOME_DO_EP = 'A Man Without Honor';

UPDATE `EPISODIOS` SET ESTRELA_1 = 'Peter Dinklage' WHERE NOME_DO_EP = 'The North Remembers';

UPDATE `EPISODIOS` SET ESTRELA_1 = 'Peter Dinklage' WHERE NOME_DO_EP = 'Blackwater';

UPDATE `EPISODIOS` SET ESTRELA_1 = 'Peter Dinklage' WHERE NOME_DO_EP = 'The Night Lands';

UPDATE `EPISODIOS` SET ESTRELA_1 = 'Peter Dinklage' WHERE NOME_DO_EP = 'What Is Dead May Never Die';

UPDATE `EPISODIOS` SET ESTRELA_1 = 'Peter Dinklage' WHERE NOME_DO_EP = 'Garden of Bones';

UPDATE `EPISODIOS` SET ESTRELA_1 = 'Peter Dinklage' WHERE NOME_DO_EP = 'Valar Morghulis';

UPDATE `EPISODIOS` SET ESTRELA_1 = 'Peter Dinklage' WHERE NOME_DO_EP = 'The Prince of Winterfell';

UPDATE `EPISODIOS` SET ESTRELA_1 = 'Peter Dinklage' WHERE NOME_DO_EP = 'The Ghost of Harrenhal';

UPDATE `EPISODIOS` SET ESTRELA_1 = 'Peter Dinklage' WHERE NOME_DO_EP = 'The Old Gods and the New';

UPDATE `EPISODIOS` SET ESTRELA_1 = 'Peter Dinklage' WHERE NOME_DO_EP = 'Second Sons';

UPDATE `EPISODIOS` SET ESTRELA_1 = 'Peter Dinklage' WHERE NOME_DO_EP = 'And Now His Watch Is Ended';

UPDATE `EPISODIOS` SET ESTRELA_1 = 'Peter Dinklage' WHERE NOME_DO_EP = 'Dark Wings, Dark Words';

UPDATE `EPISODIOS` SET ESTRELA_1 = 'Peter Dinklage' WHERE NOME_DO_EP = 'Walk of Punishment';

UPDATE `EPISODIOS` SET ESTRELA_1 = 'Peter Dinklage' WHERE NOME_DO_EP = 'The Bear and the Maiden Fair';

UPDATE `EPISODIOS` SET ESTRELA_1 = 'Peter Dinklage' WHERE NOME_DO_EP = 'Valar Dohaeris';

UPDATE `EPISODIOS` SET ESTRELA_1 = 'Emilia Clarke' WHERE NOME_DO_EP = 'The Rains of Castamere';

UPDATE `EPISODIOS` SET ESTRELA_1 = 'Peter Dinklage' WHERE NOME_DO_EP = 'Kissed by Fire';

UPDATE `EPISODIOS` SET ESTRELA_1 = 'Peter Dinklage' WHERE NOME_DO_EP = 'Mhysa';

UPDATE `EPISODIOS` SET ESTRELA_1 = 'Peter Dinklage' WHERE NOME_DO_EP = 'The Climb';

UPDATE `EPISODIOS` SET ESTRELA_1 = 'Kit Harington' WHERE NOME_DO_EP = 'The Watchers on the Wall';

UPDATE `EPISODIOS` SET ESTRELA_1 = 'Peter Dinklage' WHERE NOME_DO_EP = 'Two Swords';

UPDATE `EPISODIOS` SET ESTRELA_1 = 'Peter Dinklage' WHERE NOME_DO_EP = 'Breaker of Chains';

UPDATE `EPISODIOS` SET ESTRELA_1 = 'Nikolaj Coster-Waldau' WHERE NOME_DO_EP = 'First of His Name';

UPDATE `EPISODIOS` SET ESTRELA_1 = 'Peter Dinklage' WHERE NOME_DO_EP = 'Mockingbird';

UPDATE `EPISODIOS` SET ESTRELA_1 = 'Peter Dinklage' WHERE NOME_DO_EP = 'Oathkeeper';

UPDATE `EPISODIOS` SET ESTRELA_1 = 'Peter Dinklage' WHERE NOME_DO_EP = 'The Children';

UPDATE `EPISODIOS` SET ESTRELA_1 = 'Peter Dinklage' WHERE NOME_DO_EP = 'The Laws of Gods and Men';

UPDATE `EPISODIOS` SET ESTRELA_1 = 'Peter Dinklage' WHERE NOME_DO_EP = 'The Lion and the Rose';

UPDATE `EPISODIOS` SET ESTRELA_1 = 'Peter Dinklage' WHERE NOME_DO_EP = 'The Mountain and the Viper';

UPDATE `EPISODIOS` SET ESTRELA_1 = 'Peter Dinklage' WHERE NOME_DO_EP = "Mother's Mercy";

UPDATE `EPISODIOS` SET ESTRELA_1 = 'Peter Dinklage' WHERE NOME_DO_EP = 'The Gift';

UPDATE `EPISODIOS` SET ESTRELA_1 = 'Peter Dinklage' WHERE NOME_DO_EP = 'The House of Black and White';

UPDATE `EPISODIOS` SET ESTRELA_1 = 'Peter Dinklage' WHERE NOME_DO_EP = 'The Wars to Come';

UPDATE `EPISODIOS` SET ESTRELA_1 = 'Peter Dinklage' WHERE NOME_DO_EP = 'The Dance of Dragons';

UPDATE `EPISODIOS` SET ESTRELA_1 = 'Peter Dinklage' WHERE NOME_DO_EP = 'Kill the Boy';

UPDATE `EPISODIOS` SET ESTRELA_1 = 'Peter Dinklage' WHERE NOME_DO_EP = 'Sons of the Harpy';

UPDATE `EPISODIOS` SET ESTRELA_1 = 'Peter Dinklage' WHERE NOME_DO_EP = 'Hardhome';

UPDATE `EPISODIOS` SET ESTRELA_1 = 'Peter Dinklage' WHERE NOME_DO_EP = 'Unbowed, Unbent, Unbroken';

UPDATE `EPISODIOS` SET ESTRELA_1 = 'Peter Dinklage' WHERE NOME_DO_EP = 'High Sparrow';

UPDATE `EPISODIOS` SET ESTRELA_1 = 'Peter Dinklage' WHERE NOME_DO_EP = 'Battle of the Bastards';

UPDATE `EPISODIOS` SET ESTRELA_1 = 'Peter Dinklage' WHERE NOME_DO_EP = 'No One';

UPDATE `EPISODIOS` SET ESTRELA_1 = 'Peter Dinklage' WHERE NOME_DO_EP = 'The Red Woman';

UPDATE `EPISODIOS` SET ESTRELA_1 = 'Nikolaj Coster-Waldau' WHERE NOME_DO_EP = 'The Broken Man';

UPDATE `EPISODIOS` SET ESTRELA_1 = 'Peter Dinklage' WHERE NOME_DO_EP = 'Home';

UPDATE `EPISODIOS` SET ESTRELA_1 = 'Peter Dinklage' WHERE NOME_DO_EP = 'The Door';

UPDATE `EPISODIOS` SET ESTRELA_1 = 'Peter Dinklage' WHERE NOME_DO_EP = 'Oathbreaker';

UPDATE `EPISODIOS` SET ESTRELA_1 = 'Peter Dinklage' WHERE NOME_DO_EP = 'The Winds of Winter';

UPDATE `EPISODIOS` SET ESTRELA_1 = 'Peter Dinklage' WHERE NOME_DO_EP = 'Book of the Stranger';

UPDATE `EPISODIOS` SET ESTRELA_1 = 'Nikolaj Coster-Waldau' WHERE NOME_DO_EP = 'Blood of My Blood';

UPDATE `EPISODIOS` SET ESTRELA_1 = 'Peter Dinklage' WHERE NOME_DO_EP = 'Stormborn';

UPDATE `EPISODIOS` SET ESTRELA_1 = 'Peter Dinklage' WHERE NOME_DO_EP = 'Beyond the Wall';

UPDATE `EPISODIOS` SET ESTRELA_1 = 'Peter Dinklage' WHERE NOME_DO_EP = 'The Spoils of War';

UPDATE `EPISODIOS` SET ESTRELA_1 = 'Peter Dinklage' WHERE NOME_DO_EP = 'The Dragon and the Wolf';

UPDATE `EPISODIOS` SET ESTRELA_1 = 'Peter Dinklage' WHERE NOME_DO_EP = 'Eastwatch';

UPDATE `EPISODIOS` SET ESTRELA_1 = 'Peter Dinklage' WHERE NOME_DO_EP = 'Dragonstone';

UPDATE `EPISODIOS` SET ESTRELA_1 = 'Peter Dinklage' WHERE NOME_DO_EP = "The Queen's Justice";

UPDATE `EPISODIOS` SET ESTRELA_1 = 'Peter Dinklage' WHERE NOME_DO_EP = 'The Iron Throne';

UPDATE `EPISODIOS` SET ESTRELA_1 = 'Peter Dinklage' WHERE NOME_DO_EP = 'The Bells';

UPDATE `EPISODIOS` SET ESTRELA_1 = 'Peter Dinklage' WHERE NOME_DO_EP = 'The Last of the Starks';

UPDATE `EPISODIOS` SET ESTRELA_1 = 'Peter Dinklage' WHERE NOME_DO_EP = 'The Long Night';

UPDATE `EPISODIOS` SET ESTRELA_1 = 'Peter Dinklage' WHERE NOME_DO_EP = 'Winterfell';

UPDATE `EPISODIOS` SET ESTRELA_1 = 'Peter Dinklage' WHERE NOME_DO_EP = 'A Knight of the Seven Kingdoms';

/* UMA DAS CONSULTAS BASEADAS NAS PERGUNTAS*/
SELECT count(ESTRELA_1), ESTRELA_1 FROM `EPISODIOS` GROUP BY ESTRELA_1 HAVING COUNT(ESTRELA_1) >= 1 ORDER BY count(ESTRELA_1) DESC;



