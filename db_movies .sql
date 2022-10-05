-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 05, 2022 at 08:20 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_movies`
--

-- --------------------------------------------------------

--
-- Table structure for table `genders`
--

CREATE TABLE `genders` (
  `ID_GENERO` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `genders`
--

INSERT INTO `genders` (`ID_GENERO`, `nombre`) VALUES
(1, 'accion'),
(2, 'Drama'),
(3, 'Ficcion'),
(13, 'b');

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `ID` int(11) NOT NULL,
  `titulo` varchar(45) NOT NULL,
  `descripcion` text NOT NULL,
  `autor` varchar(45) NOT NULL,
  `fecha_estreno` varchar(255) NOT NULL,
  `imagen` text NOT NULL,
  `id_genero_fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`ID`, `titulo`, `descripcion`, `autor`, `fecha_estreno`, `imagen`, `id_genero_fk`) VALUES
(1, 'Titanic', 'Durante las labores de recuperación de los restos del famoso Titanic, una anciana norteamericana se pone en contacto con la expedición para acudir a una plataforma flotante instalada en el Mar del Norte y asistir \'in situ\' a la recuperación de sus recuerdos. A través de su memoria reviviremos los acontecimientos que marcaron el siniestro más famoso del siglo XX: el hundimiento del trasatlántico más lujoso del mundo, la máquina más sofisticada de su tiempo, considerada «insumergible», que sucumbió a las heladas aguas del Atlántico en abril de 1912, llevándose consigo la vida de mil quinientas personas, más de la mitad del pasaje. En los recueros de la anciana hay cabida para algo más que la tragedia, la historia de amor que vivió con un joven pasajero de tercera clase, un pintor aficionado que había ganado su pasaje en una partida las cartas en una taberna de Southampton.', 'James Cameron', '5/2/1998', 'https://www.themoviedb.org/t/p/w300_and_h450_bestv2/rVBIfNJZcTITcVbvgmtyPOF8CzD.jpg', 2),
(2, 'Thor: Love and Thunder', 'El Dios del Trueno emprende un viaje que no se parece en nada a lo que se ha enfrentado hasta ahora: una búsqueda de la paz interior. Pero el retiro de Thor se ve interrumpido por un asesino galáctico conocido como Gorr el Carnicero de Dioses. Para hacer frente a la amenaza, Thor solicita la ayuda de Valkiria, de Korg y de su ex novia Jane Foster que, para sorpresa de Thor, empuña su martillo mágico, Mjolnir, como la Poderosa Thor. Juntos, se embarcan en una aventura cósmica en la que tendrán que descubrir el misterio de la venganza del Carnicero de Dioses y detenerlo antes de que sea demasiado tarde.', 'Taika Waititi', '8/7/2022', 'https://www.themoviedb.org/t/p/w300_and_h450_bestv2/z9ajF6E39Hg2pXUofmUYgZHvdX.jpg', 1),
(4, 'Avatar', 'Año 2154. Jake Sully , un exmarine condenado a vivir en una silla de ruedas, sigue siendo, a pesar de ello, un auténtico guerrero. Precisamente por ello ha sido designado para ir a Pandora, donde algunas empresas están extrayendo un mineral extraño que podría resolver la crisis energética de la Tierra. Para contrarrestar la toxicidad de la atmósfera de Pandora, se ha creado el programa Avatar, gracias al cual los seres humanos mantienen sus conciencias unidas a un avatar: un cuerpo biológico controlado de forma remota que puede sobrevivir en el aire letal.', 'James Cameron', '23/9/2010', 'https://www.themoviedb.org/t/p/w300_and_h450_bestv2/nn7prZXNz3dgCV5jeShqqfHcU9F.jpg', 1),
(5, 'Jujutsu Kaisen 0 ', 'Yuta Okkotsu es un nervioso estudiante de instituto que sufre un grave problema: su amiga de la infancia Rika se ha convertido en una maldición y no le deja en paz. Como Rika no es una maldición cualquiera, su situación es percibida por Satoru Gojo, un profesor del instituto Jujutsu, una escuela donde los exorcistas noveles aprenden a combatir las maldiciones. Gojo convence a Yuta para que se matricule, pero ¿podrá aprender lo suficiente a tiempo para enfrentarse a la Maldición que le persigue?', 'Sunghoo Park', '24/3/2022', 'https://www.themoviedb.org/t/p/w300_and_h450_bestv2/chxmCUpq37dDSeyUAVrSADOfQMr.jpg', 1),
(9, 'Star Wars:Episodio III: La venganza de los Si', 'Último capítulo de la saga de Star Wars, en el que Anakin Skywalker definitivamente se pasa al lado oscuro. En el Episodio III aparecerá el General Grievous, un ser implacable mitad-alien mitad-robot, el líder del ejército separatista Droid. Los Sith son los amos del lado oscuro de la Fuerza y los enemigos de los Jedi. Ellos fueron prácticamente exterminados por los Jedi hace mil años, pero la orden del mal sobrevivió en la clandestinidad.', 'George Lucas', '19/5/2005 (AR)\r\n', 'https://www.themoviedb.org/t/p/w300_and_h450_bestv2/fen971QdTOagZEv4rAU3sjSlpj1.jpg', 3),
(10, 'Predator: La presa ', 'Ambientada hace 300 años en la Nación Comanche. Naru es una joven guerrera, feroz y altamente hábil, que se crió a la sombra de algunos de los cazadores más legendarios que deambulan por las Grandes Llanuras. Cuando el peligro amenaza su campamento, se dispone a proteger a su gente. La presa a la que acecha y, en última instancia, se enfrenta, resulta ser un depredador alienígena evolucionado con un arsenal técnicamente avanzado, lo que deriva en un enfrentamiento cruel y aterrador entre los dos adversarios.', 'Dan Trachtenberg', '5/8/2022 ', 'https://www.themoviedb.org/t/p/w300_and_h450_bestv2/sNAMqQ9T7YnXnvUSufeWzaRgK6Y.jpg', 1),
(11, 'Top Gun: Maverick', 'Después de más de 30 años de servicio como uno de los mejores aviadores de la Armada, Pete \"Maverick\" Mitchell se encuentra dónde siempre quiso estar, empujando los límites como un valiente piloto de prueba y esquivando el alcance en su rango, que no le dejaría volar emplazándolo en tierra. Cuando se encuentra entrenando a un destacamento de graduados de Top Gun para una misión especializada, Maverick se encuentra allí con el teniente Bradley Bradshaw, el hijo de su difunto amigo \"Goose\".', 'Jim Cash', '26/5/2022', 'https://www.themoviedb.org/t/p/w300_and_h450_bestv2/AlWpEpQq0RgZIXVHAHZtFhEvRgd.jpg', 1),
(12, 'The Batman', 'Cuando un asesino se dirige a la élite de Gotham con una serie de maquinaciones sádicas, un rastro de pistas crípticas envía Batman a una investigación en los bajos fondos. A medida que las pruebas comienzan a acercarse a su casa y se hace evidente la magnitud de los planes del autor, Batman debe forjar nuevas relaciones, desenmascarar al culpable y hacer justicia al abuso de poder y la corrupción que durante mucho tiempo han asolado Gotham City.', 'Matt Reeves', '2/3/2022', 'https://www.themoviedb.org/t/p/w300_and_h450_bestv2/mo7teil1qH0SxgLijnqeYP1Eb4w.jpg', 1),
(13, 'El hombre del norte ', 'El príncipe Amleth está a punto de convertirse en hombre pero, en ese momento, su tío asesina brutalmente a su padre y secuestra a la madre del niño. Dos décadas después, Amleth es un vikingo que tiene la misión de salvar a su madre.', 'Robert Eggers', '\r\n21/4/2022', 'https://www.themoviedb.org/t/p/w300_and_h450_bestv2/rdx0bIkwxW3EHvWn5kxZBFUT1Am.jpg', 1),
(14, 'Corazones De Hierro', 'Abril de 1945. Al mando del veterano sargento Wardaddy, una brigada de cinco soldados americanos a bordo de un tanque -el Fury- ha de luchar contra un ejército nazi al borde de la desesperación, pues los alemanes saben que su derrota estaba ya cantada por aquel entonces.', 'David Ayer', '14/1/2015', 'https://www.themoviedb.org/t/p/w300_and_h450_bestv2/kbtH5G8L8REzy72LkLmKYoBVaGv.jpg', 1),
(15, 'Interstellar', 'Narra las aventuras de un grupo de exploradores que hacen uso de un agujero de gusano recientemente descubierto para superar las limitaciones de los viajes espaciales tripulados y vencer las inmensas distancias que tiene un viaje interestelar.', 'Christopher Nolan', '\r\n6/11/2014', 'https://www.themoviedb.org/t/p/w300_and_h450_bestv2/nrSaXF39nDfAAeLKksRCyvSzI2a.jpg', 3),
(16, 'Matrix ', 'Thomas Anderson lleva una doble vida: por el día es programador en una importante empresa de software, y por la noche un hacker informático llamado Neo. Su vida no volverá a ser igual cuando unos misteriosos personajes le inviten a descubrir la respuesta a la pregunta que no le deja dormir: ¿qué es Matrix?', 'Lana Wachowski', '10/6/1999', 'https://www.themoviedb.org/t/p/w300_and_h450_bestv2/qK76PKQLd6zlMn0u83Ej9YQOqPL.jpg', 3),
(17, 'Regreso al futuro. Parte II', 'Marty y Doc vuelven a hacerlo en esta alocada secuela del éxito de taquilla de 1985, ya que el dúo de viajeros en el tiempo se dirige al 2015 para cortar de raíz algunos problemas de la familia McFly. Pero las cosas salen mal gracias al matón Biff Tannen y un molesto almanaque deportivo. En un último intento por aclarar las cosas, Marty se encuentra con destino a 1955 y cara a cara con sus padres adolescentes, nuevamente.', 'Robert Zemeckis', '28/12/1989', 'https://www.themoviedb.org/t/p/w300_and_h450_bestv2/dD9UL43dn1LTInOV5MtSyxXGbE6.jpg', 3),
(18, 'RoboCop', 'Parte hombre, parte máquina. El futuro refuerzo de la ley.', 'Paul Verhoeven', '17/7/1987', 'https://www.themoviedb.org/t/p/w300_and_h450_bestv2/udwJHvkVR7BbNTRgSawql0jt4dG.jpg', 3),
(19, 'El padrino ', 'Don Vito Corleone, conocido dentro de los círculos del hampa como \'El Padrino\', es el patriarca de una de las cinco familias que ejercen el mando de la Cosa Nostra en Nueva York en los años cuarenta. Don Corleone tiene cuatro hijos: una chica, Connie, y tres varones; Sonny, Michael y Fredo. Cuando el Padrino reclina intervenir en el negocio de estupefacientes, empieza una cruenta lucha de violentos episodios entre las distintas familias del crimen organizado.', 'Francis Ford Coppola', '24/11/2011 ', 'https://www.themoviedb.org/t/p/w300_and_h450_bestv2/wLXd1Cd0XW7DhXayfC0Ok5ago9r.jpg', 2),
(20, 'Cadena perpetua', 'Acusado del asesinato de su mujer, Andrew Dufresne, tras ser condenado a cadena perpetua, es enviado a la prisión de Shawshank. Con el paso de los años conseguirá ganarse la confianza del director del centro y el respeto de sus compañeros presidiarios, especialmente de Red, el jefe de la mafia de los sobornos.\r\n\r\n', 'Frank Darabont', '\r\n23/3/1995 ', 'https://www.themoviedb.org/t/p/w300_and_h450_bestv2/dc1fX265fZIIY5Hab8I7CdETyJy.jpg', 2),
(21, 'El padrino. Parte II', 'Continuación de la saga de los Corleone con dos historias paralelas: la elección de Michael Corleone como jefe de los negocios familiares y los orígenes del patriarca, el ya fallecido Don Vito, primero en Sicilia y luego en Estados Unidos, donde, empezando desde abajo, llegó a ser un poderosísimo jefe de la mafia de Nueva York.', 'Francis Ford Coppola', '20/12/1974', 'https://www.themoviedb.org/t/p/w300_and_h450_bestv2/mbry0W5PRylSUHsYzdiY2FSJwze.jpg', 2),
(22, 'La lista de Schindler ', '    \r\n    \r\n    editado', '                                             ', '24/2/1994', 'https://www.themoviedb.org/t/p/w300_and_h450_bestv2/3Ho0pXsnMxpGJWqdOi0KDNdaTkT.jpg', 2),
(26, 'dada', '    \r\n    dad', 'adadad', 'ada', 'dadada', 13),
(27, 'dadad', '    \r\n    adada', 'dadadad', 'adadad', 'dadad', 13);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `contrasenia` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `genders`
--
ALTER TABLE `genders`
  ADD PRIMARY KEY (`ID_GENERO`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `id_genero_fk` (`id_genero_fk`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `genders`
--
ALTER TABLE `genders`
  MODIFY `ID_GENERO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `movies`
--
ALTER TABLE `movies`
  ADD CONSTRAINT `movies_ibfk_1` FOREIGN KEY (`id_genero_fk`) REFERENCES `genders` (`ID_GENERO`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
