USE [bd_mega_hub]
GO
/****** Object:  User [db_user]    Script Date: 23/08/2024 11:00:34 ******/
CREATE USER [db_user] FOR LOGIN [db_user] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [db_user]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [db_user]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [db_user]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [db_user]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [db_user]
GO
ALTER ROLE [db_datareader] ADD MEMBER [db_user]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [db_user]
GO
ALTER ROLE [db_denydatareader] ADD MEMBER [db_user]
GO
ALTER ROLE [db_denydatawriter] ADD MEMBER [db_user]
GO
/****** Object:  Table [dbo].[contenido]    Script Date: 23/08/2024 11:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contenido](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[clave] [varchar](100) NOT NULL,
	[tipo] [varchar](100) NOT NULL,
	[nombre] [varchar](400) NOT NULL,
	[imagen] [varchar](600) NOT NULL,
	[descripcion] [varchar](600) NOT NULL,
	[video] [varchar](600) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[eliminado]    Script Date: 23/08/2024 11:00:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[eliminado](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_usuario] [int] NOT NULL,
	[id_contenido] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[favorito]    Script Date: 23/08/2024 11:00:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[favorito](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_usuario] [int] NOT NULL,
	[id_contenido] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[genero]    Script Date: 23/08/2024 11:00:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[genero](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](100) NOT NULL,
	[imagen] [varchar](600) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuario]    Script Date: 23/08/2024 11:00:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuario](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[correo] [varchar](300) NOT NULL,
	[username] [varchar](100) NOT NULL,
	[password] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[contenido] ON 

INSERT [dbo].[contenido] ([id], [clave], [tipo], [nombre], [imagen], [descripcion], [video]) VALUES (1, N'anillo', N'1', N'El Señor de los Anillos', N'anillos.png', N'Una épica trilogía basada en la obra de J.R.R. Tolkien, que sigue la misión del hobbit Frodo Baggins y sus compañeros para destruir el Anillo Único y derrotar al oscuro señor Sauron. La serie combina magia, aventuras y batallas épicas en un mundo imaginario lleno de criaturas fantásticas.', N'https://www.youtube.com/watch?v=JdgNa7QKc3E')
INSERT [dbo].[contenido] ([id], [clave], [tipo], [nombre], [imagen], [descripcion], [video]) VALUES (2, N'harry', N'1', N'Harry Potter y la Piedra Filosofal', N'harry_potter.png', N'El joven Harry Potter descubre en su undécimo cumpleaños que es un mago y asiste a la escuela de magia Hogwarts. Junto a sus nuevos amigos, Hermione y Ron, enfrenta desafíos y descubre la verdad sobre sus padres y el oscuro mago que los mató.', N'https://www.youtube.com/watch?v=WE4AJuIvG1Y')
INSERT [dbo].[contenido] ([id], [clave], [tipo], [nombre], [imagen], [descripcion], [video]) VALUES (3, N'endgame', N'2', N'Los Vengadores: EndGame', N'endgame.png', N'Los Vengadores se reúnen para deshacer el daño causado por Thanos en la batalla final por el universo. Tras los eventos devastadores de "Infinity War," deben viajar en el tiempo y enfrentarse a su mayor desafío para restaurar el equilibrio y salvar a sus seres queridos.', N'https://www.youtube.com/watch?v=Oy_SER6dfK4')
INSERT [dbo].[contenido] ([id], [clave], [tipo], [nombre], [imagen], [descripcion], [video]) VALUES (4, N'toy', N'3', N'Toy Story', N'toy_story.png', N'La primera película de Pixar sigue a Woody, un vaquero de juguete, y Buzz Lightyear, un astronauta de plástico, mientras intentan superar sus diferencias y trabajar juntos cuando se encuentran en peligro. La película explora el mundo de los juguetes y sus aventuras cuando los humanos no están mirando.', N'https://www.youtube.com/watch?v=dRb0VW14IZY')
INSERT [dbo].[contenido] ([id], [clave], [tipo], [nombre], [imagen], [descripcion], [video]) VALUES (5, N'interstellar', N'4', N'Interstellar', N'inter.png', N'Un grupo de astronautas viaja a través de un agujero de gusano en busca de un nuevo hogar para la humanidad, que está al borde de la extinción en la Tierra. La película explora temas de amor, sacrificio y la relatividad del tiempo, con visuales impresionantes y una narrativa emocional.', N'https://www.youtube.com/watch?v=UoSSbmD9vqc')
INSERT [dbo].[contenido] ([id], [clave], [tipo], [nombre], [imagen], [descripcion], [video]) VALUES (6, N'coco', N'3', N'Coco', N'coco.png', N'Miguel, un joven aspirante a músico, se transporta al Mundo de los Muertos durante el Día de los Muertos y busca la bendición de sus ancestros para seguir su pasión. En su viaje, descubre secretos familiares y la importancia de la memoria y la tradición.', N'https://www.youtube.com/watch?v=awzWdtCezDo')
INSERT [dbo].[contenido] ([id], [clave], [tipo], [nombre], [imagen], [descripcion], [video]) VALUES (7, N'villano', N'3', N'Mi Villano Favorito', N'villano.png', N'Gru, un supervillano con un plan para robar la Luna, adopta a tres huérfanas que cambian su vida de manera inesperada. A medida que se involucra en su vida, Gru enfrenta desafíos tanto en su carrera criminal como en su nuevo rol como padre, aprendiendo el verdadero significado de la familia y el amor.', N'https://www.youtube.com/watch?v=B7S4KodYFCM')
INSERT [dbo].[contenido] ([id], [clave], [tipo], [nombre], [imagen], [descripcion], [video]) VALUES (8, N'moana', N'3', N'Moana', N'moana.png', N'Moana, una joven valiente de una isla polinesia, se embarca en una misión para salvar su hogar y descubrir su verdadera identidad. Con la ayuda del semidiós Maui, enfrenta desafíos y explora el océano en busca de la solución para restaurar la vida a su isla.', N'https://www.youtube.com/watch?v=ZjlxiCDtNhg')
INSERT [dbo].[contenido] ([id], [clave], [tipo], [nombre], [imagen], [descripcion], [video]) VALUES (9, N'avatar', N'4', N'Avatar', N'avatar.png', N'En el futuro, un ex-marine se convierte en avatar para interactuar con los habitantes de Pandora, una luna habitable en un sistema estelar lejano. A medida que se involucra en el conflicto entre los humanos y los nativos Navi, debe tomar decisiones cruciales sobre el destino de ambos mundos.', N'https://www.youtube.com/watch?v=g5deg0HgCmY')
INSERT [dbo].[contenido] ([id], [clave], [tipo], [nombre], [imagen], [descripcion], [video]) VALUES (10, N'land', N'5', N'La La Land', N'land.png', N'La película sigue a Mia, una aspirante a actriz, y Sebastian, un jazzista, mientras persiguen sus sueños en Los Ángeles. A pesar de su creciente amor, ambos deben enfrentar los desafíos de equilibrar sus relaciones con sus ambiciones profesionales en esta vibrante y emotiva historia.', N'https://www.youtube.com/watch?v=nRayUjXIDdQ')
INSERT [dbo].[contenido] ([id], [clave], [tipo], [nombre], [imagen], [descripcion], [video]) VALUES (11, N'frozen', N'3', N'Frozen', N'frozen.png', N'Las hermanas Elsa y Anna deben salvar su reino, Arendelle, de un invierno eterno causado por los poderes mágicos de Elsa. A medida que enfrentan desafíos y descubren el poder del amor y la familia, su vínculo se fortalece y la verdad sobre su pasado se revela.', N'https://www.youtube.com/watch?v=FmrnYJGQQug')
INSERT [dbo].[contenido] ([id], [clave], [tipo], [nombre], [imagen], [descripcion], [video]) VALUES (12, N'paw', N'3', N'Paw Patrol', N'paw_patrol.png', N'Un grupo de cachorros con habilidades especiales liderados por un niño llamado Ryder se embarca en diversas misiones de rescate en Adventure Bay. La serie promueve valores como el trabajo en equipo, la valentía y la resolución de problemas en cada episodio emocionante.', N'https://www.youtube.com/watch?v=gKEhPC5JIdc')
INSERT [dbo].[contenido] ([id], [clave], [tipo], [nombre], [imagen], [descripcion], [video]) VALUES (13, N'imposible', N'2', N'Misión Imposible III', N'imposible.png', N'Ethan Hunt se enfrenta a un peligroso traficante de armas y busca rescatar a su prometida, quien ha sido secuestrada. En su misión más personal y peligrosa hasta el momento, Hunt debe superar numerosos obstáculos y enfrentarse a un enemigo formidable mientras protege a sus seres queridos.', N'https://www.youtube.com/watch?v=3iCoDJaFPOA')
INSERT [dbo].[contenido] ([id], [clave], [tipo], [nombre], [imagen], [descripcion], [video]) VALUES (14, N'cars', N'3', N'Cars', N'cars.png', N'Lightning McQueen, un auto de carreras, se pierde en un pequeño pueblo mientras viaja hacia una gran carrera. A través de sus aventuras con los residentes del pueblo, aprende sobre la importancia de la amistad, la humildad y el valor de detenerse y apreciar la vida.', N'https://www.youtube.com/watch?v=i_HHpJdS2o8')
INSERT [dbo].[contenido] ([id], [clave], [tipo], [nombre], [imagen], [descripcion], [video]) VALUES (15, N'avengers', N'2', N'Los Vengadores', N'avengers.png', N'Nick Fury, director de S.H.I.E.L.D., reúne a un grupo de superhéroes —Iron Man, Capitán América, Thor, Hulk, Black Widow y Hawkeye— para enfrentar una amenaza global. Juntos, deben trabajar en equipo para proteger el mundo de Loki y su ejército extraterrestre.', N'https://www.youtube.com/watch?v=yNXfOOL8824')
SET IDENTITY_INSERT [dbo].[contenido] OFF
GO
SET IDENTITY_INSERT [dbo].[eliminado] ON 

INSERT [dbo].[eliminado] ([id], [id_usuario], [id_contenido]) VALUES (16, 18, 1)
SET IDENTITY_INSERT [dbo].[eliminado] OFF
GO
SET IDENTITY_INSERT [dbo].[favorito] ON 

INSERT [dbo].[favorito] ([id], [id_usuario], [id_contenido]) VALUES (1, 1, 2)
INSERT [dbo].[favorito] ([id], [id_usuario], [id_contenido]) VALUES (2, 1, 3)
INSERT [dbo].[favorito] ([id], [id_usuario], [id_contenido]) VALUES (7, 3, 2)
INSERT [dbo].[favorito] ([id], [id_usuario], [id_contenido]) VALUES (8, 3, 7)
INSERT [dbo].[favorito] ([id], [id_usuario], [id_contenido]) VALUES (9, 3, 9)
INSERT [dbo].[favorito] ([id], [id_usuario], [id_contenido]) VALUES (10, 4, 3)
INSERT [dbo].[favorito] ([id], [id_usuario], [id_contenido]) VALUES (11, 4, 8)
INSERT [dbo].[favorito] ([id], [id_usuario], [id_contenido]) VALUES (12, 4, 10)
INSERT [dbo].[favorito] ([id], [id_usuario], [id_contenido]) VALUES (13, 5, 1)
INSERT [dbo].[favorito] ([id], [id_usuario], [id_contenido]) VALUES (14, 5, 6)
INSERT [dbo].[favorito] ([id], [id_usuario], [id_contenido]) VALUES (15, 5, 11)
INSERT [dbo].[favorito] ([id], [id_usuario], [id_contenido]) VALUES (16, 6, 2)
INSERT [dbo].[favorito] ([id], [id_usuario], [id_contenido]) VALUES (17, 6, 4)
INSERT [dbo].[favorito] ([id], [id_usuario], [id_contenido]) VALUES (18, 6, 12)
INSERT [dbo].[favorito] ([id], [id_usuario], [id_contenido]) VALUES (19, 7, 3)
INSERT [dbo].[favorito] ([id], [id_usuario], [id_contenido]) VALUES (20, 7, 5)
INSERT [dbo].[favorito] ([id], [id_usuario], [id_contenido]) VALUES (21, 7, 13)
INSERT [dbo].[favorito] ([id], [id_usuario], [id_contenido]) VALUES (22, 8, 1)
INSERT [dbo].[favorito] ([id], [id_usuario], [id_contenido]) VALUES (23, 8, 7)
INSERT [dbo].[favorito] ([id], [id_usuario], [id_contenido]) VALUES (24, 8, 14)
INSERT [dbo].[favorito] ([id], [id_usuario], [id_contenido]) VALUES (25, 9, 2)
INSERT [dbo].[favorito] ([id], [id_usuario], [id_contenido]) VALUES (26, 9, 8)
INSERT [dbo].[favorito] ([id], [id_usuario], [id_contenido]) VALUES (127, 11, 11)
INSERT [dbo].[favorito] ([id], [id_usuario], [id_contenido]) VALUES (139, 11, 11)
INSERT [dbo].[favorito] ([id], [id_usuario], [id_contenido]) VALUES (161, 2, 3)
INSERT [dbo].[favorito] ([id], [id_usuario], [id_contenido]) VALUES (164, 2, 5)
SET IDENTITY_INSERT [dbo].[favorito] OFF
GO
SET IDENTITY_INSERT [dbo].[genero] ON 

INSERT [dbo].[genero] ([id], [nombre], [imagen]) VALUES (1, N'Fantasia', N'genero_1.png')
INSERT [dbo].[genero] ([id], [nombre], [imagen]) VALUES (2, N'Accion', N'genero_2.png')
INSERT [dbo].[genero] ([id], [nombre], [imagen]) VALUES (3, N'Animacion', N'genero_3.png')
INSERT [dbo].[genero] ([id], [nombre], [imagen]) VALUES (4, N'Ciencia ficcion', N'genero_4.png')
INSERT [dbo].[genero] ([id], [nombre], [imagen]) VALUES (5, N'Musical', N'genero_5.png')
SET IDENTITY_INSERT [dbo].[genero] OFF
GO
SET IDENTITY_INSERT [dbo].[usuario] ON 

INSERT [dbo].[usuario] ([id], [correo], [username], [password]) VALUES (1, N'luis@gmail.com', N'luis', N'luis1234')
INSERT [dbo].[usuario] ([id], [correo], [username], [password]) VALUES (2, N'ruben@gmail.com', N'ruben', N'ruben')
INSERT [dbo].[usuario] ([id], [correo], [username], [password]) VALUES (3, N'carlos@gmail.com', N'carlos', N'carlos999')
INSERT [dbo].[usuario] ([id], [correo], [username], [password]) VALUES (4, N'maria@gmail.com', N'maria', N'maria4321')
INSERT [dbo].[usuario] ([id], [correo], [username], [password]) VALUES (5, N'juan@gmail.com', N'juan', N'juan777')
INSERT [dbo].[usuario] ([id], [correo], [username], [password]) VALUES (6, N'rosa@gmail.com', N'rosa', N'rosa555')
INSERT [dbo].[usuario] ([id], [correo], [username], [password]) VALUES (7, N'pedro@gmail.com', N'pedro', N'pedro888')
INSERT [dbo].[usuario] ([id], [correo], [username], [password]) VALUES (8, N'laura@gmail.com', N'laura', N'laura246')
INSERT [dbo].[usuario] ([id], [correo], [username], [password]) VALUES (9, N'diego@gmail.com', N'diego', N'diego135')
INSERT [dbo].[usuario] ([id], [correo], [username], [password]) VALUES (10, N'sara@gmail.com', N'sara', N'sara789')
INSERT [dbo].[usuario] ([id], [correo], [username], [password]) VALUES (11, N'javier@gmail.com', N'javier', N'javier321')
INSERT [dbo].[usuario] ([id], [correo], [username], [password]) VALUES (12, N'andrea@gmail.com', N'andrea', N'andrea654')
INSERT [dbo].[usuario] ([id], [correo], [username], [password]) VALUES (13, N'sergio@gmail.com', N'sergio', N'sergio222')
INSERT [dbo].[usuario] ([id], [correo], [username], [password]) VALUES (14, N'natalia@gmail.com', N'natalia', N'natalia777')
INSERT [dbo].[usuario] ([id], [correo], [username], [password]) VALUES (15, N'jorge@gmail.com', N'jorge', N'jorge999')
INSERT [dbo].[usuario] ([id], [correo], [username], [password]) VALUES (18, N'arturo@gmail.com', N'arturo', N'arturo')
INSERT [dbo].[usuario] ([id], [correo], [username], [password]) VALUES (20, N'oscar@gmail.com', N'oscar', N'12345')
INSERT [dbo].[usuario] ([id], [correo], [username], [password]) VALUES (21, N'omar27@gmail.com', N'omar', N'omar')
INSERT [dbo].[usuario] ([id], [correo], [username], [password]) VALUES (22, N'omar', N'omara', N'omar')
INSERT [dbo].[usuario] ([id], [correo], [username], [password]) VALUES (23, N'a', N'a', N'a')
INSERT [dbo].[usuario] ([id], [correo], [username], [password]) VALUES (24, N'b', N'b', N'b')
SET IDENTITY_INSERT [dbo].[usuario] OFF
GO
ALTER TABLE [dbo].[eliminado]  WITH CHECK ADD FOREIGN KEY([id_usuario])
REFERENCES [dbo].[usuario] ([id])
GO
ALTER TABLE [dbo].[eliminado]  WITH CHECK ADD FOREIGN KEY([id_contenido])
REFERENCES [dbo].[contenido] ([id])
GO
ALTER TABLE [dbo].[favorito]  WITH CHECK ADD FOREIGN KEY([id_usuario])
REFERENCES [dbo].[usuario] ([id])
GO
ALTER TABLE [dbo].[favorito]  WITH CHECK ADD FOREIGN KEY([id_contenido])
REFERENCES [dbo].[contenido] ([id])
GO
