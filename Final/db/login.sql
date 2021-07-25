-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 29-05-2021 a las 05:39:11
-- Versión del servidor: 10.4.19-MariaDB
-- Versión de PHP: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_practicas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividades_emp_des_soft`
--

CREATE TABLE `actividades_emp_des_soft` (
  `Actividades que realizan las empresas de desarrollo de software` text NOT NULL,
  `Empresas` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `actividades_emp_des_soft`
--

INSERT INTO `actividades_emp_des_soft` (`Actividades que realizan las empresas de desarrollo de software`, `Empresas`) VALUES
('Servicios de soporte técnico relacionado con software', 28),
('Desarrollo de sistemas a la medida (excepto bases de datos y sitios web)', 26),
('Consultoría técnica de software', 24),
('Aplicaciones móviles empresariales\r\n', 24),
('Paquetes de software estandarizados verticales para uso de empresas privadas', 24),
('Software como servicio (Saas)', 23),
('Paquetes de software estandarizados horizontales para uso de empresas privadas', 20),
('Herramientas de desarrollo y lenguajes de programación', 13),
('Aplicaciones móviles individuales', 8),
('Paquetes de software estandarizados para uso personal', 7),
('Otro software del sistema', 7),
('Software para manejo de bases de datos', 6),
('Otro', 6),
('Software de redes', 3),
('Sistemas operativos', 3),
('Software utilitario', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividades_emp_ti`
--

