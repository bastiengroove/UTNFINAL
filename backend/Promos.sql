-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:8889
-- Tiempo de generación: 05-09-2024 a las 01:07:44
-- Versión del servidor: 8.0.35
-- Versión de PHP: 8.2.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `Promos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `novedades`
--

CREATE TABLE `novedades` (
  `id` int NOT NULL,
  `titulo` varchar(250) NOT NULL,
  `subtitulo` text NOT NULL,
  `cuerpo` text NOT NULL,
  `img_id` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `novedades`
--

INSERT INTO `novedades` (`id`, `titulo`, `subtitulo`, `cuerpo`, `img_id`) VALUES
(1, 'LUPE', '\"Genderfluid\"', 'Con una carrera marcada por la versatilidad y la independencia, Lupe aparece como una artista diferente, difícil de encasillar. En la charla que mantuvimos, la productora y live performer se abrió sobre su trayectoria, sus inspiraciones y el enfoque de su nuevo sello discográfico, Emotiva.\r\n\r\nLupe comenzó su relación con la música a una edad muy temprana: \"Creo que hay dos rutas o dos caminos. Hay uno que es mi conexión con la música, que es desde muy chiquita, cuando daba clases de guitarra. Fue mi primer trabajo\". Su incursión en la música electrónica se dio poco después, cuando profundizó en lo digital, la computadora. La transición hacia la electrónica no fue abrupta: \"Pasé por una brecha entre los 18 y los ventipico, entre el indie y un lugar más intermedio, que no es ni el indie como tal, ni tampoco la electrónica 100%\". Esta fusión de estilos es evidente en su música, que, aunque tiene formato canción, es profundamente electrónica.\r\n\r\nLa artista nacida en Buenos Aires destaca la importancia de la independencia en su proceso creativo: \"Me pasó por una cuestión de independencia económica”, cuenta que no tenía la posibilidad de pagar a productores. También hizo hincapié en que no sentía absoluta comodidad con el hecho de que la mayoría de los productores eran varones, ella quería romper con eso. Agregó una analogía interesante: “¿Viste como los psicólogos hablan de la transferencia como forma de poder entenderte? Bueno, con las personas que producían no tenía esa transferencia, existía una brecha que era muy complicada. Quizás, hoy en día lo podría hacer mejor porque estudié y de hecho vivo de enseñar producción, entonces tengo todo un lenguaje con el cual me puedo comunicar mejor y capaz ahora sí puedo colaborar con alguien y me gusta que la otra persona produzca, no tengo un recelo con eso, pero al principio era una cuestión de poder hacer algo propio sin la necesidad de depender tanto de los demás”. Esta independencia la ha llevado a desarrollar habilidades de producción avanzadas.\r\n\r\nEmotiva, el sello que estrena por estos días, es una extensión de la filosofía de Lupe sobre la música y la inclusión. \"La idea es romper con las estructuras limitantes... Enseño música y veo que muchos estudiantes aprenden un patrón y lo repiten, o no saben qué hacer si no lo aprenden\". Emotiva busca ser un espacio donde los artistas puedan explorar sin las restricciones de los géneros musicales tradicionales. Lupe extrapola la versatilidad que siente en su vida diaria, con el género, en cómo se siente. “Romper un poco el hielo y flexibilizar los sonidos, y que no sea un sello que diga vamos a hacer esto y esto. De repente sabés todo, como un mapa, y podés predecir todo”.\r\n\r\nEsto no significa que el género es mala palabra, de hecho, enfatizó en que no es un sello sin género, sino que es un sello de género fluido: “Yo no quiero que sea dogmático, quiero que el género sea una referencia. Que se pueda jugar y un artista pueda tanto hacer un tema más housero como algo que no sabe bien cómo definirlo, pero igual tiene su valor. Y aunque no se encasilla, está buenísimo escucharlo”. Aun así, Emotiva va a tener un lineamiento creativo, cierta coherencia: “Como pasa con cualquier obra de un sello, que se genera un match, básicamente, entre el sello y el artista”. Utilizó a Daniel Melero para hablar de esta característica dado que el artista tiene muchos álbumes donde tiene un abanico de posibilidades gigantes para elegir, desde ambient a techno o pop. “Esa libertad para decir, bueno, es música”, comenta.', 'rci1a8yhsbbiyt9qoq4e'),
(2, 'SOUND PROCESS', 'Presenta su primer álbum', 'Con una enorme discografía en su haber y 20 años de carrera, Sound Process, decidió editar su primer álbum bajo el título The Purpose Quest. En este especial momento para un artista, nos encontramos en una charla en la que profundizamos sobre el proceso creativo y el sonido detrás de este lanzamiento.\r\n\r\n- ¿Qué significa para vos editar tu primer álbum después de tantos años de carrera?\r\n\r\nLa verdad que significa muchísimo. Estoy próximo a cumplir 20 años de mi primer lanzamiento y esta es una forma que encontré de redondear estas dos décadas y también es una forma de auto regalarme algo que siempre me pareció complejo de hacer. En todo este tiempo saqué decenas de EPs y singles pero el trabajo y dedicación que lleva armar un álbum es otra cosa. Desde lo más importante de todo que siempre es la música, elegir la estética, las plataformas de difusión, fecha de lanzamiento, armar la agenda de promoción pre y post lanzamiento, decidir a quién delegar la tarea del mastering, etc. Todo eso es muy difícil de realizar sólo. Por suerte tengo un equipo con el que trabajo hace años, que entendieron desde el minuto 1 para dónde quería ir con este lanzamiento y que me vienen apoyando en todo. Sin ellos este lanzamiento no sería ni la mitad de lo que es.\r\n\r\n- ¿Cómo fue el proceso creativo del disco?\r\n\r\nCreo que el proceso creativo comenzó a fines del 2022, principios del 2023, cuando Andrés Rego -con quien trabajo hace 17 años- me propuso hacer algo distinto. Ahí algo ya se disparó en mi cabeza y empezaron a aparecer ideas, no sólo en lo musical sino también en cuanto al concepto que quería para este proyecto. Justo en esa época estaba trabajando en algunos tracks y sentí que tenían cierta coherencia entre sí y sobre todo con la forma que estaba queriendo darle a esta historia, así que podría decirse que así comenzó todo.\r\n\r\n- ¿Cuáles con las características sonoras que definen al álbum?\r\n\r\nEn cuanto al sonido del álbum lo que traté desde un principio es lograr que suene lo más atemporal posible. Me gustan los álbums con sonidos innovadores y modernos por así decirlo, pero también me encanta la música que puede sonar bien hoy, dentro de 10 años o 20 años para atrás. No estoy asegurando que mi álbum tenga estas características, pero sí fue una de las cosas que me propuse intentar. Que los tracks los puedan usar djs de que tienen 20 o 30 años de carrera y djs mucho más jóvenes. Que abarque un espectro lo más amplio posible de gente.\r\n\r\nTraté de ir contando una historia, que se vaya desarrollando e intensificando a medida que lo vas escuchando, pero sin ser tan lineal. Hay algunos tracks como \"Late Night\" o \"Quest\" que decidí ponerlos en ese orden para bajar un poco la intensidad y generar una especie de \"quiebre sonoro\" a esa altura de la escucha. El álbum en general es bastante deep, siempre moviéndose dentro del house y con algunos elementos minimal y tech por momentos.\r\n\r\n- ¿Por qué decidiste editarlo independientemente vía Bandcamp?\r\n\r\n Bandcamp es una plataforma súper interesante y que está llena de buena música si uno busca bien. Música que hasta me animaría a decir, no está en otras plataformas y además una de las muchas cosas buenas que tiene es que no hay intermediarios entre la plataforma y el productor. Un porcentaje de cada venta queda para la plataforma y todo el resto va directo al artista. Además de eso te da la posibilidad de auto gestionar fecha de lanzamiento, el L&F de tu perfíl, determinar los precios de cada pista o del álbum entero y tiene muchísimas funciones más. Además de todas estas cosas mi idea es re-lanzar mi canal de Bandcamp con este álbum.\r\n\r\n ¿Cómo fue mutando tu sonido en estos 20 años?\r\n\r\nCreo que mi sonido fue mutando a la par de cómo fueron cambiando mis preferencias a la hora de poner música en mis dj sets. Hace 20 años, cuando comencé me inclinaba más por el progressive house y toda la música que venía de la industria musical de UK en los 00´s, con la que siempre me sentí identificado. Con el pasar de los años comencé a inclinarme más por el house clásico de los 90\'s y el acid, ya que aparecieron los viajes y pude abrir mi cabeza y radar a sonidos que antes no tenía tan escuchados.\r\n\r\nThe Purpose Quest ya se puede adquirir en formato digital.\r\n\r\nEntrevista: Damián Levensohn', 'yb0pw6j0rei6ngqsopkl'),
(3, 'CARLOS WILLENGTON', '\"Nunca me propuse ser viral\"', 'Durante la pandemia, el DJ uruguayo Carlos Willengton, saltó a la fama en redes sociales a través de videos caseros donde mostraba su selección de vinilos house de décadas pasadas. Con una popularidad repentina pasó a girar por el mundo, aprovechando su reciente show en Buenos Aires nos encontramos con él para hablar sobre su exponencial crecimiento y su background.\r\n\r\n- Tu camino fue bastante particular, haciéndote viral en redes sociales a través de vivos y reels en la pandemia ¿Cómo fueron esos primeros pasos y cual es la importancia que le das al formato vinilo?\r\n\r\nEmpecé a hacer directos por Facebook para la gente de mi entorno y después de la transmisión publicaba los momentos de las mezclas en IG. Noté que entraba gente de otros países y poco a poco empecé a subir en seguidores.\r\n\r\nNunca me propuse ser viral, fue algo que llegó y yo fui el primer sorprendido... Yo solo me puse delante de los Technic\'s a pinchar porque es lo que hice desde mis comienzos como DJ y el vinilo es el formato que más me gusta. No tengo nada contra lo digital y tampoco sabía que a tanta gente le pudiera gustar verme con los vinilos y valorar la dificultad que tiene pinchar con ese formato. Lo cierto es que una vez que estoy tan identificado con el vinilo no puedo abandonarlo y tampoco tengo intención de hacerlo.\r\n\r\n- Siempre se te ve muy enérgico tanto en tus sets de estudio como en la cabina de clubs ¿Cómo sentís esa dinámica performatica?\r\n\r\nAl principio estaba muy parado al hacer los sets pero en alguna ocasión empecé a acompañar los temas con gesticulaciones o con movimientos de las manos y noté que me lo pasaba mejor así. Y en las actuaciones también se trata de eso pero se acentúa más por la energía que se comparte con el público.\r\n\r\n- Tenes una forma particular de pinchar, noté que no soles zapatear y haces transiciones cortas ¿Cuál es tu enfoque en cuanto a la técnica?\r\n\r\nCuadrar los ritmos es una habilidad para la cual se requiere mucho oído pero también la práctica ayuda a afinar y cuanto más pinchas, mejor te sale. Las mezclas son cortas cuando la ocasión lo requiere y otras veces van 2 temas a la vez durante más de 1 minuto. La técnica es solo un instrumento para poder transmitir y desarrollar un set. Utilizo diferentes recursos según la situación.\r\n\r\n- Tus selecciones musicales se basan mayormente en clásicos ¿Por donde pasa esa decisión?\r\n\r\nEs porque comencé pinchando mi colección en la cual la gran mayoría de discos son clásicos de otras décadas y quienes me siguen disfrutan con eso. Intento darle toques de frescura a lo retro y me siento cómodo con esa combinación.\r\n\r\n- Vos no producís ¿Sentís eso como una limitación dentro del mundo de la música electrónica?\r\n\r\nEstoy orgulloso de que se me valore por como pongo los discos. Ahora mismo ni me planteo producir para poder figurar más. Tener el respeto de mucha gente que valora el djing en sí es lo mejor que me puede pasar.\r\n\r\n- Los últimos años estás girando mucho ¿Cómo te llevas con eso?\r\n\r\nBien, hace falta disciplina y la tengo y es una gran satisfacción recibir el cariño de la gente en puntos del planeta tan distantes entre sí. Además, cada lugar que visito es una nueva experiencia y en ocasiones resulta apasionante.\r\n\r\nCarlos Willengton se presentó el pasado 24 de agosto en Crobar para el ciclo Fusion.', 'aab1ts5hxfftwzn6dx86'),
(6, 'FOUR TET SIENDO FOUR TET', 'Buenos Aliens en Londres', 'El sábado 10 de agosto Buenos Aliens llegó a Londres para presenciar el evento \"Four Tet All Dayer\", donde el aclamado artista británico, además de realizar un set extendido, cura el resto de la artística. En esta nota podés leer la reseña de una tarde a la altura de las expectativas.\r\n\r\nLa carrera de Kieran Hebden aka Four Tet, es a esta altura, una de las mas reconocidas en el mundo electrónico. Unos 30 años de recorrido que lo posicionaron como un favorito del publico británico en primera instancia, para después trascender fronteras y convertirse también en un elegido por sus colegas -lo que se conoce como un artista de artistas-.\r\n\r\nSu camino tiene un par de signos distintivos. Uno es la mutación de su sonido, es a uno de los djs y productores que mejor le cabe la definición de ecléctico. Desde sus primeros discos experimentales que conjugaban IDM y jazz, a la ultima década que lo mostró adaptándose a la perfección a sonidos netamente de pista -pudiendo ir del house al techno o el bass-. Otro de los aspectos que los distinguen es la coherencia, por que a pesar de poder navegar casi por cualquier estilo, su música y sus sesiones suenan a él, no hay dudas cuando Four Tet está detrás de un álbum o de una cabina.\r\n\r\nLa carrera de Kieran Hebden aka Four Tet, es a esta altura, una de las mas reconocidas en el mundo electrónico. Unos 30 años de recorrido que lo posicionaron como un favorito del publico británico en primera instancia, para después trascender fronteras y convertirse también en un elegido por sus colegas -lo que se conoce como un artista de artistas-.\r\n\r\nSu camino tiene un par de signos distintivos. Uno es la mutación de su sonido, es a uno de los djs y productores que mejor le cabe la definición de ecléctico. Desde sus primeros discos experimentales que conjugaban IDM y jazz, a la ultima década que lo mostró adaptándose a la perfección a sonidos netamente de pista -pudiendo ir del house al techno o el bass-. Otro de los aspectos que los distinguen es la coherencia, por que a pesar de poder navegar casi por cualquier estilo, su música y sus sesiones suenan a él, no hay dudas cuando Four Tet está detrás de un álbum o de una cabina.\r\n\r\nLas 5hs de set de Kieran empezarían de manera ambiental, agregando elementos con el correr de los minutos hasta generar un clima que daría espacio al primer kick. Nutrido de un set up que incluye mixer Model1, CDJs, loopera y efectos -solo en algunos eventos usa este setting-, su DJset se convierte en algo que suena más a un live. Haciendo una constante de la inclusión y deconstrucción de melodías o vocales de sus tracks clásicos -sonaron Baby y Love Cry, por citar algunos-, transiciones largas y sorpresivas que suelen terminar de manera explosiva.\r\n\r\nAcompañado por un soundsystem demoledor, una correcta producción y unas ocho mil personas que lo agitaron de principio a fin, el contexto lo tenia todo para que el desarrollo del set sea inmejorable. De lo emotivo a lo contundente, Four  Tet viajó a través de estilos, nunca dejando de ser él. La esencia de Tet se vio en Londres, su ciudad, dejando en claro por que es uno de los hijos prodigios de uno de los puntos geográficos con mayor cultura musical del mundo.\r\n\r\nNota: Damián Levensohn\r\n\r\n', 'zcprpep6g5gtx63kgzhq');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int NOT NULL,
  `usuario` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `password`) VALUES
(1, 'sebastian', '81dc9bdb52d04dc20036dbd8313ed055'),
(2, 'camila', '81dc9bdb52d04dc20036dbd8313ed055');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `novedades`
--
ALTER TABLE `novedades`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `novedades`
--
ALTER TABLE `novedades`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
