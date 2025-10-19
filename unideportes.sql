CREATE TABLE equipos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    tournamentId INT NOT NULL,
    teamName VARCHAR(255) NOT NULL,
    captain VARCHAR(255) NOT NULL,
    delegate VARCHAR(255) NOT NULL,
    players VARCHAR(255) NOT NULL,
    studentEmail VARCHAR(255) NOT NULL
);
INSERT INTO "equipos" VALUES(1,1,'barcelona','camilo','messi','[{"name":"camilo paternian","photo":"WhatsApp Image 2025-05-09 at 10.51.37 AM.jpeg"}]','camilo@gmail.com');
INSERT INTO "equipos" VALUES(2,1,'fsafsadf','dsfsdf','sdfsdf','[{"name":"sdfsdf","photo":"WhatsApp Image 2025-05-09 at 10.51.37 AM.jpeg"}]','camilo@gmail.com');
INSERT INTO "equipos" VALUES(3,1,'fsafsadf','dsfsdf','sdfsdf','[{"name":"sdfsdf","photo":"WhatsApp Image 2025-05-09 at 10.51.37 AM.jpeg"}]','camilo@gmail.com');
INSERT INTO "equipos" VALUES(4,1,'fsafsadf','dsfsdf','sdfsdf','[{"name":"sdfsdf","photo":"WhatsApp Image 2025-05-09 at 10.51.37 AM.jpeg"}]','camilo@gmail.com');
INSERT INTO "equipos" VALUES(5,1,'dasdas','dasas','das','[{"name":"dasda","photo":"WhatsApp Image 2025-05-09 at 10.51.37 AM.jpeg"}]','camilo@gmail.com');
INSERT INTO "equipos" VALUES(6,1,'barcelona','cacaca','caca','["acacac","cacacaca","cacac","caca"]','camilo@gmail.com');
INSERT INTO "equipos" VALUES(7,1,'barcelona','cacaca','caca','["acacac","cacacaca","cacac","caca"]','camilo@gmail.com');
INSERT INTO "equipos" VALUES(8,1,'barcelona','cacaca','caca','["acacac","cacacaca","cacac","caca"]','camilo@gmail.com');
INSERT INTO "equipos" VALUES(9,1,'barcelona','cacaca','caca','["acacac","cacacaca","cacac","caca"]','camilo@gmail.com');
CREATE TABLE sesiones (
        id INT PRIMARY KEY AUTO_INCREMENT,
        usuario_id INT NOT NULL,
        token VARCHAR(255) UNIQUE NOT NULL,
        fecha_inicio DATETIME DEFAULT CURRENT_TIMESTAMP,
        fecha_fin DATETIME,
        FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
    );
