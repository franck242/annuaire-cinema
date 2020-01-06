-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Lun 06 Janvier 2020 à 11:57
-- Version du serveur :  10.3.21-MariaDB-1:10.3.21+maria~bionic-log
-- Version de PHP :  7.2.24-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `annuaire-film`
--

-- --------------------------------------------------------

--
-- Structure de la table `films`
--

CREATE TABLE `films` (
  `id` int(11) NOT NULL,
  `titre` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `année-de-sortie` int(11) NOT NULL,
  `genre` varchar(25) NOT NULL,
  `réalisateur` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `films`
--

INSERT INTO `films` (`id`, `titre`, `description`, `année-de-sortie`, `genre`, `réalisateur`) VALUES
(1, 'asterix et obelix mission cleopatre', 'Cléopâtre,la reine d’Égypte, décide, pour défier l\'Empereur romain Jules César, de construire en trois mois un palais somptueux en plein désert. Si elle y parvient, celui-ci devra concéder publiquement que le peuple égyptien est le plus grand de tous les peuples. Pour ce faire, Cléopâtre fait appel à Numérobis, un architecte d\'avant-garde plein d\'énergie. S\'il réussit, elle le couvrira d\'or. S\'il échoue, elle le jettera aux crocodiles', 2002, 'comedie', 'Alain Chabat'),
(2, 'inglorious_basterds', 'L\'histoire se déroule en France durant la Seconde Guerre mondiale et narre la vengeance d\'une jeune Juive, Shosanna Dreyfus (Mélanie Laurent), dont la famille a été assassinée par les nazis ainsi que les plans d\'un commando de soldats juifs alliés menés par le lieutenant Aldo Raine (Brad Pitt), envoyés en Europe occupée pour éliminer le plus de nazis possible', 2009, 'drame', 'Quentin Tarantino'),
(3, 'la cite de la peur', 'Le film commence sur une projection des dernières minutes de Red Is Dead, un film d\'horreur nanardesque dans lequel un tueur en série communiste tue ses victimes à la faucille et au marteau, à l\'occasion du premier jour du festival de Cannes. Lorsque le générique de fin apparaît, tout le monde a déjà quitté la salle au grand désespoir d\'Odile Deray, l\'attachée de presse, qui essaie de retenir un dernier critique de cinéma en lui suppliant d\'écrire un bon papier', 1994, 'comedie', 'Alain Berbérian'),
(4, 'star wars la revanche des sith', 'Grand méchant de La Revanche des Sith, le Général Grievous n\'est pas inconnu des fans de la saga. Intronisé dans la série animée Star Wars : Clone wars, ce tueur de Jedi doté de plusieurs bras et paré des sabres-laser de ses victimes est l\'une des figures phares des Guerres Cloniques', 2005, 'Science-fiction', 'George Lucas'),
(5, 'Interstellar', 'Dans un futur proche, la Terre est de moins en moins accueillante pour l\'humanité qui connaît une grave crise alimentaire. Le film raconte les aventures d\'un groupe d\'explorateurs qui utilise une faille récemment découverte dans l\'espace-temps afin de repousser les limites humaines et partir à la conquête des distances astronomiques dans un voyage interstellaire', 2014, 'fantasy', 'Christopher Nolan'),
(6, 'Inception', 'Dom Cobb est un voleur expérimenté dans l\'art périlleux de `l\'extraction\' : sa spécialité consiste à s\'approprier les secrets les plus précieux d\'un individu, enfouis au plus profond de son subconscient, pendant qu\'il rêve et que son esprit est particulièrement vulnérable. Très recherché pour ses talents dans l\'univers trouble de l\'espionnage industriel, Cobb est aussi devenu un fugitif traqué dans le monde entier. Cependant, une ultime mission pourrait lui permettre de retrouver sa vie d\'avant\",\"Dom Cobb est un voleur expérimenté dans l\'art périlleux de `l\'extraction\' : sa spécialité consiste à s\'approprier les secrets les plus précieux d\'un individu, enfouis au plus profond de son subconscient, pendant qu\'il rêve et que son esprit est particulièrement vulnérable. Très recherché pour ses talents dans l\'univers trouble de l\'espionnage industriel, Cobb est aussi devenu un fugitif traqué dans le monde entier. Cependant, une ultime mission pourrait lui permettre de retrouver sa vie d\'avant', 2010, 'fantasy', 'Chirstopher Nolan'),
(7, 'Venom', 'L\'un des personnages les plus célèbres et les plus complexes de Marvel occupe le devant de la scène alors qu\'Eddie Brock (Tom Hardy) devient l\'hôte du symbiote alien Venom. En tant que journaliste, Eddie a essayé de faire tomber le célèbre fondateur de la Life Foundation, le génie Carlton Drake (Riz Ahmed) et cette obsession a ruiné sa carrière et sa relation avec sa petite amie, Anne Weying (Michelle Williams). Où Eddie finit-il et Venom commence-t-il ?', 2018, 'fantasy', 'Christopher Nolan'),
(8, 'Harry Potter', 'Orphelin, Harry Potter a été recueilli à contrecœur par son oncle Vernon et sa tante Pétunia. À l\'approche de ses 11 ans, Harry ne s\'attend à rien de particulier – ni carte, ni cadeau, ni même un goûter d\'anniversaire. Et pourtant, c\'est à cette occasion qu\'il découvre qu\'il est le fils de deux puissants magiciens et qu\'il possède lui aussi d\'extraordinaires pouvoirs. Quand on lui propose d\'intégrer Poudlard, la prestigieuse école de sorcellerie, il trouve enfin le foyer et la famille qui lui ont toujours manqué… et s\'engage dans l\'aventure de sa vie', 2001, 'fantasy', 'Chris Columbus'),
(9, '\"ça', 'Une créature sans nom, Ca, répand la terreur et la mort dans la petite ville de Derry. Jusqu\'à ce qu\'une bande d\'enfants mette fin aux agissements du monstre. Trente plus tard, les sept amis se réunissent à Derry : Ca est revenu...', 1990, 'fantasy', 'Tommy Lee Wallace'),
(10, 'Le seigneur des anneaux les deux_tours', 'Après la mort de Boromir et la disparition de Gandalf, la Communauté s\'est scindée en trois. Perdus dans les collines d\'Emyn Muil, Frodon et Sam découvrent qu\'ils sont suivis par Gollum, une créature versatile corrompue par l\'Anneau. Celui-ci promet de conduire les Hobbits jusqu\'à la Porte Noire du Mordor. A travers la Terre du Milieu, Aragorn, Legolas et Gimli font route vers le Rohan, le royaume assiégé de Theoden. Cet ancien grand roi, manipulé par l\'espion de Saroumane, le sinistre Langue de Serpent, est désormais tombé sous la coupe du malfaisant Magicien. Eowyn, la nièce du Roi, reconnaît en Aragorn un meneur d\'hommes. Entretemps, les Hobbits Merry et Pippin, prisonniers des Uruk-hai, se sont échappés et ont découvert dans la mystérieuse Forêt de Fangorn un allié inattendu : Sylvebarbe, gardien des arbres, représentant d\'un ancien peuple végétal dont Saroumane a décimé la forêt...', 2002, 'Fantastique-Antique ', 'Peter Jackson'),
(11, 'Le seigneur des anneaux le retour du roi', 'Les armées de Sauron ont attaqué Minas Tirith, la capitale de Gondor. Jamais ce royaume autrefois puissant n\'a eu autant besoin de son roi. Mais Aragorn trouvera-t-il en lui la volonté d\'accomplir sa destinée ?Tandis que Gandalf s\'efforce de soutenir les forces brisées de Gondor, Théoden exhorte les guerriers de Rohan à se joindre au combat. Mais malgré leur courage et leur loyauté, les forces des Hommes ne sont pas de taille à lutter contre les innombrables légions d\'ennemis qui s\'abattent sur le royaume...Chaque victoire se paye d\'immenses sacrifices. Malgré ses pertes, la Communauté se jette dans la bataille pour la vie, ses membres faisant tout pour détourner l\'attention de Sauron afin de donner à Frodon une chance d\'accomplir sa quête.Voyageant à travers les terres ennemies, ce dernier doit se reposer sur Sam et Gollum, tandis que l\'Anneau continue de le tenter...,17', 2003, 'Fantastique-Aventure', 'Peter Jackson'),
(12, 'Sausage_Party', 'Une petite saucisse s\'embarque dans une dangereuse quête pour découvrir les origines de son existence...', 2016, 'Comédie-Animation', 'Conrad Vernon'),
(13, 'Scarface', 'En 1980, Tony Scarface Montana bénéficie d\'une amnistie du gouvernement cubain pour retourner en Floride. Ambitieux et sans scrupules, il élabore un plan pour éliminer un caïd de la pègre et prendre la place qu\'il occupait sur le marché de la drogue.', 1984, 'Action-Drame', 'Brian De Palma'),
(14, 'Reservoir-dog', 'Après un hold-up manqué, des cambrioleurs de haut vol font leurs comptes dans une confrontation violente, pour découvrir lequel d\'entre eux les a trahis.', 2009, 'Policier-Thriller', 'Quentin Tarentino'),
(15, 'Le parrain', 'En 1945, à New York, les Corleone sont une des cinq familles de la mafia. Don Vito Corleone,parrain de cette famille, marie sa fille à un bookmaker. Sollozzo,parrain de la famille Tattaglia, propose à Don Vito une association dans le trafic de drogue, mais celui-ci refuse. Sonny, un de ses fils, y est quant à lui favorable.', 1972, 'drame', 'Francis Ford Coppola'),
(16, 'the raid 2', 'Après un combat sans merci pour s’extirper d’un immeuble rempli de criminels et de fous furieux, laissant derrière lui des monceaux de cadavres de policiers et de dangereux truands, Rama, jeune flic de Jakarta, pensait retrouver une vie normale, avec sa femme et son tout jeune fils…. Mais il se trompait', 2014, 'Action', 'gareth evans'),
(17, 'batman-the-dark-knight-rises', 'Il y a huit ans,Batman a disparu dans la nuit : lui qui était un héros est alors devenu un fugitif. S\'accusant de la mort du procureur-adjoint Harvey Dent, le Chevalier Noir a tout sacrifié au nom de ce que le commissaire Gordon et lui-même considéraient être une noble cause', 2012, 'action', 'christopher Nolan'),
(18, 'bad boy', 'Si Mike Lowrey est un séducteur invéteré héritier d\'une fortune et policier par passion son collègue et ami Marcus Burnett est un homme rangé marié et père de famille', 1995, 'action', 'michael bay'),
(19, 'training_day', 'Jake Hoyt est une nouvelle recrue de la police de Los Angeles. Décidé à devenir inspecteur, il sollicite une mise à l\'essai de 24 heures auprès du sergent chef Alonzo Harris, un vétéran de la lutte antidrogue qui opère depuis douze ans dans les quartiers les plus chauds de la ville', 2001, 'action', 'antoine fuqua'),
(20, 'le seigneur des anneaux la communauté_de l\'anneau', 'le jeune et timide Hobbit,Frodon Sacquet, hérite d\'un anneau. Bien loin d\'être une simple babiole, il s\'agit de l\'Anneau Unique, un instrument de pouvoir absolu qui permettrait à Sauron, le Seigneur des ténèbres, de régner sur la Terre du Milieu et de réduire en esclavage ses peuples', 2001, 'fantastic', 'peter jackson');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `films`
--
ALTER TABLE `films`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `films`
--
ALTER TABLE `films`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