CREATE TABLE `actividades_emp_ti` (
  `Actividades` text NOT NULL,
  `Empresas` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `actividades_emp_ti`
--

INSERT INTO `actividades_emp_ti` (`Actividades`, `Empresas`) VALUES
('Servicios de soporte', 13),
('Diseño y desarrollo de sitios web', 12),
('Tableros (Dashboard)', 11),
('Provisión de aplicaciones', 11),
('Factura electrónica', 11),
('Adaptación de plataformas para llevar a cabo actividades de e-commerce', 10),
('Consultoría técnica en hardware e infraestructura TIC', 9),
('Comercializador de servicios de TI', 9),
('Adaptación e implementación de software empaquetado de terceros producido en el exterior', 8),
('Otros servicios de soporte técnico de TI', 8),
('Diseño de aplicaciones móviles para e-commerce', 8),
('Desarrollo de la tienda electrónica con las herramientas para llevar a cabo las transacciones', 8),
('Minería de datos (Data mining)', 7),
('Big data', 7),
('Servicios de migración y conversión de datos', 7),
('Firma digital', 7),
('Servicios de análisis de datos', 7),
('Capacitación en temas de tecnologías digitales', 7),
('Cubos Olap (Online analytical processing)', 6),
('Aseguramiento de calidad (Quality assurance)', 6),
('Administración de datos (archiving, backup, business continuity, disaster recovery)', 6),
('Seguridad', 6),
('Otro', 6),
('Servicios de administración y operación de sistemas computacionales', 5),
('Plataforma como servicio (Paas)', 5),
('Servicios de digitalización y otros procesos de captura de datos', 5),
('Hospedaje de sitios web', 4),
('Servicios de soporte técnico relacionado con hardware', 4),
('Desarrollo de contenido para e-learning', 4),
('Consultoría en e-learning', 4),
('Manufactura de tecnologías de la información', 4),
('Servicios de personal de TI (Staffing)', 4),
('Servicios de auditoría de operaciones', 3),
('Servicios de pruebas de resistencia (Stress test)', 3),
('Adaptación e implementación de software empaquetado por terceros producido en el país', 3),
('Control de calidad (Quality control)', 3),
('Consultoría o tercerización de funciones de SEO, SMO, SEM, email marketing y community management.', 3),
('Desarrollo de plataformas para llevar a cabo aplicaciones de e-learning con elementos de web streaming y colaboración', 3),
('Consultoría en virtualidad: adaptación de contenidos para su utilización en e-learning', 3),
('Infraestructura como servicio (Iaas)', 2),
('Comercializador de equipos computacionales', 2),
('Espacio para publicidad en línea o redes sociales', 2),
('Consultoría en regulación de TIC', 2),
('Servicios de colocación', 1),
('Desarrollo de aplicaciones o juegos electrónicos orientados a facilitar el aprendizaje', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `antigüedad`
--

CREATE TABLE `antigüedad` (
  `Periodo` text NOT NULL,
  `Empresas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `antigüedad`
--

INSERT INTO `antigüedad` (`Periodo`, `Empresas`) VALUES
('De 18 años o más', 24),
('Menos de 5 años', 8),
('De 5 a 11', 7),
('De 11 a 18', 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `back_end`
--

CREATE TABLE `back_end` (
  `Lenguaje` text NOT NULL,
  `Empresas` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `back_end`
--

INSERT INTO `back_end` (`Lenguaje`, `Empresas`) VALUES
('Ruby on rails', 2),
('Nodejs', 2),
('Scala', 5),
('Visual Basic', 10),
('Otro', 10),
('C++', 14),
('C#', 16),
('Python', 17),
('PHP', 27),
('Java', 30);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `brinda_servicios`
--

CREATE TABLE `brinda_servicios` (
  `Brinda servicios en el exterior` text NOT NULL,
  `Empresas` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `brinda_servicios`
--

INSERT INTO `brinda_servicios` (`Brinda servicios en el exterior`, `Empresas`) VALUES
('SI', 29),
('NO', 17);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estrategias_innovacion`
--

CREATE TABLE `estrategias_innovacion` (
  `Estrategia` text NOT NULL,
  `Porcentaje empresas` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `estrategias_innovacion`
--

INSERT INTO `estrategias_innovacion` (`Estrategia`, `Porcentaje empresas`) VALUES
('Mejoras en los productos o servicios', 78.95),
('Lanzamiento de nuevos productos o servicios al mercado nacional', 61.4),
('Mejoras en los procesos productivos', 35.09),
('Introducción de cambios en el modelo de negocio', 45.91),
('Adquisición de nuevas plataformas de hardware o de software', 36.84),
('Alianzas estratégicas con otras empresas del sector de TI', 40.35),
('Vinculación con centros académicos de investigación', 12.28),
('Investigación y desarrollo', 49.12),
('Desarrollo de prototipos que aún no han salido al mercado', 42.11),
('Registro de propiedad intelectual en Ecuador', 40.35),
('Registro de propiedad intelectual en el exterior', 5.26),
('Otro', 3.51);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factor diferenciador`
--

CREATE TABLE `factor diferenciador` (
  `Factor diferenciador de la empresa` text NOT NULL,
  `Empresas` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `factor diferenciador`
--

INSERT INTO `factor diferenciador` (`Factor diferenciador de la empresa`, `Empresas`) VALUES
('Centrada en el cliente', 38),
('Innovación de productos y servicios', 31),
('Mejora continua', 21),
('Enfoque basado en procesos', 18),
('Participación de las personas', 15),
('Liderazgo', 12),
('Relación de proveedor mutuamente beneficiosa', 11),
('Basada en hechos para la toma de decisiones', 9),
('Un enfoque sistemático para la gestión', 7),
('Procesos de intra emprendimiento', 7),
('Otros', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formacion_empleados`
--

CREATE TABLE `formacion_empleados` (
  `Nivel de formación` text NOT NULL,
  `Empleados` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `formacion_empleados`
--

INSERT INTO `formacion_empleados` (`Nivel de formación`, `Empleados`) VALUES
('Estudiantes de secundaria', 29),
('Técnicos', 83),
('Egresados universitarios', 126),
('Con certificaciones', 131),
('Cuarto nivel', 170),
('Con experiencia laboral', 434),
('Tercer nivel', 599);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `framewors`
--

CREATE TABLE `framewors` (
  `Framework` text NOT NULL,
  `Empresas` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `framewors`
--

INSERT INTO `framewors` (`Framework`, `Empresas`) VALUES
('MSF', 19),
('OTRO', 14),
('RUP', 8),
('SAFE', 3),
('SCRUM', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `front end`
--

CREATE TABLE `front end` (
  `Lenguaje` text NOT NULL,
  `Empresas` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `front end`
--

INSERT INTO `front end` (`Lenguaje`, `Empresas`) VALUES
('HTML', 38),
('JavaScript', 33),
('CSS', 30);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `infraestructura_despliegue`
--

CREATE TABLE `infraestructura_despliegue` (
  `Infraestructura` text NOT NULL,
  `Empresas` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `infraestructura_despliegue`
--

INSERT INTO `infraestructura_despliegue` (`Infraestructura`, `Empresas`) VALUES
('SaaS', 39),
('PaaS', 13),
('IaaS', 12),
('BaaS', 4),
('FaaS', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nuevas_opciones_formacion`
--

CREATE TABLE `nuevas_opciones_formacion` (
  `Opciones de formacion` text NOT NULL,
  `Empresas` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `nuevas_opciones_formacion`
--

INSERT INTO `nuevas_opciones_formacion` (`Opciones de formacion`, `Empresas`) VALUES
('Maestrías', 17),
('Certificación Técnica', 10),
('Cursos de formación específicos', 10),
('Ingenierías', 9),
('Habilidades de gestión', 7),
('Doctorados', 5),
('Otras formaciones', 5),
('Especialidad Técnica', 4),
('Tecnologías', 3),
('Licenciaturas', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orientacion_empresa`
--

CREATE TABLE `orientacion_empresa` (
  `Orientacion de la empresa` text NOT NULL,
  `Empresas` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `orientacion_empresa`
--

INSERT INTO `orientacion_empresa` (`Orientacion de la empresa`, `Empresas`) VALUES
('Empresas orientadas a desarrollo de software', 46),
('Empresas de desarrollo de software que brindan servicios de TI', 26),
('Empresas excusivamente de software', 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rango_facturacion`
--

CREATE TABLE `rango_facturacion` (
  `Rango` text NOT NULL,
  `Empresas` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `rango_facturacion`
--

INSERT INTO `rango_facturacion` (`Rango`, `Empresas`) VALUES
('De $1000 a $10 000', 2),
('De $10 000 a $100 000', 9),
('De $100 000 a $1’000 000', 20),
('De $1’000 000 a $10’000 000\r\n', 10),
('De más de $10’000 000', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tamaño`
--

CREATE TABLE `tamaño` (
  `Tamaño` text NOT NULL,
  `Empresas` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tamaño`
--

INSERT INTO `tamaño` (`Tamaño`, `Empresas`) VALUES
('Micro Empresa (1 a 9 empleados)', 19),
('Pequeña empresa (10 a 49 empleados)', 19),
('Mediana empresa (50 a 199 empleados)', 6),
('Empresa grande (Más de 200 empleados)', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_de_capital`
--

CREATE TABLE `tipo_de_capital` (
  `Tipo de capital` text NOT NULL,
  `Empresas` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipo_de_capital`
--

INSERT INTO `tipo_de_capital` (`Tipo de capital`, `Empresas`) VALUES
('Público', 1),
('Privado', 28),
('Nacional', 13),
('Internacional', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `total_empleados`
--

CREATE TABLE `total_empleados` (
  `Genero` text NOT NULL,
  `Empleados` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `total_empleados`
--

INSERT INTO `total_empleados` (`Genero`, `Empleados`) VALUES
('Hombres', 632),
('Mujeres', 444);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ubicacion`
--

CREATE TABLE `ubicacion` (
  `Ubicación de la Empresa(País, provincia, ciudad)` text NOT NULL,
  `Empresas` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ubicacion`
--

INSERT INTO `ubicacion` (`Ubicación de la Empresa(País, provincia, ciudad)`, `Empresas`) VALUES
('Quito', 35),
('Guayaquil', 8),
('Cuenca', 1),
('Ibarra', 1),
('Manta', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
