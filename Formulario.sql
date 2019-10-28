USE [Formulario1BD]
GO
/****** Object:  Table [dbo].[Departamento]    Script Date: 28/10/2019 0:38:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departamento](
	[DepartamentoID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](max) NULL,
 CONSTRAINT [PK_Departamento] PRIMARY KEY CLUSTERED 
(
	[DepartamentoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Distrito]    Script Date: 28/10/2019 0:38:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Distrito](
	[DistritoID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](max) NULL,
	[ProvinciaID] [int] NOT NULL,
 CONSTRAINT [PK_Distrito] PRIMARY KEY CLUSTERED 
(
	[DistritoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Motivo]    Script Date: 28/10/2019 0:38:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Motivo](
	[MotivoID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](max) NULL,
 CONSTRAINT [PK_Motivo] PRIMARY KEY CLUSTERED 
(
	[MotivoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Provincia]    Script Date: 28/10/2019 0:38:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Provincia](
	[ProvinciaID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](max) NULL,
	[DepartamentoID] [int] NOT NULL,
 CONSTRAINT [PK_Provincia] PRIMARY KEY CLUSTERED 
(
	[ProvinciaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 28/10/2019 0:38:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[UsuarioID] [int] IDENTITY(1,1) NOT NULL,
	[Nombres] [nvarchar](max) NULL,
	[Apellidos] [nvarchar](max) NULL,
	[Documento] [nvarchar](max) NULL,
	[Mail] [nvarchar](max) NULL,
	[Nacimiento] [datetime2](7) NOT NULL,
	[Celular] [nvarchar](max) NULL,
	[DistritoID] [int] NOT NULL,
	[MotivoID] [int] NOT NULL,
	[Mensaje] [nvarchar](max) NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[UsuarioID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Departamento] ON 
GO
INSERT [dbo].[Departamento] ([DepartamentoID], [Nombre]) VALUES (1, N'AMAZONAS')
GO
INSERT [dbo].[Departamento] ([DepartamentoID], [Nombre]) VALUES (2, N'ANCASH')
GO
INSERT [dbo].[Departamento] ([DepartamentoID], [Nombre]) VALUES (3, N'APURIMAC')
GO
INSERT [dbo].[Departamento] ([DepartamentoID], [Nombre]) VALUES (4, N'AREQUIPA')
GO
INSERT [dbo].[Departamento] ([DepartamentoID], [Nombre]) VALUES (5, N'AYACUCHO')
GO
INSERT [dbo].[Departamento] ([DepartamentoID], [Nombre]) VALUES (6, N'CAJAMARCA')
GO
INSERT [dbo].[Departamento] ([DepartamentoID], [Nombre]) VALUES (7, N'CALLAO')
GO
INSERT [dbo].[Departamento] ([DepartamentoID], [Nombre]) VALUES (8, N'CUSCO')
GO
INSERT [dbo].[Departamento] ([DepartamentoID], [Nombre]) VALUES (9, N'HUANCAVELICA')
GO
INSERT [dbo].[Departamento] ([DepartamentoID], [Nombre]) VALUES (10, N'HUANUCO')
GO
INSERT [dbo].[Departamento] ([DepartamentoID], [Nombre]) VALUES (11, N'ICA')
GO
INSERT [dbo].[Departamento] ([DepartamentoID], [Nombre]) VALUES (12, N'JUNIN')
GO
INSERT [dbo].[Departamento] ([DepartamentoID], [Nombre]) VALUES (13, N'LA LIBERTAD')
GO
INSERT [dbo].[Departamento] ([DepartamentoID], [Nombre]) VALUES (14, N'LAMBAYEQUE')
GO
INSERT [dbo].[Departamento] ([DepartamentoID], [Nombre]) VALUES (15, N'LIMA')
GO
INSERT [dbo].[Departamento] ([DepartamentoID], [Nombre]) VALUES (16, N'LORETO')
GO
INSERT [dbo].[Departamento] ([DepartamentoID], [Nombre]) VALUES (17, N'MADRE DE DIOS')
GO
INSERT [dbo].[Departamento] ([DepartamentoID], [Nombre]) VALUES (18, N'MOQUEGUA')
GO
INSERT [dbo].[Departamento] ([DepartamentoID], [Nombre]) VALUES (19, N'PASCO')
GO
INSERT [dbo].[Departamento] ([DepartamentoID], [Nombre]) VALUES (20, N'PIURA')
GO
INSERT [dbo].[Departamento] ([DepartamentoID], [Nombre]) VALUES (21, N'PUNO')
GO
INSERT [dbo].[Departamento] ([DepartamentoID], [Nombre]) VALUES (22, N'SAN MARTIN')
GO
INSERT [dbo].[Departamento] ([DepartamentoID], [Nombre]) VALUES (23, N'TACNA')
GO
INSERT [dbo].[Departamento] ([DepartamentoID], [Nombre]) VALUES (24, N'TUMBES')
GO
INSERT [dbo].[Departamento] ([DepartamentoID], [Nombre]) VALUES (25, N'UCAYALI')
GO
SET IDENTITY_INSERT [dbo].[Departamento] OFF
GO
SET IDENTITY_INSERT [dbo].[Distrito] ON 
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1, N'ABANCAY', 1)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (2, N'CHACOCHE', 1)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (3, N'CIRCA', 1)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (4, N'CURAHUASI', 1)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (5, N'HUANIPACA', 1)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (6, N'LAMBRAMA', 1)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (7, N'PICHIRHUA', 1)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (8, N'SAN PEDRO DE CACHORA', 1)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (9, N'TAMBURCO', 1)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (18, N'ACOMAYO', 3)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (19, N'ACOPIA', 3)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (20, N'ACOS', 3)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (21, N'MOSOC LLACTA', 3)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (22, N'POMACANCHI', 3)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (23, N'RONDOCA', 3)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (24, N'SANGARARA', 3)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (25, N'AIJA', 4)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (26, N'CORIS', 4)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (27, N'HUACLLA', 4)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (28, N'LA MERCED', 4)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (29, N'SUCCHA', 4)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (30, N'YURIMAGUAS', 5)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (31, N'BALSAPUERTO', 5)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (32, N'BARRANCA', 5)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (33, N'CAHUAPANAS', 5)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (34, N'JEBEROS', 5)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (35, N'LAGUNAS', 5)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (36, N'MANSERICHE', 5)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (37, N'MORONA', 5)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (38, N'PASTAZA', 5)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (39, N'SANTA CRUZ', 5)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (40, N'TENIENTE CESAR LOPEZ ROJAS', 5)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (41, N'CAYNA', 6)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (42, N'COLPAS', 6)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (43, N'AMBO', 6)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (44, N'CONCHAMARCA', 6)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (45, N'HUACAR', 6)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (46, N'SAN FRANCISCO', 6)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (47, N'SAN RAFAEL', 6)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (48, N'TOMAY KICHWA', 6)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (49, N'ANDAHUAYLAS', 7)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (50, N'ANDARAPA', 7)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (51, N'CHIARA', 7)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (52, N'HUANCARAMA', 7)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (53, N'HUANCARAY', 7)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (54, N'HUAYANA', 7)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (55, N'KISHUARA', 7)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (56, N'PACOBAMBA', 7)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (57, N'PACUCHA', 7)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (58, N'PAMPACHIRI', 7)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (59, N'POMACOCHA', 7)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (60, N'SAN ANTONIO DE CACHI', 7)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (61, N'SAN JERONIMO', 7)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (62, N'SAN MIGUEL DE CHACCRAMPA', 7)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (63, N'SANTA MARIA DE CHICMO', 7)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (64, N'TALAVERA', 7)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (65, N'TUMAY HUARACA', 7)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (66, N'TURPO', 7)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (67, N'KAQUIABAMBA', 7)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (68, N'LIRCAY', 8)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (69, N'ANCHONGA', 8)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (70, N'CALLANMARCA', 8)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (71, N'CCOCHACCASA', 8)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (72, N'CHINCHO', 8)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (73, N'CONGALLA', 8)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (74, N'HUANCA-HUANCA', 8)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (75, N'HUAYLLAY GRANDE', 8)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (76, N'JULCAMARCA', 8)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (77, N'SAN ANTONIO DE ANTAPARCO', 8)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (78, N'SANTO TOMAS DE PATA', 8)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (79, N'SECCLLA', 8)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (80, N'ANTA', 9)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (81, N'ANCAHUASI', 9)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (82, N'CACHIMAYO', 9)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (83, N'CHINCHAYPUJIO', 9)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (84, N'HUAROCONDO', 9)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (85, N'LIMATAMBO', 9)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (86, N'MOLLEPATA', 9)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (87, N'PUCYURA', 9)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (88, N'ZURITE', 9)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (89, N'ANTABAMBA', 10)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (90, N'EL ORO', 10)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (91, N'HUAQUIRCA', 10)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (92, N'JUAN ESPINOZA MEDRANO', 10)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (93, N'OROPESA', 10)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (94, N'PACHACONAS', 10)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (95, N'SABAINO', 10)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (96, N'LLAMELLI', 11)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (97, N'ACZO', 11)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (98, N'CHACCHO', 11)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (99, N'CHINGAS', 11)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (100, N'MIRGAS', 11)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (101, N'SAN JUAN DE RONTOY', 11)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (102, N'AREQUIPA', 12)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (103, N'ALTO SELVA ALEGRE', 12)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (104, N'CAYMA', 12)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (105, N'MIRAFLORES', 12)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (107, N'YANAHUARA', 12)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (108, N'JOSE LUIS BUSTAMANTE Y RIVERO', 12)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (109, N'CHIGUATA', 12)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (110, N'MARIANO MELGAR', 12)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (111, N'PAUCARPATA', 12)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (112, N'SAN JUAN DE TARUCANI', 12)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (113, N'LAGUNA SALINAS', 12)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (114, N'CHARACATO', 12)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (115, N'JACOBO HUNTER', 12)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (116, N'MOLLEBAYA', 12)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (118, N'POCSI', 12)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (119, N'POLOBAYA', 12)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (120, N'QUEQUEÑA', 12)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (121, N'SABANDIA', 12)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (122, N'SACHACA', 12)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (123, N'SOCABAYA', 12)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (124, N'TIABAYA', 12)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (125, N'YARABAMBA', 12)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (126, N'CERRO COLORADO', 12)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (127, N'YURA', 12)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (128, N'SAN JUAN DE SIGUAS', 12)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (129, N'SANTA ISABEL DE SIGUAS', 12)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (130, N'SANTA RITA DE SIGUAS', 12)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (131, N'LA JOYA', 12)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (132, N'VITOR', 12)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (133, N'ASCOPE', 13)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (134, N'CHICAMA', 13)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (135, N'CHOCOPE', 13)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (136, N'CASAGRANDE', 13)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (137, N'MAGDALENA DE CAO', 13)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (138, N'PAIJA', 13)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (139, N'RAZURI', 13)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (140, N'SANTIAGO DE CAO', 13)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (141, N'CHACAS', 14)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (142, N'ACOCHACA', 14)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (143, N'RAYMONDI', 15)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (144, N'SEPAHUA', 15)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (145, N'TAHUANIA', 15)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (146, N'YURUA', 15)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (147, N'FRIAS', 16)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (148, N'PACAIPAMPA', 16)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (149, N'AYABACA', 16)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (150, N'JILILI', 16)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (151, N'LAGUNAS', 16)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (152, N'MONTERO', 16)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (153, N'PAIMAS', 16)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (154, N'SAPILLICA', 16)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (155, N'SICCHEZ', 16)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (156, N'SUYO', 16)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (157, N'CHALHUANCA', 17)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (158, N'CAPAYA', 17)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (159, N'CARAYBAMBA', 17)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (160, N'CHAPIMARCA', 17)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (161, N'COLCABAMBA', 17)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (162, N'COTARUSE', 17)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (163, N'HUAYLLO', 17)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (164, N'JUSTO APU SAHUARAURA', 17)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (165, N'LUCRE', 17)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (166, N'POCOHUANCA', 17)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (167, N'SAN JUAN DE CHACÑA', 17)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (168, N'SAÑAYCA', 17)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (169, N'SORAYA', 17)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (170, N'TAPAIRIHUA', 17)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (171, N'TINTAY', 17)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (172, N'TORAYA', 17)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (173, N'YANACA', 17)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (174, N'AZANGARO', 18)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (175, N'ACHAYA', 18)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (176, N'ARAPA', 18)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (177, N'ASILLO', 18)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (178, N'CAMINACA', 18)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (179, N'CHUPA', 18)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (180, N'JOSE DOMINGO CHOQUEHUANCA', 18)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (181, N'MUÑANI', 18)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (182, N'POTONI', 18)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (183, N'SAMA', 18)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (184, N'SAN ANTO', 18)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (185, N'SAN JOSE', 18)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (186, N'SAN JUAN DE SALINAS', 18)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (187, N'SANTIAGO DE PUPUJA', 18)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (188, N'TIRAPATA', 18)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (189, N'LAGO DE ARAPA', 18)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (190, N'LA PECA', 19)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (191, N'ARAMANGO', 19)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (192, N'COPALLI', 19)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (193, N'EL PARCO', 19)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (194, N'IMAZA', 19)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (200, N'BELLAVISTA', 21)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (201, N'ALTO BIAVO', 21)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (202, N'BAJO BIAVO', 21)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (203, N'HUALLAGA', 21)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (204, N'SAN PABLO', 21)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (205, N'SAN RAFAEL', 21)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (212, N'CHIQUIA', 23)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (213, N'ABELARDO PARDO LEZAMETA', 23)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (214, N'ANTONIO RAYMONDI', 23)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (215, N'AQUIA', 23)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (216, N'CAJACAY', 23)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (217, N'CANIS', 23)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (218, N'COLQUIOC', 23)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (219, N'HUALLANCA', 23)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (220, N'HUASTA', 23)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (221, N'HUAYLLACAYA', 23)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (222, N'LA PRIMAVERA', 23)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (223, N'MANGAS', 23)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (224, N'PACLLO', 23)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (225, N'SAN MIGUEL DE CORPANQUI', 23)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (226, N'TICLLOS', 23)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (227, N'JUMBILLA', 24)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (228, N'CHISQUILLA', 24)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (229, N'CHURUJA', 24)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (230, N'COROSHA', 24)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (231, N'CUISPES', 24)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (232, N'FLORIDA', 24)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (233, N'JAZA', 24)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (234, N'RECTA', 24)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (235, N'SAN CARLOS', 24)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (236, N'SHIPASBAMBA', 24)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (237, N'VALERA', 24)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (238, N'YAMBRASBAMBA', 24)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (239, N'CAJABAMBA', 25)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (240, N'CACHACHI', 25)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (241, N'CONDEBAMBA', 25)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (242, N'SITACOCHA', 25)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (243, N'CAJAMARCA', 26)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (244, N'ASUNCIO', 26)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (245, N'CHETILLA', 26)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (246, N'COSPA', 26)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (247, N'ENCAÑADA', 26)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (248, N'LOS BAÑOS DEL INCA', 26)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (249, N'MAGDALENA', 26)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (250, N'SAN JUA', 26)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (251, N'JESUS', 26)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (252, N'LLACANORA', 26)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (253, N'MATARA', 26)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (254, N'NAMORA', 26)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (255, N'CAJATAMBO', 27)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (256, N'COPA', 27)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (257, N'GORGOR', 27)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (258, N'HUANCAPO', 27)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (259, N'MANAS', 27)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (260, N'CALCA', 28)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (261, N'COYA', 28)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (262, N'LAMAY', 28)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (263, N'LARES', 28)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (264, N'PISAC', 28)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (265, N'SAN SALVADOR', 28)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (266, N'TARAY', 28)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (267, N'YANATILE', 28)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (268, N'VENTANILLA', 29)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (269, N'CALLAO', 29)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (270, N'LA PUNTA', 29)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (272, N'CARMEN DE LA LEGUA REYNOSO', 29)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (273, N'BELLAVISTA', 29)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (274, N'LA PERLA', 29)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (277, N'CAMANA', 30)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (278, N'JOSE MARIA QUIMPER', 30)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (279, N'MARIANO NICOLAS VALCARCEL', 30)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (280, N'MARISCAL CACERES', 30)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (281, N'NICOLAS DE PIEROLA', 30)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (282, N'OCOÑA', 30)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (283, N'QUILCA', 30)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (284, N'SAMUEL PASTOR', 30)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (285, N'YANAOCA', 31)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (286, N'CHECCA', 31)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (287, N'KUNTURKANKI', 31)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (288, N'LANGUI', 31)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (289, N'LAYO', 31)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (290, N'PAMPAMARCA', 31)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (291, N'QUEHUE', 31)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (292, N'TUPAC AMARU', 31)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (293, N'LAGO LANGUI LAYO', 31)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (294, N'SICUANI', 32)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (295, N'CHECACUPE', 32)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (296, N'COMBAPATA', 32)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (297, N'MARANGANI', 32)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (298, N'PITUMARCA', 32)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (299, N'SAN PABLO', 32)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (300, N'SAN PEDRO', 32)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (301, N'TINTA', 32)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (302, N'CANDARAVE', 33)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (303, N'CAIRANI', 33)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (304, N'CAMILACA', 33)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (305, N'CURIBAYA', 33)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (306, N'HUANUARA', 33)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (307, N'QUILAHUANI', 33)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (308, N'CANGALLO', 34)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (309, N'CHUSCHI', 34)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (310, N'LOS MOROCHUCOS', 34)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (311, N'MARIA PARADO DE BELLIDO', 34)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (312, N'PARAS', 34)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (313, N'TOTOS', 34)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (321, N'ASIA', 36)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (322, N'CALANGO', 36)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (323, N'CHILCA', 36)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (324, N'COAYLLO', 36)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (325, N'MALA', 36)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (326, N'SAN ANTONIO', 36)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (327, N'SANTA CRUZ DE FLORES', 36)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (328, N'SAN VICENTE DE CAÑETE', 36)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (329, N'CERRO AZUL', 36)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (330, N'IMPERIAL', 36)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (331, N'LUNAHUANA', 36)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (332, N'NUEVO IMPERIAL', 36)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (333, N'PACARA', 36)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (334, N'QUILMANA', 36)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (335, N'SAN LUIS', 36)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (336, N'ZUÑIGA', 36)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (337, N'MACUSANI', 37)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (338, N'AJOYANI', 37)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (339, N'AYAPATA', 37)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (340, N'COASA', 37)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (341, N'CORANI', 37)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (342, N'CRUCERO', 37)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (343, N'ITUATA', 37)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (344, N'OLLACHEA', 37)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (345, N'SAN GABA', 37)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (346, N'USICAYOS', 37)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (347, N'CARAVELI', 38)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (348, N'ATICO', 38)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (349, N'ATIQUIPA', 38)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (350, N'CAHUACHO', 38)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (351, N'CHALA', 38)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (352, N'CHAPARRA', 38)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (353, N'HUANUHUANU', 38)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (354, N'QUICACHA', 38)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (355, N'YAUCA', 38)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (356, N'ACARI', 38)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (357, N'BELLA UNIO', 38)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (358, N'JAQUI', 38)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (359, N'LOMAS', 38)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (360, N'CARHUAZ', 39)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (361, N'ACOPAMPA', 39)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (362, N'AMASHCA', 39)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (363, N'ANTA', 39)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (364, N'ATAQUERO', 39)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (365, N'MARCARA', 39)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (366, N'PARIAHUANCA', 39)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (367, N'SAN MIGUEL DE ACO', 39)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (368, N'SHILLA', 39)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (369, N'TINCO', 39)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (370, N'YUNGAR', 39)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (371, N'SAN LUIS', 40)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (372, N'SAN NICOLAS', 40)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (373, N'YAUYA', 40)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (374, N'CASMA', 41)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (375, N'BUENA VISTA ALTA', 41)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (376, N'COMANDANTE NOEL', 41)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (377, N'YAUTA', 41)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (378, N'APLAO', 42)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (379, N'ANDAGUA', 42)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (380, N'AYO', 42)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (381, N'CHACHAS', 42)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (382, N'CHILCAYMARCA', 42)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (383, N'CHOCO', 42)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (384, N'HUANCARQUI', 42)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (385, N'MACHAGUAY', 42)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (386, N'ORCOPAMPA', 42)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (387, N'PAMPACOLCA', 42)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (388, N'TIPA', 42)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (389, N'UÑO', 42)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (390, N'URACA', 42)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (391, N'VIRACO', 42)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (392, N'CASTROVIRREYNA', 43)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (393, N'ARMA', 43)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (394, N'AURAHUA', 43)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (395, N'CAPILLAS', 43)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (396, N'CHUPAMARCA', 43)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (397, N'COCAS', 43)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (398, N'HUACHOS', 43)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (399, N'HUAMATAMBO', 43)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (400, N'MOLLEPAMPA', 43)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (401, N'SAN JUA', 43)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (402, N'SANTA ANA', 43)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (403, N'TANTARA', 43)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (404, N'TICRAPO', 43)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (405, N'SAN ANTONIO DE CHUCA', 44)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (406, N'CHIVAY', 44)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (407, N'ACHOMA', 44)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (408, N'CABANACONDE', 44)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (409, N'CALLALLI', 44)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (410, N'CAYLLOMA', 44)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (411, N'COPORAQUE', 44)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (412, N'HUAMBO', 44)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (413, N'HUANCA', 44)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (414, N'ICHUPAMPA', 44)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (415, N'LARI', 44)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (416, N'LLUTA', 44)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (417, N'MACA', 44)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (418, N'SIBAYO', 44)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (419, N'TAPAY', 44)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (420, N'TISCO', 44)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (421, N'TUTI', 44)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (422, N'YANQUE', 44)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (423, N'MAJES', 44)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (424, N'CELENDI', 45)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (425, N'CHUMUCH', 45)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (426, N'CORTEGANA', 45)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (427, N'HUASMI', 45)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (428, N'JORGE CHAVEZ', 45)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (429, N'JOSE GALVEZ', 45)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (430, N'MIGUEL IGLESIAS', 45)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (431, N'OXAMARCA', 45)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (432, N'SOROCHUCO', 45)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (433, N'SUCRE', 45)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (434, N'UTCO', 45)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (435, N'LA LIBERTAD DE PALLA', 45)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (436, N'CHACHAPOYAS', 46)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (437, N'ASUNCIO', 46)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (438, N'BALSAS', 46)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (439, N'CHETO', 46)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (440, N'CHILIQUI', 46)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (441, N'CHUQUIBAMBA', 46)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (442, N'GRANADA', 46)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (443, N'HUANCAS', 46)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (444, N'LA JALCA', 46)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (445, N'LEIMEBAMBA', 46)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (446, N'LEVANTO', 46)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (447, N'MAGDALENA', 46)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (448, N'MARISCAL CASTILLA', 46)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (449, N'MOLINOPAMPA', 46)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (450, N'MONTEVIDEO', 46)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (451, N'OLLEROS', 46)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (452, N'QUINJALCA', 46)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (453, N'SAN FRANCISCO DE DAGUAS', 46)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (454, N'SAN ISIDRO DE MAINO', 46)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (455, N'SOLOCO', 46)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (456, N'SONCHE', 46)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (457, N'CHANCHAMAYO', 47)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (458, N'PERENE', 47)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (459, N'PICHANAQUI', 47)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (460, N'SAN LUIS DE SHUARO', 47)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (461, N'SAN RAMO', 47)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (462, N'VITOC', 47)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (463, N'CHEPE', 48)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (464, N'PACANGA', 48)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (465, N'PUEBLO NUEVO', 48)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (466, N'CHICLAYO', 49)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (467, N'CHONGOYAPE', 49)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (468, N'PATAPO', 49)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (469, N'POMALCA', 49)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (470, N'PUCALA', 49)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (471, N'TUMA', 49)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (473, N'ETE', 49)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (474, N'ETEN PUERTO', 49)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (475, N'LA VICTORIA', 49)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (476, N'LAGUNAS', 49)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (477, N'MONSEFU', 49)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (478, N'NUEVA ARICA', 49)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (479, N'OYOTU', 49)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (480, N'REQUE', 49)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (481, N'SAÐA', 49)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (482, N'CAYALTI', 49)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (483, N'PIMENTEL', 49)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (484, N'SANTA ROSA', 49)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (485, N'JOSE LEONARDO ORTIZ', 49)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (486, N'PICSI', 49)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (487, N'CHINCHA ALTA', 50)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (488, N'ALTO LARA', 50)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (489, N'CHAVI', 50)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (490, N'CHINCHA BAJA', 50)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (491, N'EL CARME', 50)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (492, N'GROCIO PRADO', 50)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (493, N'PUEBLO NUEVO', 50)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (494, N'SAN JUAN DE YANAC', 50)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (495, N'SAN PEDRO DE HUACARPANA', 50)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (496, N'SUNAMPE', 50)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (497, N'TAMBO DE MORA', 50)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (498, N'CHINCHEROS', 51)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (499, N'ANCO-HUALLO', 51)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (500, N'COCHARCAS', 51)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (501, N'HUACCANA', 51)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (502, N'OCOBAMBA', 51)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (503, N'ONGOY', 51)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (504, N'URANMARCA', 51)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (505, N'RANRACANCHA', 51)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (506, N'CHOTA', 52)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (507, N'ANGUIA', 52)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (508, N'CHADI', 52)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (509, N'CHIGUIRIP', 52)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (510, N'CHIMBA', 52)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (511, N'CHOROPAMPA', 52)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (512, N'COCHABAMBA', 52)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (513, N'CONCHA', 52)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (514, N'HUAMBOS', 52)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (515, N'LAJAS', 52)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (516, N'LLAMA', 52)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (517, N'MIRACOSTA', 52)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (518, N'PACCHA', 52)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (519, N'PIO', 52)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (520, N'QUEROCOTO', 52)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (521, N'SAN JUAN DE LICUPIS', 52)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (522, N'TACABAMBA', 52)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (523, N'TOCMOCHE', 52)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (524, N'CHALAMARCA', 52)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (525, N'JULI', 53)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (526, N'DESAGUADERO', 53)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (527, N'HUACULLANI', 53)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (528, N'KELLUYO', 53)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (529, N'PISACOMA', 53)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (530, N'POMATA', 53)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (531, N'ZEPITA', 53)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (532, N'SANTO TOMAS', 54)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (533, N'CHAMACA', 54)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (534, N'COLQUEMARCA', 54)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (535, N'LIVITACA', 54)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (536, N'LLUSCO', 54)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (537, N'QUIÑOTA', 54)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (538, N'VELILLE', 54)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (539, N'CAPACMARCA', 54)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (540, N'CHUPACA', 55)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (541, N'AHUAC', 55)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (542, N'CHONGOS BAJOS', 55)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (543, N'HUACHAC', 55)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (544, N'HUAMANCACA CHICO', 55)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (545, N'SAN JUAN DE ISCO', 55)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (546, N'SAN JUAN DE JARPA', 55)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (547, N'TRES DE DICIEMBRE', 55)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (548, N'YANACANCHA', 55)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (549, N'CHURCAMPA', 56)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (550, N'ANCO', 56)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (551, N'CHINCHIHUASI', 56)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (552, N'EL CARME', 56)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (553, N'LA MERCED', 56)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (554, N'LOCROJA', 56)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (555, N'PAUCARBAMBA', 56)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (556, N'SAN MIGUEL DE MAYOCC', 56)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (557, N'SAN PEDRO DE CORIS', 56)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (558, N'PACHAMARCA', 56)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (559, N'CONCEPCIO', 57)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (560, N'ACO', 57)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (561, N'ANDAMARCA', 57)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (562, N'CHAMBARA', 57)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (563, N'COCHAS', 57)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (564, N'COMAS', 57)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (565, N'HEROINAS TOLEDO', 57)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (566, N'MANZANARES', 57)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (567, N'MARISCAL CASTILLA', 57)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (568, N'MATAHUASI', 57)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (569, N'MITO', 57)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (570, N'NUEVE DE JULIO', 57)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (571, N'ORCOTUNA', 57)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (572, N'SAN JOSE DE QUERO', 57)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (573, N'SANTA ROSA DE OCOPA', 57)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (574, N'CHUQUIBAMBA', 58)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (575, N'ANDARAY', 58)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (576, N'CAYARANI', 58)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (577, N'CHICHAS', 58)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (578, N'IRAY', 58)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (579, N'RIO GRANDE', 58)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (580, N'SALAMANCA', 58)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (581, N'YANAQUIHUA', 58)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (582, N'NIEVA', 59)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (583, N'EL CENEPA', 59)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (584, N'RIO SANTIAGO', 59)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (585, N'ZORRITOS', 60)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (586, N'CASITAS', 60)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (587, N'CONTUMAZA', 61)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (588, N'CHILETE', 61)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (589, N'CUPISNIQUE', 61)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (590, N'SANTA CRUZ DE TOLED', 61)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (591, N'TANTARICA', 61)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (592, N'YONA', 61)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (593, N'GUZMANGO', 61)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (594, N'SAN BENITO', 61)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (595, N'CAMPOVERDE', 62)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (596, N'YARINACOCHA', 62)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (597, N'NUEVA REQUENA', 62)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (598, N'CALLARIA', 62)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (599, N'IPARIA', 62)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (600, N'MASISEA', 62)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (601, N'MANANTAY', 62)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (602, N'CORONGO', 63)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (603, N'ACO', 63)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (604, N'BAMBAS', 63)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (605, N'CUSCA', 63)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (606, N'LA PAMPA', 63)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (607, N'YANAC', 63)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (608, N'YUPA', 63)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (609, N'TAMBOBAMBA', 64)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (610, N'COTABAMBAS', 64)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (611, N'COYLLURQUI', 64)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (612, N'HAQUIRA', 64)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (613, N'MARA', 64)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (614, N'CHALLHUAHUACHO', 64)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (615, N'SAN JERONIMO', 65)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (616, N'SAN SEBASTIA', 65)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (617, N'SAYLLA', 65)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (618, N'WANCHAQ', 65)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (620, N'CCORCA', 65)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (621, N'POROY', 65)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (622, N'SANTIAGO', 65)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (623, N'CUSCO', 65)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (624, N'CUTERVO', 66)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (625, N'CALLAYUC', 66)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (626, N'CHOROS', 66)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (627, N'CUJILLO', 66)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (628, N'LA RAMADA', 66)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (629, N'PIMPINGOS', 66)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (630, N'QUEROCOTILLO', 66)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (631, N'SAN ANDRES DE CUTERVO', 66)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (632, N'SAN JUAN DE CUTERVO', 66)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (633, N'SAN LUIS DE LUCMA', 66)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (634, N'SANTA CRUZ', 66)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (635, N'SANTO DOMINGO DE LA CAPILLA', 66)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (636, N'SANTO TOMAS', 66)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (637, N'SOCOTA', 66)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (638, N'TORIBIO CASANOVA', 66)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (639, N'YANAHUANCA', 67)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (640, N'CHACAYA', 67)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (641, N'GOYLLARISQUIZGA', 67)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (642, N'PAUCAR', 67)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (643, N'SAN PEDRO DE PILLAO', 67)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (644, N'SANTA ANA DE TUSI', 67)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (645, N'TAPUC', 67)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (646, N'LA UNIO', 68)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (647, N'CHUQUIS', 68)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (648, N'MARIAS', 68)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (649, N'PACHAS', 68)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (650, N'QUIVILLA', 68)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (651, N'RIPA', 68)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (652, N'SHUNQUI', 68)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (653, N'SILLAPATA', 68)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (654, N'YANAS', 68)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (655, N'ILAVE', 69)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (656, N'CAPASO', 69)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (657, N'PILCUYO', 69)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (658, N'SANTA ROSA', 69)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (659, N'CONDURIRI', 69)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (660, N'SAN JOSE DE SISA', 70)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (661, N'AGUA BLANCA', 70)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (662, N'SAN MARTI', 70)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (663, N'SANTA ROSA', 70)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (664, N'SHATOJA', 70)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (665, N'ESPINAR', 71)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (666, N'CONDOROMA', 71)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (667, N'COPORAQUE', 71)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (668, N'OCORURO', 71)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (669, N'PALLPATA', 71)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (670, N'PICHIGUA', 71)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (671, N'SUYCKUTAMBO', 71)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (672, N'ALTO PICHIGUA', 71)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (673, N'FERREÑAFE', 72)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (674, N'CAÑARIS', 72)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (675, N'INCAHUASI', 72)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (676, N'MANUEL ANTONIO MESONES MURO', 72)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (677, N'PITIPO', 72)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (678, N'PUEBLO NUEVO', 72)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (679, N'OMATE', 73)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (680, N'CHOJATA', 73)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (681, N'COALAQUE', 73)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (682, N'ICHUÑA', 73)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (683, N'LA CAPILLA', 73)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (684, N'LLOQUE', 73)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (685, N'MATALAQUE', 73)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (686, N'PUQUINA', 73)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (687, N'QUINISTAQUILLAS', 73)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (688, N'UBINAS', 73)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (689, N'YUNGA', 73)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (690, N'CASCAS', 74)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (691, N'LUCMA', 74)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (692, N'MARMOT', 74)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (693, N'SAYAPULLO', 74)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (694, N'CHUQUIBAMBILLA', 75)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (695, N'CURPAHUASI', 75)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (696, N'GAMARRA', 75)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (697, N'HUAYLLATI', 75)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (698, N'MAMARA', 75)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (699, N'MICAELA BASTIDAS', 75)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (700, N'PATAYPAMPA', 75)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (701, N'PROGRESO', 75)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (702, N'SAN ANTONIO', 75)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (703, N'SANTA ROSA', 75)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (704, N'TURPAY', 75)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (705, N'VILCABAMBA', 75)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (706, N'VIRUNDO', 75)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (707, N'CURASCO', 75)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (708, N'HUACAYBAMBA', 76)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (709, N'CANCHABAMBA', 76)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (710, N'COCHABAMBA', 76)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (711, N'PINRA', 76)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (712, N'BAMBAMARCA', 77)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (713, N'CHUGUR', 77)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (714, N'HUALGAYOC', 77)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (715, N'SAPOSOA', 78)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (716, N'ALTO SAPOSOA', 78)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (717, N'EL ESLABO', 78)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (718, N'PISCOYACU', 78)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (719, N'SACANCHE', 78)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (720, N'TINGO DE SAPOSOA', 78)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (721, N'MONZO', 79)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (722, N'LLATA', 79)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (723, N'CHAVIN DE PARIARCA', 79)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (724, N'JACAS GRANDE', 79)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (725, N'JIRCA', 79)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (726, N'MIRAFLORES', 79)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (727, N'PUNCHAO', 79)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (728, N'PUÑOS', 79)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (729, N'SINGA', 79)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (730, N'TANTAMAYO', 79)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (731, N'ARANCAY', 79)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (732, N'AYACUCHO', 80)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (733, N'ACOS VINCHOS', 80)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (734, N'PACAYCASA', 80)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (735, N'QUINUA', 80)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (737, N'ACOCRO', 80)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (738, N'CARMEN ALTO', 80)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (739, N'CHIARA', 80)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (740, N'OCROS', 80)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (741, N'SAN JOSE DE TICLLAS', 80)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (742, N'SAN JUAN BAUTISTA', 80)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (743, N'SANTIAGO DE PISCHA', 80)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (744, N'SOCOS', 80)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (745, N'TAMBILLO', 80)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (746, N'VINCHOS', 80)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (747, N'SANCOS', 81)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (748, N'CARAPO', 81)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (749, N'SACSAMARCA', 81)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (750, N'SANTIAGO DE LUCANAMARCA', 81)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (751, N'HUANCABAMBA', 82)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (752, N'CANCHAQUE', 82)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (753, N'EL CARMEN DE LA FRONTERA', 82)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (754, N'HUARMACA', 82)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (755, N'LALAQUIZ', 82)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (756, N'SAN MIGUEL DE EL FAIQUE', 82)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (757, N'SONDOR', 82)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (758, N'SONDORILLO', 82)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (759, N'HUANCANE', 83)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (760, N'COJATA', 83)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (761, N'HUATASANI', 83)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (762, N'INCHUPALLA', 83)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (763, N'PUSI', 83)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (764, N'ROSASPATA', 83)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (765, N'TARACO', 83)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (766, N'VILQUE CHICO', 83)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (767, N'HUANCAVELICA', 84)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (768, N'ACOBAMBILLA', 84)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (769, N'ACORIA', 84)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (770, N'CONAYCA', 84)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (771, N'CUENCA', 84)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (772, N'HUACHOCOLPA', 84)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (773, N'HUAYLLAHUARA', 84)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (774, N'IZCUCHACA', 84)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (775, N'LARIA', 84)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (776, N'MANTA', 84)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (777, N'MARISCAL CACERES', 84)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (778, N'MOYA', 84)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (779, N'NUEVO OCCORO', 84)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (780, N'PALCA', 84)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (781, N'PILCHACA', 84)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (782, N'VILCA', 84)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (783, N'YAULI', 84)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (784, N'CARHUACALLANGA', 85)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (785, N'CHACAPAMPA', 85)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (786, N'CHICCHE', 85)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (787, N'CHONGOS ALTO', 85)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (788, N'CHUPURO', 85)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (789, N'COLCA', 85)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (790, N'CULLHUAS', 85)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (791, N'EL TAMBO', 85)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (792, N'HUACRAPUQUIO', 85)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (793, N'HUALHUAS', 85)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (794, N'HUASICANCHA', 85)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (795, N'INGENIO', 85)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (796, N'PILCOMAYO', 85)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (797, N'QUICHUAY', 85)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (798, N'QUILCAS', 85)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (799, N'SAN AGUSTI', 85)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (800, N'SAN JERONIMO DE TUNA', 85)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (801, N'SAÑO', 85)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (802, N'SICAYA', 85)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (803, N'SANTO DOMINGO DE ACOBAMBA', 85)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (804, N'HUANCAYO', 85)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (805, N'CHILCA', 85)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (806, N'HUANCA', 85)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (807, N'HUAYUCACHI', 85)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (808, N'PARIAHUANCA', 85)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (809, N'PUCARA', 85)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (810, N'SAPALLANGA', 85)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (811, N'VIQUES', 85)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (812, N'HUANTA', 86)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (813, N'AYAHUANCO', 86)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (814, N'HUAMANGUILLA', 86)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (815, N'IGUAI', 86)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (816, N'LURICOCHA', 86)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (817, N'SANTILLANA', 86)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (818, N'SIVIA', 86)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (819, N'LLOCHEGUA', 86)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (820, N'CHINCHAO', 87)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (821, N'CHURUBAMBA', 87)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (822, N'MARGOS', 87)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (823, N'QUISQUI', 87)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (824, N'SAN FRANCISCO DE CAYRA', 87)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (825, N'SAN PEDRO DE CHAULA', 87)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (826, N'SANTA MARIA DEL VALLE', 87)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (827, N'YARUMAYO', 87)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (828, N'HUANUCO', 87)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (829, N'AMARILIS', 87)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (830, N'HUARAL', 88)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (831, N'ATAVILLOS ALTO', 88)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (832, N'ATAVILLOS BAJO', 88)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (833, N'AUCALLAMA', 88)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (834, N'CHANCAY', 88)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (835, N'IHUARI', 88)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (836, N'LAMPIA', 88)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (837, N'PACARAOS', 88)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (838, N'SAN MIGUEL DE ACOS', 88)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (839, N'SANTA CRUZ DE ANDAMARCA', 88)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (840, N'VEINTISIETE DE NOVIEMBRE', 88)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (841, N'SUMBILCA', 88)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (842, N'HUARAZ', 89)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (843, N'COCHABAMBA', 89)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (844, N'COLCABAMBA', 89)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (845, N'HUANCHAY', 89)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (846, N'INDEPENDENCIA', 89)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (847, N'JANGAS', 89)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (848, N'LA LIBERTAD', 89)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (849, N'OLLEROS', 89)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (850, N'PAMPAS', 89)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (851, N'PARIACOTO', 89)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (852, N'PIRA', 89)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (853, N'TARICA', 89)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (854, N'HUARI', 90)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (855, N'ANRA', 90)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (856, N'CAJAY', 90)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (857, N'CHAVIN DE HUANTAR', 90)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (858, N'HUACACHI', 90)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (859, N'HUACCHIS', 90)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (860, N'HUACHIS', 90)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (861, N'HUANTAR', 90)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (862, N'MASI', 90)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (863, N'PAUCAS', 90)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (864, N'PONTO', 90)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (865, N'RAHUAPAMPA', 90)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (866, N'RAPAYA', 90)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (867, N'SAN MARCOS', 90)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (868, N'SAN PEDRO DE CHANA', 90)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (869, N'UCO', 90)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (875, N'MATUCANA', 92)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (876, N'ANTIOQUIA', 92)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (877, N'CALLAHUANCA', 92)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (878, N'CARAMPOMA', 92)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (879, N'CUENCA', 92)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (880, N'HUACHUPAMPA', 92)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (881, N'HUANZA', 92)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (882, N'HUAROCHIRI', 92)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (883, N'LAHUAYTAMBO', 92)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (884, N'LANGA', 92)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (885, N'LARAOS', 92)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (886, N'MARIATANA', 92)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (887, N'RICARDO PALMA', 92)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (888, N'SAN ANDRES DE TUPICOCHA', 92)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (889, N'SAN ANTONIO', 92)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (890, N'SAN BARTOLOME', 92)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (891, N'SAN DAMIA', 92)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (892, N'SAN JUAN DE IRIS', 92)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (893, N'SAN JUAN DE TANTARANCHE', 92)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (894, N'SAN LORENZO DE QUINTI', 92)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (895, N'SAN MATEO DE OTAO', 92)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (896, N'SAN PEDRO DE CASTA', 92)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (897, N'SAN PEDRO DE HUANCAYRE', 92)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (898, N'SANGALLAYA', 92)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (899, N'SANTA CRUZ DE COCACHACRA', 92)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (900, N'SANTA EULALIA', 92)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (901, N'SANTIAGO DE ANCHUCAYA', 92)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (902, N'SANTIAGO DE TUNA', 92)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (903, N'SANTO DOMINGO DE LOS OLLEROS', 92)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (904, N'CHICLA', 92)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (905, N'SAN MATEO', 92)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (906, N'HUACHO', 93)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (907, N'LEONCIO PRADO', 93)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (908, N'AMBAR', 93)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (909, N'CALETA DE CARQUI', 93)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (910, N'CHECRAS', 93)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (911, N'HUALMAY', 93)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (912, N'HUAURA', 93)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (913, N'PACCHO', 93)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (914, N'SANTA LEONOR', 93)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (915, N'SANTA MARIA', 93)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (916, N'SAYA', 93)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (917, N'VEGUETA', 93)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (918, N'CARAZ', 94)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (919, N'HUALLANCA', 94)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (920, N'HUATA', 94)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (921, N'HUAYLAS', 94)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (922, N'MATO', 94)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (923, N'PUEBLO LIBRE', 94)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (924, N'SANTA CRUZ', 94)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (925, N'SANTO TORIBIO', 94)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (926, N'YURACMARCA', 94)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (927, N'PAMPAROMAS', 94)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (928, N'HUAYTARA', 95)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (929, N'AYAVI', 95)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (930, N'CORDOVA', 95)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (931, N'HUAYACUNDO ARMA', 95)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (932, N'LARAMARCA', 95)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (933, N'OCOYO', 95)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (934, N'PILPICHACA', 95)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (935, N'QUERCO', 95)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (936, N'QUITO-ARMA', 95)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (937, N'SAN ANTONIO DE CUSICANCHA', 95)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (938, N'SAN FRANCISCO DE SANGAYAICO', 95)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (939, N'SAN ISIDRO', 95)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (940, N'SANTIAGO DE CHOCORVOS', 95)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (941, N'SANTIAGO DE QUIRAHUARA', 95)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (942, N'SANTO DOMINGO DE CAPILLAS', 95)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (943, N'TAMBO', 95)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (944, N'SALAS', 96)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (945, N'SAN JUAN BAUTISTA', 96)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (946, N'SUBTANJALLA', 96)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (948, N'LA TINGUIÑA', 96)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (949, N'LOS AQUIJES', 96)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (950, N'OCUCAJE', 96)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (951, N'PACHACUTEC', 96)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (952, N'PARCONA', 96)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (953, N'PUEBLO NUEVO', 96)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (954, N'SAN JOSE DE LOS MOLINOS', 96)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (955, N'SANTIAGO', 96)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (956, N'TATE', 96)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (957, N'YAUCA DEL ROSARIO', 96)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (959, N'EL ALGARROBAL', 97)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (960, N'PACOCHA', 97)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (961, N'ILO', 97)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (962, N'MOLLENDO', 98)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (963, N'COCACHACRA', 98)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (964, N'DEAN VALDIVIA', 98)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (965, N'ISLAY', 98)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (966, N'MEJIA', 98)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (967, N'PUNTA DE BOMBO', 98)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (968, N'JAE', 99)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (969, N'BELLAVISTA', 99)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (970, N'CHONTALI', 99)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (971, N'COLASAY', 99)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (972, N'HUABAL', 99)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (973, N'LAS PIRIAS', 99)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (974, N'POMAHUACA', 99)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (975, N'PUCARA', 99)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (976, N'SALLIQUE', 99)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (977, N'SAN FELIPE', 99)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (978, N'SAN JOSE DEL ALTO', 99)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (979, N'SANTA ROSA', 99)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (980, N'JAUJA', 100)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (981, N'ACOLLA', 100)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (982, N'APATA', 100)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (983, N'ATAURA', 100)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (984, N'EL MANTARO', 100)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (985, N'HUAMALI', 100)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (986, N'HUARIPAMPA', 100)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (987, N'HUERTAS', 100)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (988, N'JANJAILLO', 100)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (989, N'JULCA', 100)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (990, N'LEONOR ORDOÑEZ', 100)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (991, N'MARCO', 100)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (992, N'MASMA', 100)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (993, N'MASMA CHICCHE', 100)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (994, N'MOLINOS', 100)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (995, N'MONOBAMBA', 100)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (996, N'MUQUI', 100)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (997, N'MUQUIYAUYO', 100)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (998, N'PACA', 100)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (999, N'PACCHA', 100)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1000, N'PANCA', 100)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1001, N'PARCO', 100)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1002, N'RICRA', 100)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1003, N'SAN LORENZO', 100)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1004, N'SAN PEDRO DE CHUNA', 100)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1005, N'SAUSA', 100)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1006, N'SINCOS', 100)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1007, N'TUNAN MARCA', 100)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1008, N'YAULI', 100)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1009, N'YAUYOS', 100)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1010, N'CANCHAYLLO', 100)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1011, N'CURICACA', 100)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1012, N'LLOCLLAPAMPA', 100)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1013, N'POMACANCHA', 100)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1014, N'LOCUMBA', 101)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1015, N'ILABAYA', 101)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1016, N'ITE', 101)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1017, N'JULCA', 102)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1018, N'CALAMARCA', 102)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1019, N'CARABAMBA', 102)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1020, N'HUASO', 102)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1021, N'ULCUMAYO', 103)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1022, N'LAGO JUNI', 103)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1023, N'JUNI', 103)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1024, N'CARHUAMAYO', 103)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1025, N'ONDORES', 103)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1026, N'QUIMBIRI', 104)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1027, N'PICHARI', 104)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1028, N'SANTA ANA', 104)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1029, N'ECHARATE', 104)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1030, N'HUAYOPATA', 104)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1031, N'MARANURA', 104)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1032, N'OCOBAMBA', 104)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1033, N'QUELLOUNO', 104)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1034, N'SANTA TERESA', 104)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1035, N'VILCABAMBA', 104)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1036, N'SAMURAGI', 105)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1037, N'SAN MIGUEL', 105)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1038, N'ANCO', 105)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1039, N'AYNA', 105)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1040, N'CHILCAS', 105)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1041, N'LUIS CARRANZA', 105)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1042, N'SANTA ROSA', 105)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1043, N'TAMBO', 105)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1044, N'COTAHUASI', 106)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1045, N'ALCA', 106)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1046, N'CHARCANA', 106)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1047, N'HUAYNACOTAS', 106)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1048, N'PAMPAMARCA', 106)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1049, N'PUYCA', 106)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1050, N'QUECHUALLA', 106)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1051, N'SAYLA', 106)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1052, N'TAURIA', 106)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1053, N'TOMEPAMPA', 106)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1054, N'TORO', 106)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1055, N'BARRANQUITA', 107)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1056, N'CAYNARACHI', 107)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1057, N'LAMAS', 107)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1058, N'ALONSO DE ALVARADO', 107)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1059, N'PINTO RECODO', 107)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1060, N'RUMISAPA', 107)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1061, N'SAN ROQUE DE CUMBAZA', 107)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1062, N'SHANAO', 107)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1063, N'TABALOSOS', 107)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1064, N'ZAPATERO', 107)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1065, N'CUÑUMBUQUI', 107)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1066, N'LAMBAYEQUE', 108)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1067, N'CHOCHOPE', 108)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1068, N'ILLIMO', 108)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1069, N'JAYANCA', 108)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1070, N'MOCHUMI', 108)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1071, N'MORROPE', 108)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1072, N'MOTUPE', 108)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1073, N'OLMOS', 108)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1074, N'PACORA', 108)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1075, N'SALAS', 108)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1076, N'TUCUME', 108)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1077, N'SAN JOSE', 108)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1078, N'LAMPA', 109)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1079, N'CABANILLA', 109)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1080, N'CALAPUJA', 109)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1081, N'NICASIO', 109)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1082, N'OCUVIRI', 109)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1083, N'PALCA', 109)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1084, N'PARATIA', 109)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1085, N'PUCARA', 109)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1086, N'SANTA LUCIA', 109)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1087, N'VILAVILA', 109)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1088, N'JESUS', 110)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1089, N'BAÐOS', 110)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1090, N'JIVIA', 110)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1091, N'QUEROPALCA', 110)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1092, N'RONDOS', 110)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1093, N'SAN FRANCISCO DE ASIS', 110)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1094, N'SAN MIGUEL DE CAURI', 110)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1095, N'RUPA-RUPA', 111)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1096, N'DANIEL ALOMIAS ROBLES', 111)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1097, N'HERMILIO VALDIZA', 111)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1098, N'LUYANDO', 111)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1099, N'MARIANO DAMASO BERAU', 111)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1100, N'JOSE CRESPO Y CASTILLO', 111)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1163, N'NAUTA', 113)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1164, N'PARINARI', 113)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1165, N'TIGRE', 113)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1166, N'TROMPETEROS', 113)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1167, N'URARINAS', 113)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1168, N'PUQUIO', 114)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1169, N'AUCARA', 114)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1170, N'CABANA', 114)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1171, N'CARMEN SALCEDO', 114)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1172, N'CHAVIÑA', 114)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1173, N'CHIPAO', 114)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1174, N'HUAC-HUAS', 114)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1175, N'LARAMATE', 114)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1176, N'LEONCIO PRADO', 114)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1177, N'LLAUTA', 114)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1178, N'LUCANAS', 114)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1179, N'OCAÑA', 114)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1180, N'OTOCA', 114)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1181, N'SAISA', 114)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1182, N'SAN CRISTOBAL', 114)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1183, N'SAN JUA', 114)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1184, N'SAN PEDRO', 114)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1185, N'SAN PEDRO DE PALCO', 114)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1186, N'SANCOS', 114)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1187, N'SANTA ANA DE HUAYCAHUACHO', 114)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1188, N'SANTA LUCIA', 114)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1189, N'LAMUD', 115)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1190, N'CAMPORREDONDO', 115)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1191, N'COCABAMBA', 115)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1192, N'COLCAMAR', 115)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1193, N'CONILA', 115)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1194, N'INGUILPATA', 115)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1195, N'LONGUITA', 115)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1196, N'LONYA CHICO', 115)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1197, N'LUYA', 115)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1198, N'LUYA VIEJO', 115)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1199, N'MARIA', 115)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1200, N'OCALLI', 115)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1201, N'OCUMAL', 115)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1202, N'PISUQUIA', 115)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1203, N'PROVIDENCIA', 115)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1204, N'SAN CRISTOBAL', 115)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1205, N'SAN FRANCISCO DEL YESO', 115)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1206, N'SAN JERONIMO', 115)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1207, N'SAN JUAN DE LOPECANCHA', 115)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1208, N'SANTA CATALINA', 115)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1209, N'SANTO TOMAS', 115)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1210, N'TINGO', 115)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1211, N'TRITA', 115)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1212, N'MANU', 116)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1213, N'FITZCARRALD', 116)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1214, N'MADRE DE DIOS', 116)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1215, N'HUACRACHUCO', 117)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1216, N'CHOLO', 117)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1217, N'SAN BUENAVENTURA', 117)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1218, N'JUANJUI', 118)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1219, N'CAMPANILLA', 118)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1220, N'HUICUNGO', 118)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1221, N'PACHIZA', 118)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1222, N'PAJARILLO', 118)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1223, N'PISCOBAMBA', 119)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1224, N'CASCA', 119)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1225, N'ELEAZAR GUZMAN BARRO', 119)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1226, N'FIDEL OLIVAS ESCUDERO', 119)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1227, N'LLAMA', 119)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1228, N'LLUMPA', 119)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1229, N'LUCMA', 119)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1230, N'MUSGA', 119)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1231, N'MOQUEGUA', 120)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1232, N'CARUMAS', 120)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1233, N'CUCHUMBAYA', 120)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1234, N'SAMEGUA', 120)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1235, N'SAN CRISTOBAL', 120)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1236, N'TORATA', 120)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1237, N'YAVARI', 121)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1238, N'RAMON CASTILLA', 121)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1239, N'PEBAS', 121)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1240, N'SAN PABLO', 121)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1241, N'IQUITOS', 122)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1242, N'FERNANDO LORES', 122)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1243, N'ALTO NANAY', 122)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1244, N'INDIANA', 122)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1245, N'LAS 1', 122)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1246, N'MAZA', 122)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1247, N'NAPO', 122)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1248, N'PUNCHANA', 122)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1249, N'PUTUMAYO', 122)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1250, N'TORRES CAUSANA', 122)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1251, N'AYAVIRI', 123)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1252, N'ANTAUTA', 123)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1253, N'CUPI', 123)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1254, N'LLALLI', 123)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1255, N'MACARI', 123)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1256, N'NUÑOA', 123)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1257, N'ORURILLO', 123)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1258, N'SANTA ROSA', 123)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1259, N'UMACHIRI', 123)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1260, N'MOHO', 124)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1261, N'CONIMA', 124)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1262, N'HUAYRAPATA', 124)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1263, N'TILALI', 124)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1264, N'CHULUCANAS', 125)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1265, N'BUENOS AIRES', 125)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1266, N'CHALACO', 125)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1267, N'LA MATANZA', 125)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1268, N'MORROPO', 125)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1269, N'SALITRAL', 125)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1270, N'SAN JUAN DE BIGOTE', 125)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1271, N'SANTA CATALINA DE MOSSA', 125)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1272, N'SANTO DOMINGO', 125)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1273, N'YAMANGO', 125)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1274, N'JEPELACIO', 126)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1275, N'YANTALO', 126)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1276, N'MOYOBAMBA', 126)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1277, N'CALZADA', 126)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1278, N'HABANA', 126)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1279, N'SORITOR', 126)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1280, N'NAZCA', 127)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1281, N'CHANGUILLO', 127)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1282, N'EL INGENIO', 127)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1283, N'MARCONA', 127)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1284, N'VISTA ALEGRE', 127)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1285, N'OCROS', 128)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1286, N'ACAS', 128)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1287, N'CAJAMARQUILLA', 128)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1288, N'CARHUAPAMPA', 128)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1289, N'COCHAS', 128)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1290, N'CONGAS', 128)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1291, N'LLIPA', 128)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1292, N'SAN CRISTOBAL DE RAJA', 128)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1293, N'SAN PEDRO', 128)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1294, N'SANTIAGO DE CHILCAS', 128)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1295, N'OTUZCO', 129)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1296, N'AGALLPAMPA', 129)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1297, N'CHARAT', 129)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1298, N'HUARANCHAL', 129)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1299, N'LA CUESTA', 129)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1300, N'PARANDAY', 129)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1301, N'SINSICAP', 129)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1302, N'USQUIL', 129)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1303, N'MACHE', 129)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1304, N'SALPO', 129)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1305, N'PALCAZU', 130)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1306, N'PUERTO BERMUDEZ', 130)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1307, N'OXAPAMPA', 130)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1308, N'CHONTABAMBA', 130)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1309, N'HUANCABAMBA', 130)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1310, N'POZUZO', 130)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1311, N'VILLA RICA', 130)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1312, N'OYO', 131)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1313, N'ANDAJES', 131)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1314, N'CAUJUL', 131)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1315, N'COCHAMARCA', 131)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1316, N'NAVA', 131)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1317, N'PACHANGARA', 131)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1323, N'PANAO', 133)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1324, N'CHAGLLA', 133)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1325, N'UMARI', 133)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1326, N'MOLINO', 133)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1327, N'CURIMANA', 134)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1328, N'PADRE ABAD', 134)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1329, N'IRAZOLA', 134)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1330, N'PAITA', 135)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1331, N'ARENAL', 135)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1332, N'COLA', 135)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1333, N'LA HUACA', 135)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1334, N'VICHAYAL', 135)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1335, N'AMOTAPE', 135)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1336, N'TAMARINDO', 135)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1337, N'CABANA', 136)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1338, N'BOLOGNESI', 136)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1339, N'CONCHUCOS', 136)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1340, N'HUACASCHUQUE', 136)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1341, N'HUANDOVAL', 136)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1342, N'LACABAMBA', 136)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1343, N'LLAPO', 136)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1344, N'PALLASCA', 136)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1345, N'PAMPAS', 136)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1346, N'SANTA ROSA', 136)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1347, N'TAUCA', 136)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1348, N'TIBILLO', 137)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1349, N'PALPA', 137)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1350, N'LLIPATA', 137)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1351, N'RIO GRANDE', 137)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1352, N'CORACORA', 138)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1353, N'CHUMPI', 138)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1354, N'CORONEL CASTAÑEDA', 138)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1355, N'PACAPAUSA', 138)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1356, N'PULLO', 138)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1357, N'PUYUSCA', 138)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1358, N'SAN FRANCISCO DE RAVACAYCO', 138)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1359, N'UPAHUACHO', 138)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1360, N'LAGUNA PARINACOCHAS', 138)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1361, N'PARURO', 139)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1362, N'ACCHA', 139)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1363, N'CCAPI', 139)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1364, N'COLCHA', 139)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1365, N'HUANOQUITE', 139)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1366, N'OMACHA', 139)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1367, N'PILLPINTO', 139)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1368, N'YAURISQUE', 139)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1370, N'CHAUPIMARCA', 140)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1371, N'HUACHO', 140)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1372, N'HUARIACA', 140)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1373, N'HUAYLLAY', 140)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1374, N'NINACACA', 140)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1375, N'PALLANCHACRA', 140)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1376, N'PAUCARTAMBO', 140)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1377, N'SAN FCO.DE ASIS DE YARUSYACA', 140)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1378, N'SIMON BOLIVAR', 140)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1379, N'TICLACAYA', 140)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1380, N'TINYAHUARCO', 140)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1381, N'VICCO', 140)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1382, N'YANACANCHA', 140)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1383, N'ONGO', 141)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1384, N'TAYABAMBA', 141)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1385, N'BULDIBUYO', 141)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1386, N'CHILLIA', 141)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1387, N'HUANCASPATA', 141)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1388, N'HUAYLILLAS', 141)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1389, N'HUAYO', 141)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1390, N'PARCOY', 141)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1391, N'PATAZ', 141)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1392, N'PIAS', 141)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1393, N'SANTIAGO DE CHALLAS', 141)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1394, N'TAURIJA', 141)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1395, N'URPAY', 141)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1396, N'PAUSA', 142)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1397, N'COLTA', 142)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1398, N'CORCULLA', 142)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1399, N'LAMPA', 142)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1400, N'MARCABAMBA', 142)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1401, N'OYOLO', 142)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1402, N'PARARCA', 142)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1403, N'SAN JAVIER DE ALPABAMBA', 142)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1404, N'SAN JOSE DE USHUA', 142)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1405, N'SARA SARA', 142)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1406, N'PAUCARTAMBO', 143)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1407, N'CAICAY', 143)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1408, N'CHALLABAMBA', 143)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1409, N'COLQUEPATA', 143)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1410, N'HUANCARANI', 143)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1411, N'KOSÑIPATA', 143)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1412, N'PICOTA', 144)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1413, N'BUENOS AIRES', 144)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1414, N'CASPISAPA', 144)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1415, N'PILLUANA', 144)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1416, N'PUCACACA', 144)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1417, N'SAN CRISTOBAL', 144)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1418, N'SAN HILARIO', 144)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1419, N'SHAMBOYACU', 144)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1420, N'TINGO DE PONASA', 144)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1421, N'TRES UNIDOS', 144)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1422, N'PISCO', 145)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1423, N'HUANCANO', 145)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1424, N'HUMAY', 145)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1425, N'INDEPENDENCIA', 145)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1426, N'PARACAS', 145)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1427, N'SAN ANDRES', 145)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1428, N'SAN CLEMENTE', 145)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1429, N'TUPAC AMARU INCA', 145)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1430, N'CASTILLA', 146)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1432, N'CURA MORI', 146)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1433, N'EL TALLA', 146)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1434, N'LA ARENA', 146)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1435, N'LA UNIO', 146)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1439, N'PIURA', 146)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1440, N'CATACAOS', 146)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1441, N'LAS LOMAS', 146)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1442, N'TAMBO GRANDE', 146)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1443, N'POMABAMBA', 147)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1444, N'HUAYLLA', 147)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1445, N'PAROBAMBA', 147)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1446, N'QUINUABAMBA', 147)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1447, N'HONORIA', 148)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1448, N'TOURNAVISTA', 148)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1449, N'PUERTO INCA', 148)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1450, N'CODO DEL POZUZO', 148)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1451, N'YUYAPICHIS', 148)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1452, N'PUNO', 149)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1453, N'ACORA', 149)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1454, N'AMANTANI', 149)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1455, N'ATUNCOLLA', 149)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1456, N'CHUCUITO', 149)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1457, N'MAÑAZO', 149)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1458, N'PAUCARCOLLA', 149)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1459, N'PICHACANI', 149)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1460, N'PLATERIA', 149)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1461, N'SAN ANTONIO', 149)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1462, N'TIQUILLACA', 149)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1463, N'VILQUE', 149)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1464, N'LAGUNA UMAYO', 149)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1465, N'CAPACHICA', 149)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1466, N'COATA', 149)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1467, N'HUATA', 149)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1468, N'PURUS', 150)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1469, N'CAMANTI', 151)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1470, N'URCOS', 151)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1471, N'ANDAHUAYLILLAS', 151)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1472, N'CCARHUAYO', 151)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1473, N'CCATCA', 151)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1474, N'CUSIPATA', 151)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1475, N'HUARO', 151)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1476, N'LUCRE', 151)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1477, N'MARCAPATA', 151)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1478, N'OCONGATE', 151)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1479, N'OROPESA', 151)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1480, N'QUIQUIJANA', 151)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1481, N'RECUAY', 152)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1482, N'CATAC', 152)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1483, N'COTAPARACO', 152)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1484, N'HUAYLLAPAMPA', 152)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1485, N'LLACLLI', 152)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1486, N'MARCA', 152)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1487, N'PAMPAS CHICO', 152)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1488, N'PARARI', 152)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1489, N'TAPACOCHA', 152)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1490, N'TICAPAMPA', 152)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1491, N'ALTO TAPICHE', 153)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1492, N'CAPELO', 153)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1493, N'EMILIO SAN MARTI', 153)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1494, N'MAQUIA', 153)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1495, N'PUINAHUA', 153)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1496, N'SAQUENA', 153)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1497, N'SOPLI', 153)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1498, N'TAPICHE', 153)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1499, N'JENARO HERRERA', 153)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1500, N'YAQUERANA', 153)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1501, N'REQUENA', 153)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1502, N'RIOJA', 154)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1503, N'AWAJU', 154)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1504, N'ELIAS SOPLIN VARGAS', 154)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1505, N'NUEVA CAJAMARCA', 154)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1506, N'PARDO MIGUEL', 154)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1507, N'POSIC', 154)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1508, N'SAN FERNANDO', 154)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1509, N'YORONGOS', 154)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1510, N'YURACYACU', 154)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1511, N'SAN NICOLAS', 155)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1512, N'CHIRIMOTO', 155)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1513, N'COCHAMAL', 155)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1514, N'HUAMBO', 155)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1515, N'LIMABAMBA', 155)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1516, N'LONGAR', 155)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1517, N'MARISCAL BENAVIDES', 155)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1518, N'MILPUC', 155)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1519, N'OMIA', 155)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1520, N'SANTA ROSA', 155)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1521, N'TOTORA', 155)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1522, N'VISTA ALEGRE', 155)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1523, N'PUTINA', 156)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1524, N'ANANEA', 156)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1525, N'PEDRO VILCA APAZA', 156)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1526, N'QUILCAPUNCU', 156)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1527, N'SINA', 156)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1528, N'SAN IGNACIO', 157)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1529, N'CHIRINOS', 157)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1530, N'HUARANGO', 157)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1531, N'LA COIPA', 157)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1532, N'NAMBALLE', 157)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1533, N'SAN JOSE DE LOURDES', 157)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1534, N'TABACONAS', 157)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1535, N'PEDRO GALVEZ', 158)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1536, N'CHANCAY', 158)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1537, N'EDUARDO VILLANUEVA', 158)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1538, N'GREGORIO PITA', 158)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1539, N'ICHOCA', 158)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1540, N'JOSE MANUEL QUIROZ', 158)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1541, N'JOSE SABOGAL', 158)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1542, N'CHIPURANA', 159)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1543, N'EL PORVENIR', 159)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1544, N'HUIMBAYOC', 159)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1545, N'LA BANDA DE SHILCAYO', 159)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1546, N'PAPAPLAYA', 159)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1547, N'SAN ANTONIO', 159)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1548, N'TARAPOTO', 159)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1549, N'ALBERTO LEVEAU', 159)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1550, N'CACATACHI', 159)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1551, N'CHAZUTA', 159)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1552, N'JUAN GUERRA', 159)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1553, N'MORALES', 159)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1554, N'SAUCE', 159)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1555, N'SHAPAJA', 159)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1556, N'CATILLUC', 160)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1557, N'LLAPA', 160)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1558, N'SAN SILVESTRE DE COCHA', 160)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1559, N'TONGOD', 160)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1560, N'SAN MIGUEL', 160)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1561, N'BOLIVAR', 160)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1562, N'CALQUIS', 160)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1563, N'EL PRADO', 160)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1564, N'LA FLORIDA', 160)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1565, N'NANCHOC', 160)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1566, N'NIEPOS', 160)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1567, N'SAN GREGORIO', 160)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1568, N'UNION AGUA BLANCA', 160)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1569, N'TUMBADE', 161)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1570, N'SAN PABLO', 161)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1571, N'SAN BERNARDINO', 161)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1572, N'SAN LUIS', 161)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1573, N'JULIACA', 162)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1574, N'CABANA', 162)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1575, N'CABANILLAS', 162)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1576, N'CARACOTO', 162)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1577, N'HUAMACHUCO', 163)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1578, N'CHUGAY', 163)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1579, N'COCHORCO', 163)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1580, N'CURGOS', 163)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1581, N'MARCABAL', 163)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1582, N'SANAGORA', 163)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1583, N'SARI', 163)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1584, N'SARTIMBAMBA', 163)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1585, N'SANDIA', 164)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1586, N'CUYOCUYO', 164)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1587, N'LIMBANI', 164)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1588, N'PATAMBUCO', 164)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1589, N'PHARA', 164)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1590, N'QUIACA', 164)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1591, N'SAN JUAN DEL ORO', 164)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1592, N'YANAHUAYA', 164)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1593, N'ALTO INAMBARI', 164)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1594, N'CACERES DEL PERU', 165)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1595, N'MORO', 165)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1596, N'NEPEÑA', 165)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1597, N'SAMANCO', 165)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1598, N'NUEVO CHIMBOTE', 165)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1599, N'COISHCO', 165)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1600, N'MACATE', 165)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1601, N'SANTA', 165)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1602, N'CHIMBOTE', 165)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1614, N'CACHICADA', 167)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1615, N'SITABAMBA', 167)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1616, N'SANTIAGO DE CHUCO', 167)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1617, N'ANGASMARCA', 167)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1618, N'MOLLEBAMBA', 167)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1619, N'MOLLEPATA', 167)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1620, N'QUIRUVILCA', 167)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1621, N'SANTA CRUZ DE CHUCA', 167)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1622, N'SATIPO', 168)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1623, N'COVIRIALI', 168)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1624, N'LLAYLLA', 168)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1625, N'MAZAMARI', 168)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1626, N'PAMPA HERMOSA', 168)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1627, N'PANGOA', 168)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1628, N'RIO NEGRO', 168)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1629, N'RIO TAMBO', 168)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1630, N'SECHURA', 169)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1631, N'BELLAVISTA DE LA UNIO', 169)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1632, N'BERNAL', 169)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1633, N'CRISTO NOS VALGA', 169)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1634, N'VICE', 169)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1635, N'RINCONADA LLICUAR', 169)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1636, N'SIHUAS', 170)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1637, N'ACOBAMBA', 170)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1638, N'ALFONSO UGARTE', 170)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1639, N'CASHAPAMPA', 170)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1640, N'CHINGALPO', 170)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1641, N'HUAYLLABAMBA', 170)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1642, N'QUICHES', 170)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1643, N'RAGASH', 170)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1644, N'SAN JUA', 170)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1645, N'SICSIBAMBA', 170)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1646, N'QUEROBAMBA', 171)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1647, N'BELE', 171)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1648, N'CHALCOS', 171)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1649, N'CHILCAYOC', 171)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1650, N'HUACAÑA', 171)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1651, N'MORCOLLA', 171)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1652, N'PAICO', 171)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1653, N'SAN PEDRO DE LARCAY', 171)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1654, N'SAN SALVADOR DE QUIJE', 171)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1655, N'SANTIAGO DE PAUCARAY', 171)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1656, N'SORAS', 171)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1657, N'MIGUEL CHECA', 172)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1658, N'SULLANA', 172)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1659, N'IGNACIO ESCUDERO', 172)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1660, N'LANCONES', 172)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1661, N'MARCAVELICA', 172)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1662, N'QUERECOTILLO', 172)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1665, N'TACNA', 173)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1666, N'ALTO DE LA ALIANZA', 173)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1667, N'CALANA', 173)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1668, N'CIUDAD NUEVA', 173)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1669, N'INCLA', 173)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1670, N'PACHIA', 173)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1671, N'PALCA', 173)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1672, N'POCOLLAY', 173)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1673, N'SAMA', 173)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1674, N'IÑAPARI', 174)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1675, N'IBERIA', 174)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1676, N'TAHUAMANU', 174)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1677, N'PARIÑAS', 175)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1678, N'EL ALTO', 175)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1679, N'LA BREA', 175)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1680, N'LOBITOS', 175)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1681, N'LOS ORGANOS', 175)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1682, N'MANCORA', 175)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1683, N'TAMBOPATA', 176)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1684, N'INAMBARI', 176)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1685, N'LAS PIEDRAS', 176)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1686, N'LABERINTO', 176)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1687, N'TARATA', 177)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1688, N'CHUCATAMANI', 177)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1689, N'ESTIQUE', 177)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1690, N'ESTIQUE-PAMPA', 177)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1691, N'SITAJARA', 177)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1692, N'SUSAPAYA', 177)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1693, N'TARUCACHI', 177)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1694, N'TICACO', 177)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1695, N'TARMA', 178)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1696, N'ACOBAMBA', 178)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1697, N'HUARICOLCA', 178)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1698, N'HUASAHUASI', 178)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1699, N'LA UNIO', 178)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1701, N'PALCAMAYO', 178)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1702, N'SAN PEDRO DE CAJAS', 178)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1703, N'TAPO', 178)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1704, N'PAMPAS', 179)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1705, N'ACOSTAMBO', 179)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1706, N'ACRAQUIA', 179)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1707, N'AHUAYCHA', 179)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1708, N'COLCABAMBA', 179)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1709, N'DANIEL HERNANDEZ', 179)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1710, N'HUACHOCOLPA', 179)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1711, N'HUANDO', 179)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1712, N'HUARIBAMBA', 179)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1713, N'ÑAHUIMPUQUIO', 179)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1714, N'PAZOS', 179)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1715, N'QUISHUAR', 179)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1716, N'SALCABAMBA', 179)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1717, N'SALCAHUASI', 179)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1718, N'SAN MARCOS DE ROCCHAC', 179)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1719, N'SURCUBAMBA', 179)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1720, N'TINTAY PUNCU', 179)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1721, N'TOCACHE', 180)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1722, N'NUEVO PROGRESO', 180)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1723, N'POLVORA', 180)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1724, N'UCHIZA', 180)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1726, N'VICTOR LARCO HERRERA', 181)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1727, N'HUANCHACO', 181)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1728, N'LA ESPERANZA', 181)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1729, N'EL PORVENIR', 181)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1730, N'LAREDO', 181)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1731, N'SIMBAL', 181)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1732, N'FLORENCIA DE MORA', 181)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1733, N'TRUJILLO', 181)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1735, N'MOCHE', 181)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1736, N'POROTO', 181)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1737, N'SALAVERRY', 181)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1738, N'TUMBES', 182)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1739, N'CORRALES', 182)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1740, N'LA CRUZ', 182)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1741, N'PAMPAS DE HOSPITAL', 182)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1742, N'SAN JACINTO', 182)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1743, N'SAN JUAN DE LA VIRGE', 182)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1744, N'CONTAMANA', 183)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1745, N'INAHUAYA', 183)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1746, N'PADRE MARQUEZ', 183)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1747, N'PAMPA HERMOSA', 183)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1748, N'SARAYACU', 183)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1749, N'VARGAS GUERRA', 183)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1750, N'URUBAMBA', 184)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1751, N'CHINCHERO', 184)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1752, N'HUAYLLABAMBA', 184)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1753, N'MACHUPICCHU', 184)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1754, N'MARAS', 184)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1755, N'OLLANTAYTAMBO', 184)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1756, N'YUCAY', 184)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1757, N'BAGUA GRANDE', 185)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1758, N'CAJARURO', 185)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1759, N'CUMBA', 185)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1760, N'EL MILAGRO', 185)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1761, N'JAMALCA', 185)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1762, N'LONYA GRANDE', 185)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1763, N'YAMO', 185)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1764, N'HUANCAPI', 186)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1765, N'ALCAMENCA', 186)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1766, N'APONGO', 186)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1767, N'ASQUIPATA', 186)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1768, N'CANARIA', 186)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1769, N'CAYARA', 186)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1770, N'COLCA', 186)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1771, N'HUAMANQUIQUIA', 186)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1772, N'HUANCARAYLLA', 186)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1773, N'HUAYA', 186)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1774, N'SARHUA', 186)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1775, N'VILCANCHOS', 186)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1776, N'VILCAS HUAMA', 187)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1777, N'ACCOMARCA', 187)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1778, N'CARHUANCA', 187)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1779, N'CONCEPCIO', 187)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1780, N'HUAMBALPA', 187)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1781, N'INDEPENDENCIA', 187)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1782, N'SAURAMA', 187)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1783, N'VISCHONGO', 187)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1787, N'CHAVINILLO', 189)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1788, N'CAHUAC', 189)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1789, N'CHACABAMBA', 189)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1790, N'CHUPA', 189)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1791, N'JACAS CHICO', 189)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1792, N'OBAS', 189)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1793, N'PAMPAMARCA', 189)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1794, N'LA OROYA', 190)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1795, N'CHACAPALPA', 190)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1796, N'HUAY-HUAY', 190)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1797, N'MARCAPOMACOCHA', 190)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1798, N'MOROCOCHA', 190)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1799, N'PACCHA', 190)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1800, N'SANTA BARBARA DE CARHUACAYA', 190)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1801, N'SANTA ROSA DE SACCO', 190)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1802, N'SUITUCANCHA', 190)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1803, N'YAULI', 190)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1804, N'AYAVIRI', 191)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1805, N'COCHAS', 191)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1806, N'HUAMPARA', 191)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1807, N'HUANCAYA', 191)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1808, N'HUAÑEC', 191)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1809, N'MIRAFLORES', 191)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1810, N'OMAS', 191)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1811, N'QUINCHES', 191)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1812, N'QUINOCAY', 191)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1813, N'SAN JOAQUI', 191)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1814, N'SAN PEDRO DE PILAS', 191)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1815, N'TANTA', 191)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1816, N'TAURIPAMPA', 191)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1817, N'YAUYOS', 191)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1818, N'ALIS', 191)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1819, N'AYAUCA', 191)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1820, N'AZANGARO', 191)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1821, N'CACRA', 191)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1822, N'CARANIA', 191)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1823, N'CATAHUASI', 191)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1824, N'CHOCOS', 191)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1825, N'COLONIA', 191)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1826, N'HONGOS', 191)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1827, N'HUANGASCAR', 191)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1828, N'HUANTA', 191)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1829, N'LARAOS', 191)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1830, N'LINCHA', 191)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1831, N'MADEA', 191)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1832, N'PUTINZA', 191)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1833, N'TOMAS', 191)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1834, N'TUPE', 191)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1835, N'VIÑAC', 191)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1836, N'YUNGAY', 192)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1838, N'CASCAPARA', 192)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1839, N'MANCOS', 192)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1840, N'MATACOTO', 192)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1841, N'RANRAHIRCA', 192)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1842, N'QUILLO', 192)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1843, N'YUNGUYO', 193)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1844, N'ANAPIA', 193)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1845, N'COPANI', 193)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1846, N'CUTURAPI', 193)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1847, N'OLLARAYA', 193)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1848, N'TINICACHI', 193)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1849, N'UNICACHI', 193)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1850, N'ZARUMILLA', 194)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1851, N'AGUAS VERDES', 194)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1852, N'MATAPALO', 194)
GO
INSERT [dbo].[Distrito] ([DistritoID], [Nombre], [ProvinciaID]) VALUES (1853, N'PAPAYAL', 194)
GO
SET IDENTITY_INSERT [dbo].[Distrito] OFF
GO
SET IDENTITY_INSERT [dbo].[Motivo] ON 
GO
INSERT [dbo].[Motivo] ([MotivoID], [Nombre]) VALUES (1, N'Preguntas')
GO
INSERT [dbo].[Motivo] ([MotivoID], [Nombre]) VALUES (2, N'Quejas')
GO
INSERT [dbo].[Motivo] ([MotivoID], [Nombre]) VALUES (3, N'Reclamos')
GO
INSERT [dbo].[Motivo] ([MotivoID], [Nombre]) VALUES (4, N'Sugerencias')
GO
SET IDENTITY_INSERT [dbo].[Motivo] OFF
GO
SET IDENTITY_INSERT [dbo].[Provincia] ON 
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (1, N'ABANCAY', 3)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (3, N'ACOBAMBA', 9)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (4, N'ACOMAYO', 8)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (5, N'AIJA', 2)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (6, N'ALTO ABANCAY', 16)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (7, N'AMBO', 10)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (8, N'ANDAHUAYLAS', 3)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (9, N'ANGARAES', 9)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (10, N'ANTA', 8)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (11, N'ANTABAMBA', 3)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (12, N'ANTONIO RAYMONDI', 2)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (13, N'AREQUIPA', 4)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (14, N'ASCOPE', 13)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (15, N'ASUNCION', 2)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (16, N'ATALAYA', 25)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (17, N'AYABACA', 20)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (18, N'AYMARAES', 3)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (19, N'AZANGARO', 21)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (21, N'BAGUA', 1)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (23, N'BARRANCA', 15)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (24, N'BELLAVISTA', 22)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (25, N'BOLIVAR', 13)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (26, N'BOLOGNESI', 2)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (27, N'BONGARA', 1)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (28, N'CAJABAMBA', 6)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (29, N'CAJAMARCA', 6)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (30, N'CAJATAMBO', 15)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (31, N'CALCA', 8)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (32, N'CALLAO', 7)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (33, N'CAMANA', 4)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (34, N'CANAS', 8)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (36, N'CANCHIS', 8)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (37, N'CANDARAVE', 23)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (38, N'CANGALLO', 5)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (39, N'CANTA', 15)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (40, N'CAÑETE', 15)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (41, N'CARABAYA', 21)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (42, N'CARAVELI', 4)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (43, N'CARHUAZ', 2)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (44, N'CARLOS F. FIRZCARRALD', 2)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (45, N'CASMA', 2)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (46, N'CASTILLA', 4)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (47, N'CASTROVIRREYNA', 9)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (48, N'CAYLLOMA', 4)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (49, N'CELENDIN', 6)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (50, N'CHACHAPOYAS', 1)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (51, N'CHANCHOMAYO', 12)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (52, N'CHEPEN', 13)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (53, N'CHICLAYO', 14)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (54, N'CHINCHA', 11)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (55, N'CHINCHEROS', 3)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (56, N'CHOTA', 6)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (57, N'CHUCUITO', 21)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (58, N'CHUMBIVILCAS', 8)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (59, N'CHUPACA', 12)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (60, N'CHURCAMPA', 9)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (61, N'CONCEPCION', 12)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (62, N'CONDESUYOS', 4)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (63, N'CONDORCANQUI', 1)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (64, N'CONTRALMIRANTE VILLAR', 24)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (65, N'CONTUMAZA', 6)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (66, N'CORONEL PORTILLO', 25)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (67, N'CORONGO', 2)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (68, N'COTABAMBAS', 3)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (69, N'CUSCO', 8)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (70, N'CUTERVO', 6)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (71, N'DANIEL ALCIDES CARRION', 19)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (72, N'DOS DE MAYO', 10)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (73, N'EL COLLAO', 21)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (74, N'EL DORADO', 22)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (75, N'ESPINAR', 8)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (76, N'FERREÑAFE', 14)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (77, N'GENERAL SANCHEZ CERRO', 18)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (78, N'GRAN CHIMU', 13)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (79, N'GRAU', 3)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (80, N'HUACAYBAMBA', 10)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (81, N'HUALGAYOC', 6)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (82, N'HUALLAGA', 22)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (83, N'HUAMALIES', 10)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (84, N'HUAMANGA', 5)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (85, N'HUANCA SANCOS', 5)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (86, N'HUACABAMBA', 20)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (87, N'HUANCANE', 21)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (88, N'HUANCAVELICA', 9)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (89, N'HUANCAYO', 12)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (90, N'HUANTA', 5)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (92, N'HUANUCO', 10)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (93, N'HUARAL', 15)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (94, N'HUARAZ', 2)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (95, N'HUARI', 2)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (96, N'HUARMEY', 2)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (97, N'HUAROCHIRI', 15)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (98, N'HUAURA', 15)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (99, N'HUAYLAS', 2)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (100, N'HUAYTARA', 9)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (101, N'ICA', 11)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (102, N'ILO', 18)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (103, N'ISLAY', 4)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (104, N'JAEN', 6)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (105, N'JAUJA', 12)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (106, N'JORGE BASADRE', 23)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (107, N'JULCAN', 13)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (108, N'JUNIN', 12)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (109, N'LA CONVENCION', 8)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (110, N'LA MAR', 5)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (111, N'LA UNION', 4)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (113, N'LAMAS', 22)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (114, N'LAMBAYEQUE', 14)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (115, N'LAMPA', 21)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (116, N'LAURICOCHA', 10)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (117, N'LEONCIO PRADO', 10)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (118, N'LIMA', 15)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (119, N'LORETO', 16)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (120, N'LUCANAS', 5)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (121, N'LUYA', 1)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (122, N'MANU', 17)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (123, N'MARAÑON', 10)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (124, N'MARISCAL CACERES', 22)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (125, N'MARISCAL LUZURIAGA', 2)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (126, N'MARISCAL NIETO', 18)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (127, N'MARISCAL RAMON CASTILLA', 16)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (128, N'MAYNAS', 16)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (129, N'MELGAR', 21)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (130, N'MOHO', 21)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (131, N'MORROPON', 20)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (133, N'MOYOBAMBA', 22)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (134, N'NAZCA', 11)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (135, N'OCROS', 2)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (136, N'OTUZCO', 13)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (137, N'OXAPAMPA', 19)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (138, N'OYON', 15)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (139, N'PACASMAYO', 13)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (140, N'PACHITEA', 10)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (141, N'PADRE ABAD', 25)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (142, N'PAITA', 20)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (143, N'PALLASCA', 2)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (144, N'PALPA', 11)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (145, N'PARINACOCHAS', 5)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (146, N'PARURO', 8)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (147, N'PASCO', 19)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (148, N'PATAZ', 13)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (149, N'PAUCAR DEL SARA SARA', 5)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (150, N'PAUCARTAMBO', 8)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (151, N'PICOTA', 22)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (152, N'PISCO', 11)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (153, N'PIURA', 20)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (154, N'PAMABAMBA', 2)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (155, N'PUERTO INCA', 10)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (156, N'PUNO', 21)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (157, N'PURUS', 25)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (158, N'QUISPICANCHI', 8)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (159, N'RECUAY', 2)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (160, N'REQUENA', 16)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (161, N'RIOJA', 22)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (162, N'RODRIGUEZ DE MENDOZA', 1)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (163, N'SAN ANTONIO DE PUTINA', 21)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (164, N'SAN IGNACIO', 6)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (165, N'SAN MARCOS', 6)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (167, N'SAN MARTIN', 22)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (168, N'SAN MIGUEL', 6)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (169, N'SAN PABLO', 6)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (170, N'SAN ROMAN', 21)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (171, N'SANCHEZ CARRION', 13)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (172, N'SANDIA', 21)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (173, N'SANTA', 2)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (174, N'SANTA CRUZ', 6)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (175, N'SANTIAGO DE CHUCO', 13)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (176, N'SATIPO', 12)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (177, N'SECHURA', 20)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (178, N'SIHUAS', 2)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (179, N'SUCRE', 5)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (180, N'SULLANA', 20)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (181, N'TACNA', 23)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (182, N'TAHUAMANU', 17)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (183, N'TALARA', 20)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (184, N'TANTAPATA', 17)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (185, N'TARATA', 23)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (186, N'TARMA', 12)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (187, N'TAYACAJA', 9)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (189, N'TOCACHE', 22)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (190, N'TRUJILLO', 13)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (191, N'TUMBES', 24)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (192, N'UCAYALI', 16)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (193, N'URUBAMBA', 1)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (194, N'VICTOR FAJARDO', 5)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (195, N'VILCAS HUAMAN', 5)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (196, N'VIRU', 13)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (197, N'YAROWILCA', 10)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (198, N'YAULI', 12)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (199, N'YAUYOS', 15)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (200, N'YUNGAY', 2)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (201, N'YUNGUYO', 21)
GO
INSERT [dbo].[Provincia] ([ProvinciaID], [Nombre], [DepartamentoID]) VALUES (202, N'ZARUMILLA', 24)
GO
SET IDENTITY_INSERT [dbo].[Provincia] OFF
GO
/****** Object:  Index [IX_Distrito_ProvinciaID]    Script Date: 28/10/2019 0:38:30 ******/
CREATE NONCLUSTERED INDEX [IX_Distrito_ProvinciaID] ON [dbo].[Distrito]
(
	[ProvinciaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Provincia_DepartamentoID]    Script Date: 28/10/2019 0:38:30 ******/
CREATE NONCLUSTERED INDEX [IX_Provincia_DepartamentoID] ON [dbo].[Provincia]
(
	[DepartamentoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Usuario_DistritoID]    Script Date: 28/10/2019 0:38:30 ******/
CREATE NONCLUSTERED INDEX [IX_Usuario_DistritoID] ON [dbo].[Usuario]
(
	[DistritoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Usuario_MotivoID]    Script Date: 28/10/2019 0:38:30 ******/
CREATE NONCLUSTERED INDEX [IX_Usuario_MotivoID] ON [dbo].[Usuario]
(
	[MotivoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Distrito]  WITH CHECK ADD  CONSTRAINT [FK_Distrito_Provincia_ProvinciaID] FOREIGN KEY([ProvinciaID])
REFERENCES [dbo].[Provincia] ([ProvinciaID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Distrito] CHECK CONSTRAINT [FK_Distrito_Provincia_ProvinciaID]
GO
ALTER TABLE [dbo].[Provincia]  WITH CHECK ADD  CONSTRAINT [FK_Provincia_Departamento_DepartamentoID] FOREIGN KEY([DepartamentoID])
REFERENCES [dbo].[Departamento] ([DepartamentoID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Provincia] CHECK CONSTRAINT [FK_Provincia_Departamento_DepartamentoID]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Distrito_DistritoID] FOREIGN KEY([DistritoID])
REFERENCES [dbo].[Distrito] ([DistritoID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_Distrito_DistritoID]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Motivo_MotivoID] FOREIGN KEY([MotivoID])
REFERENCES [dbo].[Motivo] ([MotivoID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_Motivo_MotivoID]
GO