INSERT INTO "sesiones" VALUES(1,2,'fadd7eb8b38b9d73a002e9aa66a8347545cb4bf3300d948ec64b8867442e4895','2025-05-19 05:12:56',NULL);
INSERT INTO "sesiones" VALUES(2,1,'c6f509b2da3e89e28412d86893839e3fd308110c654ec129cb3545c86351d522','2025-05-19 05:13:27',NULL);
INSERT INTO "sesiones" VALUES(3,3,'c6427f84155411445a62541af90f88a103ec45395f0ce5d6359743e5d25789d1','2025-05-19 05:14:22',NULL);
INSERT INTO "sesiones" VALUES(4,3,'2f35188e3248a1bbb008ae7b14391667f619361008366eee2cdaadcbe0b06a00','2025-05-19 05:16:56',NULL);
INSERT INTO "sesiones" VALUES(5,3,'6b128db52e60beaf174ccea8ecc57dacd31e4e7115231c9992bac38afd109b6b','2025-05-19 05:26:22',NULL);
INSERT INTO "sesiones" VALUES(6,1,'bf30a354b49b47bff44e90015e9c14f6409aa1efdf28e6a09a08726c01b8d993','2025-05-19 05:27:58',NULL);
INSERT INTO "sesiones" VALUES(7,3,'05314ec7fdcec671981193c7701b36be2b740e66f1993e895dbdfb0766ca4847','2025-05-19 05:29:21',NULL);
INSERT INTO "sesiones" VALUES(8,3,'ca9b8e32ae5fcdcc703a3d5794770e34d03523f9b4ab91aae19279209af2ab67','2025-05-19 05:36:22',NULL);
INSERT INTO "sesiones" VALUES(9,1,'de72264615048d3271b03565d6f63c3533ff6a5e9207281849bdf750afbb5127','2025-05-19 05:48:06',NULL);
INSERT INTO "sesiones" VALUES(10,4,'00eaa2b7c2977cbeb2c8687bf745ad682a2a249235cac9d1e9d87a6caa930fd8','2025-05-19 06:45:20',NULL);
INSERT INTO "sesiones" VALUES(11,3,'3c0431dfc42dabd8cab834b625238c8008d490058ec4ff70b85bc7a82dbc61c9','2025-05-19 06:52:08',NULL);
INSERT INTO "sesiones" VALUES(12,3,'4ff391b6aba1f0e858bb646b53d672bd21582a840e7287b28942b865a4278dcd','2025-05-19 07:28:35',NULL);
INSERT INTO "sesiones" VALUES(13,1,'3d5fcda9c77a775b7e125bf7cf347af2f6bbaee6e2aa6f64667e091ef283639b','2025-05-19 07:41:03',NULL);
INSERT INTO "sesiones" VALUES(14,3,'3992e72fd1e7e6c43b3ff07935b4db39bc47b4c90e9a0a9d7f3b7586bf698ada','2025-05-19 08:03:45',NULL);
INSERT INTO "sesiones" VALUES(15,1,'f78f8d46272b5f8c66531ea00f28733cdb5c3858f6d651696a0c42a71317a4dd','2025-05-19 08:04:40',NULL);
INSERT INTO "sesiones" VALUES(16,3,'82f96971a47f9136baa4145aff8832d00de48a5f9551032e52987ae63526010f','2025-05-19 08:12:58',NULL);
INSERT INTO "sesiones" VALUES(17,3,'c266e13f3e69148576b814bc833e1732b1a78c34bb30bde7f60837da0c8a769a','2025-05-19 09:23:38',NULL);
INSERT INTO "sesiones" VALUES(18,5,'05eea9191be83e9319c54493ac4454c3b8ef1e7ea756f1dd1f36d7fc81f0a1a1','2025-05-19 09:32:44',NULL);
INSERT INTO "sesiones" VALUES(19,1,'932bb55210a0dada42ac289f2f6071393aa512eedd6cbe63da2477ef542c7085','2025-05-19 10:04:17',NULL);
INSERT INTO "sesiones" VALUES(20,3,'e1f53123229be3e46083ab812f534e79350df5d2d515fc0a3cb97a8f705f7650','2025-05-19 11:49:14',NULL);
INSERT INTO "sesiones" VALUES(21,3,'96f794ccb0834b230563a79c3619deab4414fae9177b2d56f920aadaf13b8f3b','2025-05-19 11:57:34',NULL);
INSERT INTO "sesiones" VALUES(22,3,'dc771023b779cf139b4dba6f55e11a1a4ad3d40768efd027096449f7d0cadf03','2025-05-19 12:05:19',NULL);
INSERT INTO "sesiones" VALUES(23,3,'5a046c89c91f07377933f4bd60686602d399cb3c08ce5bd81743815dc2a11846','2025-05-19 12:09:36',NULL);
INSERT INTO "sesiones" VALUES(24,3,'d97b12851d5ed4014732f62765a3080731e3c08d42adec6693bfdc260f2a8f26','2025-05-19 12:10:04',NULL);
INSERT INTO "sesiones" VALUES(25,3,'297e4322133f81dcfc98e4df6a0074aac205de39b30159c958457f29fbd4d162','2025-05-19 18:07:50',NULL);
INSERT INTO "sesiones" VALUES(26,1,'6c1607cc8ad6532cf6ae9a6dba398d710bdfe7459860823446f897bc7a44b4db','2025-05-19 18:13:00',NULL);
INSERT INTO "sesiones" VALUES(27,3,'c9867fd20da674aee8850b98974d6d455db59dd1a50825bbc78c40a2fe277238','2025-05-19 18:15:09',NULL);
INSERT INTO "sesiones" VALUES(28,3,'585f1569227ed40f37175bcced43c068f148a30cb99ee07750c5b2bf7b2bbbf0','2025-05-19 18:19:16',NULL);
INSERT INTO "sesiones" VALUES(29,3,'3217a4d5bdd2fff29fb98c6c0bb65966823911f0a67160507fd1c080c891db2f','2025-05-19 18:20:05',NULL);
INSERT INTO "sesiones" VALUES(30,3,'d09f6055e1a255b7743344cbc90fa1056cbc633f72320f219b8da7f38c3386e6','2025-05-19 18:23:05',NULL);
INSERT INTO "sesiones" VALUES(31,1,'cabf221b97fff99ceca59b0f8c10203f5a37c22aeff659a1863c04e3fd3f78f0','2025-05-19 19:41:25',NULL);
INSERT INTO "sesiones" VALUES(32,1,'eb896a12d308424d48dcf571b2ce4b2e734a002e0f8e56c3d57cba12bd20bada','2025-05-19 21:07:14',NULL);
INSERT INTO "sesiones" VALUES(33,6,'27e1eb32949bc8cc83d0c481887f3f65e568675922bffe67842d49fb673b3227','2025-05-19 22:19:05',NULL);
INSERT INTO "sesiones" VALUES(34,3,'383f1029eae02056b8f034c1f907bfe79f62206b5d31d341fbd54b0549c0368a','2025-05-20 00:34:48',NULL);
INSERT INTO "sesiones" VALUES(35,3,'26653670dc039252abff5dcaba15a99eaf60a5369cc6d7e3c9b5e4f1c6d964f4','2025-05-20 00:40:58',NULL);
INSERT INTO "sesiones" VALUES(36,3,'1c9185f365b75fbc8b92fb98672e932ffc61a366fa8c851f51f08ccd3c7e2318','2025-05-20 03:16:42',NULL);
INSERT INTO "sesiones" VALUES(37,3,'8e23d2edd6ca70f86ae08a05779c1bce8a17f5000d76706efc8acee1b011ca19','2025-05-20 03:43:08',NULL);
INSERT INTO "sesiones" VALUES(38,3,'e8548d75ca709458c235c9cbe1e581da68c7136d984e3437d2b4571e6b3bf70d','2025-05-20 03:53:10',NULL);
INSERT INTO "sesiones" VALUES(39,3,'5e9c18a9eb772942c60818c79a40eefcd653499bca966e9794793baafb0a34d6','2025-05-20 03:53:19',NULL);
INSERT INTO "sesiones" VALUES(40,3,'5010a7a215900134fcd64952ef61483916a1c91c5cebc69b76d25b187a2359c0','2025-05-20 04:00:20',NULL);
INSERT INTO "sesiones" VALUES(41,3,'6a3952efa1a9c8c9851b29a8c1b931f1b4e9ba003bf693b4614f14beec2e327f','2025-05-20 04:39:56',NULL);
INSERT INTO "sesiones" VALUES(42,1,'2d1aa9af726ca51f447c3d4b04b6adbf54caa8ff71d1894ba93cfc4f4e283222','2025-05-20 06:17:15',NULL);
INSERT INTO "sesiones" VALUES(43,3,'a61166244ea769b5f29c2b6218a1d8c322da2521f02902d9dde646b1c0092164','2025-05-20 06:23:20',NULL);
INSERT INTO "sesiones" VALUES(44,3,'5fb8fe307eb71ddb487b7982bb63aef0954ef6d72710daa89eef96338b2eb2b8','2025-05-20 07:19:57',NULL);
INSERT INTO "sesiones" VALUES(45,6,'7cebe85667ad526a619f4a4303d02c3e44249b81f95cd9089dc1712dea2feb87','2025-05-20 07:28:50',NULL);
INSERT INTO "sesiones" VALUES(46,4,'81fcf74012821404b9316c7601f43301e03f7f5f81224f8cbd2d384ebb547108','2025-05-20 08:51:49',NULL);
CREATE TABLE torneos (
        id INT PRIMARY KEY AUTO_INCREMENT,
        nombre VARCHAR(255) NOT NULL,
        deporte VARCHAR(255) NOT NULL,
        sede VARCHAR(255),
        fecha_inicio VARCHAR(255),
        fecha_fin VARCHAR(255),
        descripcion VARCHAR(255),
        fecha_creacion DATETIME DEFAULT CURRENT_TIMESTAMP
    );
