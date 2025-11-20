-- MySQL dump 10.13  Distrib 8.0.43, for Linux (x86_64)
--
-- Host: localhost    Database: PoliChef
-- ------------------------------------------------------
-- Server version	8.0.43-0ubuntu0.24.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Calificacion`
--

DROP TABLE IF EXISTS `Calificacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Calificacion` (
  `id` int NOT NULL AUTO_INCREMENT,
  `puntaje` int NOT NULL,
  `descripcion` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Calificacion`
--

LOCK TABLES `Calificacion` WRITE;
/*!40000 ALTER TABLE `Calificacion` DISABLE KEYS */;
INSERT INTO `Calificacion` VALUES (1,5,'excelente: sabor y servicio impecables'),(2,4,'muy bueno: solo pequeños detalles'),(3,3,'regular: esperaba más'),(4,2,'malo: varios problemas'),(5,1,'muy malo: no recomendable'),(6,5,'excepcional, volvería sin dudas'),(7,4,'buena experiencia general'),(8,5,'servicio atento y comida destacada'),(9,3,'comida aceptable, tiempo de espera largo'),(10,4,'buen balance calidad-precio'),(11,2,'porciones pequeñas'),(12,5,'platillo estrella de la noche'),(13,4,'ambiente agradable'),(14,1,'problema con alérgenos'),(15,3,'ok para una salida casual');
/*!40000 ALTER TABLE `Calificacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Cliente`
--

DROP TABLE IF EXISTS `Cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Cliente` (
  `dni` int NOT NULL,
  `nombre` text NOT NULL,
  `apellido` text NOT NULL,
  `fechaNacimiento` date NOT NULL,
  `email` text NOT NULL,
  `telefono` text,
  `cuentaCreada` date NOT NULL,
  `puntos` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`dni`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cliente`
--

LOCK TABLES `Cliente` WRITE;
/*!40000 ALTER TABLE `Cliente` DISABLE KEYS */;
INSERT INTO `Cliente` VALUES (30000001,'lucas','gonzalez','1985-04-12','lucas.g@gmail.com','1122334455','2023-06-10',120),(30000002,'mariana','perez','1992-11-03','mariana.p@gmail.com','1144556677','2024-01-05',80),(30000003,'santiago','rodriguez','1978-02-20','s.rodriguez@example.com','1166778899','2022-09-12',45),(30000004,'camila','martin','1998-07-15','camila.martin@example.com','1155599888','2025-03-02',10),(30000005,'diego','lopez','1989-12-30','diego.lopez@example.com','1199887766','2021-11-20',200),(30000006,'valentina','ruiz','1995-05-05','valentina.r@example.com','1144221133','2024-07-01',5),(30000007,'nicolas','diaz','1982-08-08','nicolas.d@example.com','1144778899','2020-02-17',60),(30000008,'sofia','fernandez','2000-01-25','sofia.f@example.com','1133665544','2025-02-27',15),(30000009,'martin','alvarez','1975-10-10','martin.a@example.com','1142334455','2019-08-09',30),(30000010,'laura','gutierrez','1990-03-03','laura.g@example.com','1166443322','2023-12-12',95),(30000011,'federico','castro','1987-09-09','fede.cast@example.com','1177554433','2024-05-05',25),(30000012,'isabella','ortiz','1993-06-06','isabella.o@example.com','1144998877','2022-10-10',140),(30000013,'maximiliano','ramos','1980-04-04','max.ramos@example.com','1122445566','2021-03-03',0),(30000014,'melisa','sanchez','1997-11-11','melisa.s@example.com','1199777666','2025-01-15',8),(30000015,'andres','vazquez','1991-02-02','andres.v@example.com','1144112233','2020-07-07',55);
/*!40000 ALTER TABLE `Cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Ingrediente`
--

DROP TABLE IF EXISTS `Ingrediente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Ingrediente` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` text NOT NULL,
  `stock` int NOT NULL,
  `minimoStock` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ingrediente`
--

LOCK TABLES `Ingrediente` WRITE;
/*!40000 ALTER TABLE `Ingrediente` DISABLE KEYS */;
INSERT INTO `Ingrediente` VALUES (1,'harina',100,20),(2,'tomate',60,10),(3,'mozzarella',50,10),(4,'albahaca',30,5),(5,'pollo',40,8),(6,'arroz',120,30),(7,'lomo',25,5),(8,'ajo',40,4),(9,'cilantro',20,3),(10,'ají',18,3),(11,'limon',35,5),(12,'pescado blanco',28,6),(13,'quinoa',22,5),(14,'papas',80,20),(15,'crema',45,8);
/*!40000 ALTER TABLE `Ingrediente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Mesa`
--

DROP TABLE IF EXISTS `Mesa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Mesa` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cantPersonas` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Mesa`
--

LOCK TABLES `Mesa` WRITE;
/*!40000 ALTER TABLE `Mesa` DISABLE KEYS */;
INSERT INTO `Mesa` VALUES (1,2),(2,4),(3,2),(4,6),(5,4),(6,8),(7,2),(8,10),(9,4),(10,6),(11,3),(12,5),(13,4),(14,2),(15,6);
/*!40000 ALTER TABLE `Mesa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NocheTematica`
--

DROP TABLE IF EXISTS `NocheTematica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `NocheTematica` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titulo` text NOT NULL,
  `descripcion` text NOT NULL,
  `fecha` date NOT NULL,
  `idPais` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idPais` (`idPais`),
  CONSTRAINT `NocheTematica_ibfk_1` FOREIGN KEY (`idPais`) REFERENCES `Pais` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NocheTematica`
--

LOCK TABLES `NocheTematica` WRITE;
/*!40000 ALTER TABLE `NocheTematica` DISABLE KEYS */;
INSERT INTO `NocheTematica` VALUES (1,'noche argentina','clásicos locales con toque moderno','2025-10-02',1),(2,'italia en mesa','pastas y antipasti auténticos','2025-10-09',2),(3,'fiesta mexicana','tacos, salsas y tequila','2025-10-16',3),(4,'tapas españolas','variedad de tapas para compartir','2025-10-23',4),(5,'gastronomía francesa','clásicos franceses de bistró','2025-10-04',5),(6,'japon contemporáneo','sushi y platos fusionados','2025-10-11',6),(7,'cocina peruana','ceviches y causas creativas','2025-10-18',7),(8,'brasil carioca','sabores tropicales y caipirinha','2025-10-25',8),(9,'bbq usa','costillas y pulled pork','2025-10-06',9),(10,'grecia mediterránea','mezes y mariscos','2025-10-13',10),(11,'india spicy','currys con especias clásicas','2025-10-20',11),(12,'thai nights','pad thai y currys tailandeses','2025-10-27',12),(13,'marrakech','mezze y condimentos norteafricanos','2025-10-08',13),(14,'libanesa gourmet','falafel, hummus y más','2025-10-15',14),(15,'cocina chilena','mariscos y platos regionales','2025-10-22',15);
/*!40000 ALTER TABLE `NocheTematica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Notificacion`
--

DROP TABLE IF EXISTS `Notificacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Notificacion` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titulo` text NOT NULL,
  `descripcion` text NOT NULL,
  `dniCliente` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `dniCliente` (`dniCliente`),
  CONSTRAINT `Notificacion_ibfk_1` FOREIGN KEY (`dniCliente`) REFERENCES `Cliente` (`dni`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Notificacion`
--

LOCK TABLES `Notificacion` WRITE;
/*!40000 ALTER TABLE `Notificacion` DISABLE KEYS */;
INSERT INTO `Notificacion` VALUES (1,'oferta semana','2x1 en entradas los martes',30000001),(2,'recordatorio','tiene una reserva próximamente',30000002),(3,'nueva carta','nuevos platos de temporada',30000003),(4,'cumpleaños','10% de descuento por tu cumpleaños',30000004),(5,'encuesta','contanos tu experiencia',30000005),(6,'recordatorio de reserva','tiene una reserva para hoy',30000006),(7,'evento especial','cena maridaje 20/10',30000007),(8,'alerta puntos','sumaste 50 puntos',30000008),(9,'promo carta','platos mediterráneos con descuento',30000009),(10,'recordatorio','reserva mañana',30000010),(11,'novedad','llegaron vinos nuevos',30000011),(12,'recordatorio de reserva','tiene una reserva para hoy',30000012),(13,'felicidades','sos cliente top del mes',30000013),(14,'encuesta rapida','valorá tu cena',30000014),(15,'oferta bebidas','happy hour viernes',30000015);
/*!40000 ALTER TABLE `Notificacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pais`
--

DROP TABLE IF EXISTS `Pais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Pais` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pais`
--

LOCK TABLES `Pais` WRITE;
/*!40000 ALTER TABLE `Pais` DISABLE KEYS */;
INSERT INTO `Pais` VALUES (1,'argentina'),(2,'italia'),(3,'mexico'),(4,'españa'),(5,'francia'),(6,'japon'),(7,'peru'),(8,'brasil'),(9,'estados unidos'),(10,'grecia'),(11,'india'),(12,'tailandia'),(13,'marruecos'),(14,'libano'),(15,'chile');
/*!40000 ALTER TABLE `Pais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pedido`
--

DROP TABLE IF EXISTS `Pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Pedido` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dniCliente` int NOT NULL,
  `idSucursal` int NOT NULL,
  `cantPersonas` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `dniCliente` (`dniCliente`),
  KEY `idSucursal` (`idSucursal`),
  CONSTRAINT `Pedido_ibfk_1` FOREIGN KEY (`dniCliente`) REFERENCES `Cliente` (`dni`),
  CONSTRAINT `Pedido_ibfk_2` FOREIGN KEY (`idSucursal`) REFERENCES `Sucursal` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pedido`
--

LOCK TABLES `Pedido` WRITE;
/*!40000 ALTER TABLE `Pedido` DISABLE KEYS */;
INSERT INTO `Pedido` VALUES (1,30000001,1,2),(2,30000002,2,4),(3,30000003,3,2),(4,30000004,4,6),(5,30000005,5,4),(6,30000006,6,8),(7,30000007,7,2),(8,30000008,8,10),(9,30000009,9,4),(10,30000010,10,6),(11,30000011,11,3),(12,30000012,12,5),(13,30000013,13,4),(14,30000014,14,2),(15,30000015,15,6);
/*!40000 ALTER TABLE `Pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Plato`
--

DROP TABLE IF EXISTS `Plato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Plato` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` text NOT NULL,
  `valor` int NOT NULL,
  `descripcion` text NOT NULL,
  `idNocheTematica` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idNocheTematica` (`idNocheTematica`),
  CONSTRAINT `Plato_ibfk_1` FOREIGN KEY (`idNocheTematica`) REFERENCES `NocheTematica` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Plato`
--

LOCK TABLES `Plato` WRITE;
/*!40000 ALTER TABLE `Plato` DISABLE KEYS */;
INSERT INTO `Plato` VALUES (1,'pizza clásica',1200,'muza, salsa de tomate, albahaca',1),(2,'tagliatelle bolognesa',1500,'pasta fresca con ragú tradicional',2),(3,'taco al pastor',900,'tortilla, cerdo, piña y salsa roja',3),(4,'tabla de tapas',1800,'selección de 6 tapas variadas',4),(5,'coq au vin',2200,'pollo estofado en vino tinto',5),(6,'sushi mixto',2500,'rolls y nigiri variados',6),(7,'ceviche clasico',1400,'pescado marinado con limón y ají',7),(8,'feijoada mini',1600,'guiso de frijoles y carnes',8),(9,'costillas bbq',2700,'costillas ahumadas con salsa',9),(10,'moussaka',2000,'berenjena, carne y bechamel',10),(11,'butter chicken',1800,'pollo en salsa cremosa especiada',11),(12,'pad thai',1700,'fideos de arroz, cacahuete y tamarindo',12),(13,' tajine cordero',2300,'cordero con especias y frutas secas',13),(14,'mezze libanés',1600,'hummus, tabbouleh y falafel',14),(15,'choros al vino',1300,'mejillones en salsa de vino blanco',15);
/*!40000 ALTER TABLE `Plato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PreferenciasAlimenticias`
--

DROP TABLE IF EXISTS `PreferenciasAlimenticias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PreferenciasAlimenticias` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` text NOT NULL,
  `descripcion` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PreferenciasAlimenticias`
--

LOCK TABLES `PreferenciasAlimenticias` WRITE;
/*!40000 ALTER TABLE `PreferenciasAlimenticias` DISABLE KEYS */;
INSERT INTO `PreferenciasAlimenticias` VALUES (1,'vegano','sin productos de origen animal'),(2,'vegetariano','sin carnes'),(3,'sin_gluten','sin trigo ni gluten'),(4,'sin_frutos_secos','evita frutos secos'),(5,'sin_lactosa','evita lactosa'),(6,'pescetariano','come pescado, no carne'),(7,'halal','cumple normas halal'),(8,'kosher','cumple normas kosher'),(9,'bajo_carbohidrato','pocas harinas y azúcares'),(10,'alto_proteina','foco en proteínas'),(11,'picante','prefiere picante'),(12,'suave','prefiere sabores suaves'),(13,'bajo_azucar','pocos azúcares'),(14,'organico','ingredientes organicos'),(15,'paleo','sin cereales ni lácteos');
/*!40000 ALTER TABLE `PreferenciasAlimenticias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PreferenciasAlimenticiasDelCliente`
--

DROP TABLE IF EXISTS `PreferenciasAlimenticiasDelCliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PreferenciasAlimenticiasDelCliente` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idPreferenciasAlimenticias` int NOT NULL,
  `dniCliente` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idPreferenciasAlimenticias` (`idPreferenciasAlimenticias`),
  KEY `dniCliente` (`dniCliente`),
  CONSTRAINT `PreferenciasAlimenticiasDelCliente_ibfk_1` FOREIGN KEY (`idPreferenciasAlimenticias`) REFERENCES `PreferenciasAlimenticias` (`id`),
  CONSTRAINT `PreferenciasAlimenticiasDelCliente_ibfk_2` FOREIGN KEY (`dniCliente`) REFERENCES `Cliente` (`dni`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PreferenciasAlimenticiasDelCliente`
--

LOCK TABLES `PreferenciasAlimenticiasDelCliente` WRITE;
/*!40000 ALTER TABLE `PreferenciasAlimenticiasDelCliente` DISABLE KEYS */;
INSERT INTO `PreferenciasAlimenticiasDelCliente` VALUES (1,1,30000004),(2,2,30000008),(3,3,30000006),(4,4,30000011),(5,5,30000012),(6,6,30000009),(7,7,30000015),(8,9,30000002),(9,10,30000005),(10,11,30000003),(11,12,30000010),(12,14,30000001),(13,13,30000013),(14,15,30000007),(15,8,30000014);
/*!40000 ALTER TABLE `PreferenciasAlimenticiasDelCliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PreferenciasAlimenticiasDelPlato`
--

DROP TABLE IF EXISTS `PreferenciasAlimenticiasDelPlato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PreferenciasAlimenticiasDelPlato` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idPreferenciasAlimenticias` int NOT NULL,
  `idPlato` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idPreferenciasAlimenticias` (`idPreferenciasAlimenticias`),
  KEY `idPlato` (`idPlato`),
  CONSTRAINT `PreferenciasAlimenticiasDelPlato_ibfk_1` FOREIGN KEY (`idPreferenciasAlimenticias`) REFERENCES `PreferenciasAlimenticias` (`id`),
  CONSTRAINT `PreferenciasAlimenticiasDelPlato_ibfk_2` FOREIGN KEY (`idPlato`) REFERENCES `Plato` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PreferenciasAlimenticiasDelPlato`
--

LOCK TABLES `PreferenciasAlimenticiasDelPlato` WRITE;
/*!40000 ALTER TABLE `PreferenciasAlimenticiasDelPlato` DISABLE KEYS */;
INSERT INTO `PreferenciasAlimenticiasDelPlato` VALUES (1,6,6),(2,2,1),(3,11,3),(4,5,5),(5,9,9),(6,12,12),(7,1,14),(8,3,2),(9,15,13),(10,4,3),(11,7,7),(12,14,14),(13,10,11),(14,13,13),(15,8,14);
/*!40000 ALTER TABLE `PreferenciasAlimenticiasDelPlato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Repetible`
--

DROP TABLE IF EXISTS `Repetible`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Repetible` (
  `idRepetible` int NOT NULL,
  `repetible` tinyint(1) NOT NULL,
  KEY `idRepetible` (`idRepetible`),
  CONSTRAINT `Repetible_ibfk_1` FOREIGN KEY (`idRepetible`) REFERENCES `Reserva` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Repetible`
--

LOCK TABLES `Repetible` WRITE;
/*!40000 ALTER TABLE `Repetible` DISABLE KEYS */;
INSERT INTO `Repetible` VALUES (1,1),(2,0),(3,0),(4,1),(5,0),(6,1),(7,0),(8,1),(9,0),(10,0),(11,1),(12,0),(13,1),(14,0),(15,1);
/*!40000 ALTER TABLE `Repetible` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Reserva`
--

DROP TABLE IF EXISTS `Reserva`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Reserva` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fechaQueSeReservo` date NOT NULL,
  `fechaReserva` date NOT NULL,
  `idPedido` int NOT NULL,
  `idCalificacion` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idCalificacion` (`idCalificacion`),
  KEY `idPedido` (`idPedido`),
  CONSTRAINT `Reserva_ibfk_1` FOREIGN KEY (`idCalificacion`) REFERENCES `Calificacion` (`id`),
  CONSTRAINT `Reserva_ibfk_2` FOREIGN KEY (`idPedido`) REFERENCES `Pedido` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Reserva`
--

LOCK TABLES `Reserva` WRITE;
/*!40000 ALTER TABLE `Reserva` DISABLE KEYS */;
INSERT INTO `Reserva` VALUES (1,'2025-09-29','2025-10-02',1,2),(2,'2025-10-01','2025-10-02',2,3),(3,'2025-10-01','2025-10-03',3,4),(4,'2025-10-02','2025-10-03',4,5),(5,'2025-09-29','2025-10-03',5,6),(6,'2025-10-09','2025-10-19',6,7),(7,'2025-10-09','2025-10-19',7,8),(8,'2025-10-11','2025-10-11',8,9),(9,'2025-10-11','2025-10-15',9,10),(10,'2025-10-06','2025-10-15',10,11),(11,'2025-10-06','2025-10-24',11,12),(12,'2025-10-08','2025-10-24',12,13),(13,'2025-10-08','2025-10-24',13,14),(14,'2025-10-10','2025-10-25',14,15),(15,'2025-10-11','2025-10-24',15,1);
/*!40000 ALTER TABLE `Reserva` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StockAlert`
--

DROP TABLE IF EXISTS `StockAlert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `StockAlert` (
  `idIngrediente` int NOT NULL,
  KEY `idIngrediente` (`idIngrediente`),
  CONSTRAINT `StockAlert_ibfk_1` FOREIGN KEY (`idIngrediente`) REFERENCES `Ingrediente` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StockAlert`
--

LOCK TABLES `StockAlert` WRITE;
/*!40000 ALTER TABLE `StockAlert` DISABLE KEYS */;
INSERT INTO `StockAlert` VALUES (7),(9),(10),(12),(13);
/*!40000 ALTER TABLE `StockAlert` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Sucursal`
--

DROP TABLE IF EXISTS `Sucursal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Sucursal` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` text NOT NULL,
  `direccion` text NOT NULL,
  `telefono` text NOT NULL,
  `abiertaDesde` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Sucursal`
--

LOCK TABLES `Sucursal` WRITE;
/*!40000 ALTER TABLE `Sucursal` DISABLE KEYS */;
INSERT INTO `Sucursal` VALUES (1,'polichef centro','av. corrientes 1234, caba','1144001100','2020-05-10'),(2,'polichef recoleta','montevideo 2100, caba','1144002200','2021-08-01'),(3,'polichef palermo','gurruchaga 45, caba','1144003300','2019-11-12'),(4,'polichef belgrano','cabildo 800, caba','1144004400','2022-02-20'),(5,'polichef puerto madero','juana manso 500','1144005500','2023-04-15'),(6,'polichef flores','av.avellaneda 1200','1144006600','2021-12-01'),(7,'polichef caballito','rivadavia 1500','1144007700','2018-07-30'),(8,'polichef nuñez','moldes 2100','1144008800','2024-09-09'),(9,'polichef san isidro','av. santa fe 300','1144009900','2020-10-10'),(10,'polichef mataderos','j.m. gonzalez 777','1144010001','2019-06-06'),(11,'polichef belgrano-rd','aldehuela 23','1144010002','2022-11-11'),(12,'polichef palermo-soho','tamborini 50','1144010003','2023-07-07'),(13,'polichef olivos','santa maria 9','1144010004','2020-03-03'),(14,'polichef bahia','costanera 1','1144010005','2021-01-01'),(15,'polichef centro-2','corrientes 2000','1144010006','2017-09-15');
/*!40000 ALTER TABLE `Sucursal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingredientesDePlatos`
--

DROP TABLE IF EXISTS `ingredientesDePlatos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ingredientesDePlatos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idIngrediente` int NOT NULL,
  `idPlato` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idIngrediente` (`idIngrediente`),
  KEY `idPlato` (`idPlato`),
  CONSTRAINT `ingredientesDePlatos_ibfk_1` FOREIGN KEY (`idIngrediente`) REFERENCES `Ingrediente` (`id`),
  CONSTRAINT `ingredientesDePlatos_ibfk_2` FOREIGN KEY (`idPlato`) REFERENCES `Plato` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingredientesDePlatos`
--

LOCK TABLES `ingredientesDePlatos` WRITE;
/*!40000 ALTER TABLE `ingredientesDePlatos` DISABLE KEYS */;
INSERT INTO `ingredientesDePlatos` VALUES (1,1,1),(2,2,1),(3,3,1),(4,2,2),(5,8,2),(6,3,2),(7,5,3),(8,11,3),(9,2,4),(10,3,4),(11,7,5),(12,15,5),(13,12,6),(14,3,6),(15,12,7),(16,11,7),(17,6,8),(18,7,8),(19,14,9),(20,5,9),(21,14,10),(22,1,10),(23,5,11),(24,8,11),(25,6,12),(26,10,12),(27,13,13),(28,7,13),(29,9,14),(30,3,14),(31,12,15),(32,11,15);
/*!40000 ALTER TABLE `ingredientesDePlatos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mesasPedidos`
--

DROP TABLE IF EXISTS `mesasPedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mesasPedidos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idMesa` int NOT NULL,
  `idPedido` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idMesa` (`idMesa`),
  KEY `idPedido` (`idPedido`),
  CONSTRAINT `mesasPedidos_ibfk_1` FOREIGN KEY (`idMesa`) REFERENCES `Mesa` (`id`),
  CONSTRAINT `mesasPedidos_ibfk_2` FOREIGN KEY (`idPedido`) REFERENCES `Pedido` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mesasPedidos`
--

LOCK TABLES `mesasPedidos` WRITE;
/*!40000 ALTER TABLE `mesasPedidos` DISABLE KEYS */;
INSERT INTO `mesasPedidos` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,7,7),(8,8,8),(9,9,9),(10,10,10),(11,11,11),(12,12,12),(13,13,13),(14,14,14),(15,15,15);
/*!40000 ALTER TABLE `mesasPedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `platosDelPedido`
--

DROP TABLE IF EXISTS `platosDelPedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `platosDelPedido` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idPedido` int NOT NULL,
  `idPlato` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idPedido` (`idPedido`),
  KEY `idPlato` (`idPlato`),
  CONSTRAINT `platosDelPedido_ibfk_1` FOREIGN KEY (`idPedido`) REFERENCES `Pedido` (`id`),
  CONSTRAINT `platosDelPedido_ibfk_2` FOREIGN KEY (`idPlato`) REFERENCES `Plato` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `platosDelPedido`
--

LOCK TABLES `platosDelPedido` WRITE;
/*!40000 ALTER TABLE `platosDelPedido` DISABLE KEYS */;
INSERT INTO `platosDelPedido` VALUES (1,1,1),(2,1,2),(3,2,2),(4,3,3),(5,4,4),(6,5,5),(7,6,6),(8,7,7),(9,8,8),(10,9,9),(11,10,10),(12,11,11),(13,12,12),(14,13,13),(15,14,14),(16,15,15),(17,2,1),(18,5,3),(19,8,6),(20,12,7),(21,3,7),(22,10,4),(23,1,12),(24,8,2),(25,14,9),(26,6,11),(27,2,5),(28,9,14),(29,11,3),(30,4,8),(31,7,13),(32,12,6),(33,5,10),(34,15,1),(35,13,15),(36,3,9),(37,8,4),(38,10,7),(39,6,2),(40,11,12),(41,2,3),(42,4,3),(43,7,3),(44,10,3),(45,12,3),(46,1,7),(47,5,7),(48,9,7),(49,11,7),(50,14,7),(51,3,10),(52,6,10),(53,8,10),(54,13,10),(55,4,12),(56,7,12),(57,9,12),(58,11,12),(59,15,3),(60,6,7);
/*!40000 ALTER TABLE `platosDelPedido` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-11-20  8:45:57
