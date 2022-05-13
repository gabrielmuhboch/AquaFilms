-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 13-Maio-2022 às 16:43
-- Versão do servidor: 10.4.17-MariaDB
-- versão do PHP: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `projetofilmes`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `favoritos`
--

CREATE TABLE `favoritos` (
  `id` int(11) NOT NULL,
  `idUsuario` varchar(100) NOT NULL,
  `idFilme` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `favoritos`
--

INSERT INTO `favoritos` (`id`, `idUsuario`, `idFilme`) VALUES
(12, '122', '13'),
(29, '122', '22'),
(30, '128', '36'),
(31, '128', '18'),
(32, '128', '15'),
(38, '122', '20'),
(42, '122', '21'),
(43, '122', '36'),
(44, '132', '54'),
(45, '132', '36'),
(46, '132', '32');

-- --------------------------------------------------------

--
-- Estrutura da tabela `filme`
--

CREATE TABLE `filme` (
  `id` int(11) NOT NULL,
  `Titulo` varchar(80) NOT NULL,
  `Genero` varchar(20) NOT NULL,
  `Ano` int(10) NOT NULL,
  `Duracao` varchar(20) NOT NULL,
  `Relevancia` float NOT NULL,
  `Sinopse` varchar(800) NOT NULL,
  `Trailer` varchar(400) NOT NULL,
  `Imagens` varchar(200) NOT NULL,
  `FilmeSerie` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `filme`
--

INSERT INTO `filme` (`id`, `Titulo`, `Genero`, `Ano`, `Duracao`, `Relevancia`, `Sinopse`, `Trailer`, `Imagens`, `FilmeSerie`) VALUES
(13, 'Bloodshot', 'Acao', 2020, '1h 49m', 4, 'Depois de ser morto em combate, o soldado Ray Garrison e trazido de volta a vida com um exercito de nanotecnologia em suas veias e poderes sobre-humanos: uma incrivel força e a habilidade de se curar instantaneamente. Sem memoria, ele esta decidido a descobrir a verdade sobre quem realmente e.', '<iframe width=\"426\" height=\"240\" src=\"https://www.youtube.com/embed/H-wkvQZGhoU\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Bloodshot.png', 'Filme'),
(14, 'The Map of Tiny Perfect Things', 'Romance', 2021, '1h 59m', 3.5, 'The Map of Tiny Perfect Things e um filme americano de drama de ficcao cientifica e comedia romantica dirigido por Ian Samuels e baseado na obra literaria de mesmo nome. O filme a estrelado por Kathryn Newton, Kyle Allen, Jermaine Harris, Anna Mikami, Josh Hamilton e Cleo Fraser.', '<iframe width=\"426\" height=\"240\" src=\"https://www.youtube.com/embed/ZmLxS3Wenu0\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'TheMapofTinyPerfectThings.png', 'Filme'),
(15, 'Convencao das Bruxas', 'Comedia', 2020, '1h 46m', 3.1, 'Em 1967, um jovem orfao vai morar com sua adoravel avo na cidade de Demopolis, no interior do estado do Alabama. La, o garoto e sua avo se deparam com glamorosas, porem diabolicas bruxas, e ela decide fugir, levando o menino para um resort costeiro. Porem, ao chegarem la, eles descobrem que uma grande reuniao, com bruxas de todo o mundo, esta acontecendo no local, e elas planejam transformar todas as crianças do mundo em ratos.', '<iframe width=\"426\" height=\"240\" src=\"https://www.youtube.com/embed/8TQLGcnJ3mc\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe', 'ConvencaoDasBruxas.png', 'Filme'),
(16, 'Milagre na Cela 7', 'Drama', 2019, '2h 12m', 2.5, 'Memo, um pastor de ovelhas com deficiencia mental, vive com sua filha e avo em uma vila na costa turca do mar Egeu. Um dia, sua vida e virada de cabeça para baixo quando a filha do comandante morre e Memo e acusado do assassinato e condenado a morte.', '<iframe width=\"426\" height=\"240\" src=\"https://www.youtube.com/embed/kipVc36vCTI\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'MilagreNaCela7.png', 'Filme'),
(17, 'Power Rangers - O Filme', 'Herois', 2017, '2h 4m', 3.7, 'A jornada de cinco adolescentes que devem buscar algo extraordinario quando eles tomam consciencia que a sua pequena cidade Angel Grove - e o mundo - estao a beira de sofrer um ataque alienigena. Escolhidos pelo destino, eles irao descobrir que sao os unicos que poderao salvar o planeta. Mas para isso, eles devem superar seus problemas pessoais e juntarem sua forças, antes que seja tarde demais.', '<iframe width=\"426\" height=\"240\" src=\"https://www.youtube.com/embed/5kIe6UZHSXw\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'PowerRangers.png', 'Filme'),
(18, 'Furia de Titas', 'Fantasia', 2010, '1h 48m', 3.8, 'Perseu descobre que a o filho mortal de Zeus, mas recusa-se a aceitar tal condicao. Ele encontra-se entre a batalha dos deuses e sem ajuda para salvar a cidade e sua familia da vingança de seu tio Hades, o deus do submundo. Sem nada a perder, Perseu lidera um grupo de guerreiros em uma perigosa missao para prevenir que Hades cause uma devastacao na Terra.', '<iframe width=\"426\" height=\"240\" src=\"https://www.youtube.com/embed/2Vxl3iHj4iI\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'FuriaDeTitas.png', 'Filme'),
(19, 'Peaky Blinders', 'Acao', 2013, '5 Temporadas', 4.9, 'Serie sobre uma familia de gangsteres na Inglaterra no começo do seculo 20.', '<iframe width=\"426\" height=\"240\" src=\"https://www.youtube.com/embed/JwXfVGjSz-4\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'PeakyBlinders.png', 'Serie'),
(20, 'The Purge', 'Acao', 2018, '2 Temporadas', 4, 'Durante um periodo de 12 horas em que todos os crimes sao permitidos, as vidas de um grupo de pessoas se cruzam por acaso. Nesse periodo, alguns se escondem e outros abraçam a violencia, seja por vingança, ganho pessoal, protecao ou prazer.', '<iframe width=\"426\" height=\"240\" src=\"https://www.youtube.com/embed/tSrBTW-4_0o\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'ThePurge.png', 'Serie'),
(21, 'Something in the Rain', 'Romance', 2018, '1 Temporada', 4.7, 'Something in The Rain e uma serie sul coreana. Ela foca no drama dos sentimentos de uma mulher de 35 anos em relacao ao irmao mais novo de sua melhor amiga quando ele volta para a Coreia do Sul apos um tempo trabalhando nos Estados Unidos.', '<iframe width=\"426\" height=\"240\" src=\"https://www.youtube.com/embed/7RGk6NXwbrY\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'SomethingintheRain.png', 'Serie'),
(22, 'Sky Rojo', 'Acao', 2021, '1 Temporada', 3.5, 'Fugindo de seu cafetao e seus capangas, tres mulheres embarcam em uma jornada em busca da liberdade.', '<iframe width=\"426\" height=\"240\" src=\"https://www.youtube.com/embed/rcLpkrAuFvQ\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'SkyRojo.png', 'Serie'),
(23, 'Gotham', 'Acao', 2014, '5 Temporadas', 4.6, 'O tenente James Gordon chega a Gotham com o intuito de combater a corrupcao. Gordon tenta fazer a diferenca e comeca investigando o assassinato de Thomas e Martha Wayne, cujas mortes deixaram orfao seu filho Bruce.', '<iframe width=\"426\" height=\"240\" src=\"https://www.youtube.com/embed/VwOPA2upeCA\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Gotham.png', 'Serie'),
(24, 'Minha Mãe É uma Peça', 'Comedia', 2013, '1h 24m', 4.6, 'Dona Herminia e uma mulher de meia idade, divorciada do marido, que a trocou por uma mais jovem. Hiperativa, ela nao larga o pe de seus filhos Marcelina e Juliano, que ja estao bem grandinhos. Um dia, apos descobrir que eles a consideram uma chata, resolve sair de casa sem avisar ninguem, deixando todos, de alguma forma, preocupados com o que teria acontecido. Mal sabem eles que a mae foi visitar a querida tia Zelia para desabafar suas tristezas do presente e recordar os bons tempos do passado.', '<iframe width=\"426\" height=\"240\" src=\"https://www.youtube.com/embed/HUZSuPqZ5w0\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'MinhaMaeEUmaPeca.png', 'Filme'),
(25, 'O Primeiro Homem', 'Drama', 2018, '2h 21m', 4.1, 'O astronauta norte-americano Neil Armstrong embarca em uma jornada histórica para se tornar o primeiro homem a pisar na Lua, em 1969. Os sacrifícios e custos de toda uma nação durante uma das mais perigosas missões na história das viagens espaciais.', '<iframe width=\"426\" height=\"240\" src=\"https://www.youtube.com/embed/IHuQSTPQY6E\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'OPrimeiroHomem.png', 'Filme'),
(26, 'Megamente', 'Herois', 2010, '1h 36m', 4.3, 'Embora seja o vilao mais brilhante que o mundo ja conheceu, Megamente e o menos bem-sucedido. Derrotado repetidamente pelo heroico Metro Man, ele fica surpreso quando finalmente consegue derrotar o seu inimigo de longa data. Porem, sem Metro Man, Megamente nao tem nenhum proposito na vida, entao ele cria um novo adversario que logo decide que e mais divertido ser um vilão que um heroi.', '<iframe width=\"426\" height=\"240\" src=\"https://www.youtube.com/embed/GTdFPPU8DGc\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Megamente.png', 'Filme'),
(27, 'Os Incríveis 2', 'Herois', 2018, '2h 5m', 4.4, 'A Mulher Elastica entra em acao para salvar o dia, enquanto o Sr. Incrivel enfrenta seu maior desafio ate agora: cuidar dos problemas de seus tres filhos.', '<iframe width=\"426\" height=\"240\" src=\"https://www.youtube.com/embed/zOZR0TRnSU8\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'OsIncriveis2.png', 'Filme'),
(28, 'Simplesmente Acontece', 'Romance', 2014, '1h 42m', 4.4, 'Alex e Rosie sao amigos inseparaveis que cresceram juntos em Londres, compartilhando entre si suas melhores experiencias. Tudo muda quando Alex ganha uma bolsa de estudos e passa a morar nos EUA. Separados, seus caminhos agora sao outros. Mas nos tempos de hoje e impossível não se conectar. E, em se tratando de amor, o dificil e fazer as escolhas certas.', '<iframe width=\"426\" height=\"240\" src=\"https://www.youtube.com/embed/AnMNYz7bxpY\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'SimplismenteAcontece.png', 'Filme'),
(29, 'O Curioso Caso de Benjamin Button', 'Romance', 2008, '2h 47m', 4.5, 'Benjamin Button e um homem que nasce idoso e rejuvenesce a medida que o tempo passa. Doze anos depois de seu nascimento, ele conhece Daisy, uma criança que entra e sai de sua vida enquanto cresce para ser dancarina. Embora tenha todos os tipos de aventuras incomuns, sua relacao com Daisy o faz acreditar que os dois se encontrarao no momento certo da vida.', '<iframe width=\"426\" height=\"240\" src=\"https://www.youtube.com/embed/p8ucIL2tLLo\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'BenjamimButton.png', 'Filme'),
(30, 'Para todos os Garotos que ja amei', 'Romance', 2018, '1h 39m', 4.2, 'Lara Jean Song Covey escreve cartas de amor secretas para todos os seus antigos paqueras. Um dia, as cartas são misteriosamente enviadas para os destinatarios, virando sua vida de cabeça para baixo.', '<iframe width=\"426\" height=\"240\" src=\"https://www.youtube.com/embed/CK-g0OqzQHQ\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'ParaTodosOsGarotosQueJaAmei.png', 'Filme'),
(31, 'Se Beber, Nao Case!', 'Comedia', 2009, '1h 48m', 4.4, 'Dois dias antes de seu casamento, Doug e tres amigos vao de carro ate Las Vegas para uma louca e memoravel despedida de solteiro. Quando os tres padrinhos acordam na manha seguinte, eles nao conseguem se lembrar de nada e notam que Doug desapareceu. Com pouco tempo de sobra, os amigos tentam refazer a noite anterior e encontrar Doug para que possam leva-lo de volta a Los Angeles a tempo de chegar ao altar.', '<iframe width=\"426\" height=\"240\" src=\"https://www.youtube.com/embed/jOQMBfWMMsU\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'SebeberNaoCase.png', 'Filme'),
(32, 'Minha Mae E uma Peça 2', 'Comedia', 2016, '2h', 4.1, 'Dona Herminia passa a apresentar um bem-sucedido programa de TV e fica rica. Porem, ela agora precisa lidar com um lar vazio, pois Juliano e Marcelina resolveram sair de casa. Para balancear, Garib, o primogenito, chega com o neto. Alem disso, tambem recebe uma longa visita da irma Lucia Helena, a ovelha negra da familia, que mora ha anos em Nova York.', '<iframe width=\"426\" height=\"240\" src=\"https://www.youtube.com/embed/9hyLbCV0Dxo\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'MinhaMaeEUmaPeca2.png', 'Filme'),
(33, 'Minha Mae e uma Peça 3', 'Comedia', 2019, '1h 51m', 4.6, 'Dona Herminia precisa se redescobrir e se reinventar porque seus filhos estao formando novas familias. Marcelina esta gravida e Juliano vai casar. Dona Herminia esta mais ansiosa do que nunca. Para completar as confusoes, Carlos Alberto, seu ex-marido, que esteve sempre por perto, agora resolve se mudar para o apartamento ao lado.', '<iframe width=\"426\" height=\"240\" src=\"https://www.youtube.com/embed/xpsjG3f6s4A\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'MinhaMaeEUmaPeca3.png', 'Filme'),
(34, 'Joao e Maria: Caçadores de Bruxas', 'Fantasia', 2013, '1h 38m', 4.1, 'Joao e Maria foram abandonados pelos pais na sombria floresta e acabam indo parar na casa de uma malvada bruxa. Eliminaram a malvada e viraram verdadeiros exterminadores de criaturas do mal. Apos o desaparecimento de varias crianças, os dois ja adultos sao contratados pelas autoridades locais para desvendar o misterio. So que eles nao imaginavam que essa nova missao iria coloca-los diante da terrivel Bruxa Negra.', '<iframe width=\"426\" height=\"240\" src=\"https://www.youtube.com/embed/szl-dqv8Y_M\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'JoaoEMaria.png', 'Filme'),
(35, 'Percy Jackson e o Ladrão de Raios', 'Fantasia', 2010, '1h 59m', 3.6, 'A vida do adolescente Percy Jackson, que esta sempre pronto para entrar em uma confusao, torna-se bem mais complicada quando ele descobre que e filho do deus grego Poseidon. Em um campo de treinamento para filhos das divindades, Percy aprende a tirar proveito de seus poderes divinos e se preparea para a maior aventura de sua vida.', '<iframe width=\"426\" height=\"240\" src=\"https://www.youtube.com/embed/R86InkfdboA\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'PercyJacksonLadrao.png', 'Filme'),
(36, 'Hércules', 'Fantasia', 1997, '1h 37m', 4.2, 'Hercules, filho dos deuses, foi capturado quando bebe por Hades e forçado a viver entre os mortais como metade homem e metade deus. Agora um adolescente, Hércules precisa realizar um rito de passagem na Terra para provar-se digno de viver com os deuses do Monte Olimpo. Com seu ajudante satiro e corajoso Filoctetes, Hercules deve aprender a usar sua força para derrotar uma serie de criaturas malignas.', '<iframe width=\"426\" height=\"240\" src=\"https://www.youtube.com/embed/ZvtspevZxpg\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Hercules.png', 'Filme'),
(53, 'Jogador', 'Herois', 2018, '1h 50', 4, 'Jogador sla', '<iframe width=\"1843\" height=\"761\" src=\"https://www.youtube.com/embed/_BHmun-2sq0\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'ThePurge.png', 'Filme'),
(58, 'teste', '', 0, '', 0, '', '', '', ''),
(59, 'teste', '', 0, '', 0, '', '', '', ''),
(60, 'teste', '', 0, '', 0, '', '', 'aaa.jpg', '');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `favoritos`
--
ALTER TABLE `favoritos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `filme`
--
ALTER TABLE `filme`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `favoritos`
--
ALTER TABLE `favoritos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT de tabela `filme`
--
ALTER TABLE `filme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