INSERT INTO "torneos" VALUES(1,'torneo12','futbol-sala','MUTIS','2022-03-12','2233-03-12','','2025-05-19 05:47:14');
INSERT INTO "torneos" VALUES(2,'Chamba','futbol-sala','MUTIS','','','','2025-05-19 06:53:09');
INSERT INTO "torneos" VALUES(3,'dsadsda','futbol-sala','mutis','','','','2025-05-19 06:56:37');
INSERT INTO "torneos" VALUES(4,'ASCUN','baloncesto','MUTIS','','','','2025-05-19 07:29:03');
INSERT INTO "torneos" VALUES(5,'unicotorneo','baloncesto','MUTIS','','','','2025-05-19 07:30:47');
CREATE TABLE usuarios (
        id INT PRIMARY KEY AUTO_INCREMENT,
        email VARCHAR(255) UNIQUE NOT NULL,
        password VARCHAR(255) NOT NULL,
        nombre VARCHAR(255) NOT NULL,
        fecha_registro DATETIME DEFAULT CURRENT_TIMESTAMP
    );
INSERT INTO "usuarios" VALUES(1,'camilo.paternina@estudiantesunibague.edu.co','$2y$10$vAZmwLNdEqp5nRtqVqKoZOt1o3QnqP0o9M3OGsynBm7oMfitMGIt2','camilo paternina','2025-05-19 05:12:14');
INSERT INTO "usuarios" VALUES(2,'camilopatternina@gmail.com','$2y$10$dKTGLxhAmdwg3mwER70dx.1yqdMEjcGMh/abGaibafWuA9IgBo3TG','camilo paternina','2025-05-19 05:12:47');
INSERT INTO "usuarios" VALUES(3,'andrespatter@gmail.com','$2y$10$SZfBorw0eDQ8VDVZ/3GE6.2As3VjAsaBjsFnmz1vcyC87qWDJ6mXS','carlos volvio','2025-05-19 05:14:06');
INSERT INTO "usuarios" VALUES(4,'camilo.puentes@estudiantesunibague.edu.co','$2y$10$si/E4tu4wedazxpLDEz3H.sT42TCUcpA4Fdwx5RZqDirvTJBO9qDC','andres puentes','2025-05-19 06:45:01');
INSERT INTO "usuarios" VALUES(5,'carlos@estudiantesunibague.edu.co','$2y$10$2rix036EeER2JKeWeSVmQe8oPcNA0bxwguIG47E3O.mSIZLcfbk96','carlos','2025-05-19 09:32:25');
INSERT INTO "usuarios" VALUES(6,'manuel.montoya@estudiantesunibague.edu.co','$2y$10$7spZn5OASW6MLAlAyETPLeo/FjBK.zeJM66ALtxjlcxSv/Zgmmf4K','manolo','2025-05-19 22:18:45');
INSERT INTO "usuarios" VALUES(7,'patter@estudiantesunibague.edu.co','$2y$10$kM7C8YTrQitNYtsK5vsxFuN6JdgYizVeTGZ4gCqk9KodFbhkEjsFu','camilo paternina','2025-05-20 07:19:32');
INSERT INTO "usuarios" VALUES(8,'Parra@unibague.edu.co','$2y$10$HdGWQx6ZMe5G/0HEwmV3YOGGKMTh9QfwQNmfF8zKWqMSlp/Z/bLVm','Osorio Parra','2025-05-20 08:28:31');
DELETE FROM "sqlite_sequence";
INSERT INTO "sqlite_sequence" VALUES('usuarios',8);
INSERT INTO "sqlite_sequence" VALUES('sesiones',46);
INSERT INTO "sqlite_sequence" VALUES('torneos',5);
INSERT INTO "sqlite_sequence" VALUES('equipos',9);
