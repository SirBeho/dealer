INSERT INTO `mydb`.`Departamento` (`idDepartamento`, `nombre`, `ubicacion`, `descripcion`) VALUES
(1, 'Ventas', 'Piso 5, Edificio Principal', 'Departamento encargado de las ventas de vehículos.'),
(2, 'Recursos Humanos', 'Piso 2, Edificio Administrativo', 'Departamento de recursos humanos encargado de la gestión del personal.'),
(3, 'Mantenimiento', 'Taller 1, Área de Servicio', 'Departamento de mantenimiento y reparación de vehículos.'),
(4, 'Contabilidad', 'Piso 3, Edificio Administrativo', 'Departamento de contabilidad y finanzas.'),
(5, 'Servicio al Cliente', 'Piso 1, Edificio Principal', 'Departamento de atención al cliente y soporte postventa.'),
(6, 'Marketing', 'Piso 4, Edificio Principal', 'Departamento de marketing y publicidad.'),
(7, 'Compras', 'Piso 2, Edificio Administrativo', 'Departamento encargado de las compras y adquisiciones.'),
(8, 'Desarrollo de Producto', 'Laboratorio 1, Área de Ingeniería', 'Departamento de desarrollo de nuevos productos y prototipos.'),
(9, 'Sistemas de Información', 'Piso 5, Edificio Tecnológico', 'Departamento de sistemas de información y tecnología.'),
(10, 'Logística', 'Almacén 1, Área de Logística', 'Departamento de logística y distribución de vehículos.'),
(11, 'Calidad', 'Laboratorio 2, Área de Ingeniería', 'Departamento de control de calidad y pruebas.'),
(12, 'Recursos Educativos', 'Biblioteca, Edificio Educativo', 'Departamento de recursos educativos y capacitación.'),
(13, 'Investigación y Desarrollo', 'Laboratorio 3, Área de Investigación', 'Departamento de investigación y desarrollo de nuevas tecnologías.'),
(14, 'Relaciones Públicas', 'Piso 4, Edificio Principal', 'Departamento de relaciones públicas y eventos.'),
(15, 'Recursos Físicos', 'Piso 6, Edificio Administrativo', 'Departamento de recursos físicos y mantenimiento de instalaciones.'),
(16, 'Producción', 'Fábrica, Área de Producción', 'Departamento de producción de vehículos.'),
(17, 'Comunicaciones', 'Piso 7, Edificio Tecnológico', 'Departamento de comunicaciones y redes.'),
(18, 'Auditoría', 'Piso 3, Edificio Administrativo', 'Departamento de auditoría interna.'),
(19, 'Legal', 'Piso 2, Edificio Administrativo', 'Departamento legal y asuntos jurídicos.'),
(20, 'Gestión de Proyectos', 'Piso 4, Edificio Administrativo', 'Departamento de gestión de proyectos y planificación.');



-- Insert statements for Vehiculo_Categoria
INSERT INTO `mydb`.`Vehiculo_Categoria` (`idVehiculo_Categoria`, `nombre_Categoria`) VALUES
(1, 'Sedan'),
(2, 'SUV'),
(3, 'Pickup'),
(4, 'Deportivo'),
(5, 'Camioneta'),
(6, 'Hatchback'),
(7, 'Convertible'),
(8, 'Minivan'),
(9, 'Coupé'),
(10, 'Furgoneta'),
(11, 'Todo Terreno'),
(12, 'Eléctrico'),
(13, 'Compacto'),
(14, 'Berlina'),
(15, 'Subcompacto'),
(16, 'De Lujo'),
(17, 'Camión'),
(18, 'Autobús'),
(19, 'Monovolumen'),
(20, 'Pickup Doble Cabina');

-- Insert statements for Vehiculos_Marcas
INSERT INTO `mydb`.`Vehiculos_Marcas` (`idVehiculos_Marca`, `marca_nombre`) VALUES
(1, 'Toyota'),
(2, 'Honda'),
(3, 'Ford'),
(4, 'Chevrolet'),
(5, 'Nissan'),
(6, 'BMW'),
(7, 'Mercedes-Benz'),
(8, 'Audi'),
(9, 'Hyundai'),
(10, 'Kia'),
(11, 'Volkswagen'),
(12, 'Mazda'),
(13, 'Subaru'),
(14, 'Jeep'),
(15, 'Lexus'),
(16, 'Volvo'),
(17, 'Ferrari'),
(18, 'Porsche'),
(19, 'Tesla'),
(20, 'Land Rover');

-- Insert statements for Vehiculos_Modelos
INSERT INTO `mydb`.`Vehiculos_Modelos` (`idVehiculos_Modelos`, `Modelo_nombre`, `marca`) VALUES
(1, 'Corolla', 1),
(2, 'Civic', 2),
(3, 'F-150', 3),
(4, 'Silverado', 4),
(5, 'Altima', 5),
(6, '3 Series', 6),
(7, 'C-Class', 7),
(8, 'A4', 8),
(9, 'Elantra', 9),
(10, 'Sorento', 10),
(11, 'Golf', 11),
(12, 'CX-5', 12),
(13, 'Outback', 13),
(14, 'Wrangler', 14),
(15, 'RX', 15),
(16, 'XC60', 16),
(17, '488 GTB', 17),
(18, '911', 18),
(19, 'Model S', 19),
(20, 'Range Rover', 20);






-- Insert statements for Vehiculos_venta
INSERT INTO `mydb`.`Vehiculos_venta` (`idVehiculos_Venta`, `precio`, `millage`, `fecha_adquisicion`, `year`, `vehiculo_modelo`, `vehiculo_Categoria`, `image`) VALUES
(1, 25000, 20000, '2023-01-01', '2022', 1, 1, 'corolla.jpg'),
(2, 28000, 15000, '2023-01-02', '2022', 2, 1, 'civic.jpg'),
(3, 32000, 10000, '2023-01-03', '2022', 3, 2, 'f150.jpg'),
(4, 35000, 12000, '2023-01-04', '2022', 4, 2, 'silverado.jpg'),
(5, 26000, 18000, '2023-01-05', '2022', 5, 3, 'altima.jpg'),
(6, 34000, 8000, '2023-01-06', '2022', 6, 1, '3series.jpg'),
(7, 39000, 7000, '2023-01-07', '2022', 7, 1, 'cclass.jpg'),
(8, 42000, 5000, '2023-01-08', '2022', 8, 2, 'a4.jpg'),
(9, 28000, 12000, '2023-01-09', '2022', 9, 2, 'elantra.jpg'),
(10, 31000, 9000, '2023-01-10', '2022', 10, 3, 'sorento.jpg'),
(11, 28000, 17000, '2023-01-11', '2022', 11, 3, 'golf.jpg'),
(12, 33000, 15000, '2023-01-12', '2022', 12, 1, 'cx5.jpg'),
(13, 38000, 12000, '2023-01-13', '2022', 13, 1, 'outback.jpg'),
(14, 39000, 18000, '2023-01-14', '2022', 14, 2, 'wrangler.jpg'),
(15, 45000, 8000, '2023-01-15', '2022', 15, 2, 'rx.jpg'),
(16, 32000, 20000, '2023-01-16', '2022', 16, 3, 'xc60.jpg'),
(17, 49000, 7000, '2023-01-17', '2022', 17, 3, '488gtb.jpg'),
(18, 52000, 6000, '2023-01-18', '2022', 18, 1, '911.jpg'),
(19, 80000, 3000, '2023-01-19', '2022', 19, 1, 'models.jpg'),
(20, 85000, 5000, '2023-01-20', '2022', 20, 2, 'rangerover.jpg');

-- Insert statements for Vehiculo_Caracteristicas
INSERT INTO `mydb`.`Vehiculo_Caracteristicas` (`idVehiculo_Caracteristicas`, `Vehiculo_Caracteristica`) VALUES
(1, 'Airbags'),
(2, 'Cámara de retroceso'),
(3, 'Sistema de navegación'),
(4, 'Asientos de cuero'),
(5, 'Techo panorámico'),
(6, 'Bluetooth'),
(7, 'Control de crucero'),
(8, 'Sistema de audio premium'),
(9, 'Faros LED'),
(10, 'Asientos calefactados'),
(11, 'Sistema de asistencia al conductor'),
(12, 'Sistema de arranque sin llave'),
(13, 'Sistema de alerta de cambio de carril'),
(14, 'Sistema de frenado de emergencia'),
(15, 'Sensores de estacionamiento'),
(16, 'Control de clima dual'),
(17, 'Pantalla táctil'),
(18, 'Puerto USB'),
(19, 'Ruedas de aleación'),
(20, 'Control por voz');

-- Insert statements for CaracteristicasVSvehiculoVenta
INSERT INTO `mydb`.`CaracteristicasVSvehiculoVenta` (`IdCaracteristica`, `IdVehiculoVenta`) VALUES
(1, 1),
(2, 1),
(3, 2),
(4, 2),
(1, 3),
(2, 3),
(5, 4),
(6, 4),
(7, 5),
(8, 5),
(9, 6),
(10, 6),
(11, 7),
(12, 7),
(13, 8),
(14, 8),
(15, 9),
(16, 9),
(17, 10),
(18, 10);
-- Add more insert statements as needed for each table
-- Insert statements for TipoPersona
INSERT INTO `mydb`.`TipoPersona` (`idTipoPersona`, `TipoPersonaDescrip`) VALUES
(1, 'Cliente'),
(2, 'Empleado'),
(3, 'Proveedor'),
(4, 'Administrador'),
(5, 'Vendedor'),
(6, 'Visitante'),
(7, 'Otro');

-- Insert statements for correos
INSERT INTO `mydb`.`correos` (`idcorreos`, `correo`) VALUES
(1, 'cliente1@example.com'),
(2, 'cliente2@example.com'),
(3, 'empleado1@example.com'),
(4, 'empleado2@example.com'),
(5, 'proveedor1@example.com'),
(6, 'proveedor2@example.com'),
(7, 'admin@example.com'),
(8, 'vendedor1@example.com'),
(9, 'vendedor2@example.com'),
(10, 'visitante@example.com'),
(11, 'otro1@example.com'),
(12, 'otro2@example.com'),
(13, 'otro3@example.com'),
(14, 'otro4@example.com'),
(15, 'otro5@example.com'),
(16, 'otro6@example.com'),
(17, 'otro7@example.com'),
(18, 'otro8@example.com'),
(19, 'otro9@example.com'),
(20, 'otro10@example.com');

-- Insert statements for tipoTelefono
INSERT INTO `mydb`.`tipoTelefono` (`idtipoTelefono`, `tipoTel`) VALUES
(1, 'Móvil'),
(2, 'Casa'),
(3, 'Trabajo'),
(4, 'Fax'),
(5, 'Otro');

-- Insert statements for telefono
INSERT INTO `mydb`.`telefono` (`idtelefono`, `tipoTel`, `numTel`) VALUES
(1, 1, '555-1234'),
(2, 1, '555-5678'),
(3, 2, '777-9876'),
(4, 2, '777-5432'),
(5, 3, '444-8765'),
(6, 3, '444-2345'),
(7, 4, '666-5678'),
(8, 4, '666-1234'),
(9, 5, '888-4321'),
(10, 5, '888-8765'),
(11, 1, '555-1111'),
(12, 2, '777-2222'),
(13, 3, '444-3333'),
(14, 4, '666-4444'),
(15, 5, '888-5555'),
(16, 1, '555-6666'),
(17, 2, '777-7777'),
(18, 3, '444-8888'),
(19, 4, '666-9999'),
(20, 5, '888-0000');

-- Insert statements for provincia
INSERT INTO `mydb`.`provincia` (`idprovincia`, `nomProv`) VALUES
(1, 'Santo Domingo'),
(2, 'Santiago'),
(3, 'La Romana'),
(4, 'Puerto Plata'),
(5, 'San Cristóbal'),
(6, 'La Vega'),
(7, 'San Pedro de Macorís'),
(8, 'Duarte'),
(9, 'Espaillat'),
(10, 'San Juan'),
(11, 'Monte Plata'),
(12, 'Peravia'),
(13, 'Azua'),
(14, 'Barahona'),
(15, 'La Altagracia'),
(16, 'Samana'),
(17, 'Sanchez Ramirez'),
(18, 'Hato Mayor'),
(19, 'Dajabon'),
(20, 'Elias Pina');

-- Insert statements for Sector
INSERT INTO `mydb`.`Sector` (`idSector`, `nomSector`) VALUES
(1, 'Zona Colonial'),
(2, 'Bella Vista'),
(3, 'Piantini'),
(4, 'Ensanche Naco'),
(5, 'Mirador Norte'),
(6, 'Los Alcarrizos'),
(7, 'La Fe'),
(8, 'Villa Juana'),
(9, 'Villa Consuelo'),
(10, 'Santiago de los Caballeros'),
(11, 'Villa Olga'),
(12, 'Cienfuegos'),
(13, 'Barrio Obrero'),
(14, 'Villa Duarte'),
(15, 'Gualey'),
(16, 'Ensanche Espaillat'),
(17, 'Las Caobas'),
(18, 'Urbanización del Este'),
(19, 'Buenos Aires'),
(20, 'Las Mercedes');

-- Insert statements for tipoDireccion
INSERT INTO `mydb`.`tipoDireccion` (`idtipoDireccion`, `descripcion`) VALUES
(1, 'Casa'),
(2, 'Apartamento'),
(3, 'Oficina'),
(4, 'Local Comercial'),
(5, 'Bodega'),
(6, 'Terreno'),
(7, 'Otro');

-- Insert statements for Direccion
INSERT INTO `mydb`.`Direccion` (`idDireccion`, `idPersona`, `direccion1`, `direccion2`, `idProvincia`, `idSector`, `tipoDireccion`) VALUES
(1, 1, 'Calle Principal #123', 'Apt 5A', 1, 1, 2),
(2, 2, 'Av. Duarte #456', 'Ofic. 305', 2, 2, 3),
(3, 3, 'Calle El Sol #789', 'Local 2B', 3, 3, 4),
(4, 4, 'Calle La Luna #1011', 'Bodega 7', 4, 4, 5),
(5, 5, 'Calle San Miguel #1213', 'Terreno A', 5, 5, 6),
(6, 6, 'Calle Las Flores #1415', 'Otro 1', 6, 6, 7),
(7, 7, 'Calle Los Pinos #1617', 'Otro 2', 7, 7, 7),
(8, 8, 'Calle Las Palmas #1819', 'Otro 3', 8, 8, 7),
(9, 9, 'Calle Los Jardines #2021', 'Otro 4', 9, 9, 7),
(10, 10, 'Calle Las Mariposas #2223', 'Otro 5', 10, 10, 7),
(11, 11, 'Calle Los Rios #2425', 'Otro 6', 11, 11, 7),
(12, 12, 'Calle Las Montañas #2627', 'Otro 7', 12, 12, 7),
(13, 13, 'Calle Los Lagos #2829', 'Otro 8', 13, 13, 7),
(14, 14, 'Calle Las Aves #3031', 'Otro 9', 14, 14, 7),
(15, 15, 'Calle Los Bosques #3233', 'Otro 10', 15, 15, 7),
(16, 16, 'Calle Las Playas #3435', 'Otro 11', 16, 16, 7),
(17, 17, 'Calle Los Campos #3637', 'Otro 12', 17, 17, 7),
(18, 18, 'Calle Las Monturas #3839', 'Otro 13', 18, 18, 7),
(19, 19, 'Calle Los Vientos #4041', 'Otro 14', 19, 19, 7),
(20, 20, 'Calle Las Nubes #4243', 'Otro 15', 20, 20, 7);

-- Insert statements for Persona
INSERT INTO `mydb`.`Persona` (`idPersona`, `nombre`, `apellido`, `sexo`, `doc_identidad`, `idDireccion`, `correo`, `TipoPersona`, `telefono`) VALUES
(1, 'Juan', 'Pérez', 'M', '001-0000000-0', 1, 1, 1, 1),
(2, 'María', 'Gómez', 'F', '002-1111111-1', 2, 2, 1, 2),
(3, 'Pedro', 'Ramírez', 'M', '003-2222222-2', 3, 3, 2, 3),
(4, 'Ana', 'Santos', 'F', '004-3333333-3', 4, 4, 2, 4),
(5, 'Carlos', 'González', 'M', '005-4444444-4', 5, 5, 3, 5),
(6, 'Sofía', 'Hernández', 'F', '006-5555555-5', 6, 6, 3, 6),
(7, 'Luis', 'López', 'M', '007-6666666-6', 7, 7, 4, 7),
(8, 'Laura', 'Torres', 'F', '008-7777777-7', 8, 8, 5, 8),
(9, 'José', 'Mendoza', 'M', '009-8888888-8', 9, 9, 5, 9),
(10, 'Isabel', 'Fernández', 'F', '010-9999999-9', 10, 10, 6, 10),
(11, 'Raúl', 'Jiménez', 'M', '011-1010101-0', 11, 11, 6, 11),
(12, 'Marta', 'Castillo', 'F', '012-1212121-1', 12, 12, 7, 12),
(13, 'Jorge', 'Cruz', 'M', '013-1313131-2', 13, 13, 7, 13),
(14, 'Rosa', 'Méndez', 'F', '014-1414141-3', 14, 14, 7, 14),
(15, 'Francisco', 'García', 'M', '015-1515151-4', 15, 15, 7, 15),
(16, 'Elena', 'Reyes', 'F', '016-1616161-5', 16, 16, 7, 16),
(17, 'Daniel', 'Rojas', 'M', '017-1717171-6', 17, 17, 7, 17),
(18, 'Gabriela', 'Acosta', 'F', '018-1818181-7', 18, 18, 7, 18),
(19, 'Mario', 'Sánchez', 'M', '019-1919191-8', 19, 19, 7, 19),
(20, 'Carmen', 'Mora', 'F', '020-2020202-9', 20, 20, 7, 20);

-- Insert statements for Cliente
INSERT INTO `mydb`.`Cliente` (`idCliente`, `idPersona`, `nombre`, `apellido`) VALUES
(1, 1, 'Juan', 'Pérez'),
(2, 2, 'María', 'Gómez'),
(3, 3, 'Pedro', 'Ramírez'),
(4, 4, 'Ana', 'Santos'),
(5, 5, 'Carlos', 'González'),
(6, 6, 'Sofía', 'Hernández'),
(7, 7, 'Luis', 'López'),
(8, 8, 'Laura', 'Torres'),
(9, 9, 'José', 'Mendoza'),
(10, 10, 'Isabel', 'Fernández'),
(11, 11, 'Raúl', 'Jiménez'),
(12, 12, 'Marta', 'Castillo'),
(13, 13, 'Jorge', 'Cruz'),
(14, 14, 'Rosa', 'Méndez'),
(15, 15, 'Francisco', 'García'),
(16, 16, 'Elena', 'Reyes'),
(17, 17, 'Daniel', 'Rojas'),
(18, 18, 'Gabriela', 'Acosta'),
(19, 19, 'Mario', 'Sánchez'),
(20, 20, 'Carmen', 'Mora');

-- Insert statements for Usuario
INSERT INTO `mydb`.`Usuario` (`idUsuario`, `NombreUser`, `PasswUser`, `idPersona`) VALUES
(1, 'juan_perez', 'password1', 1),
(2, 'maria_gomez', 'password2', 2),
(3, 'pedro_ramirez', 'password3', 3),
(4, 'ana_santos', 'password4', 4),
(5, 'carlos_gonzalez', 'password5', 5),
(6, 'sofia_hernandez', 'password6', 6),
(7, 'luis_lopez', 'password7', 7),
(8, 'laura_torres', 'password8', 8),
(9, 'jose_mendoza', 'password9', 9),
(10, 'isabel_fernandez', 'password10', 10),
(11, 'raul_jimenez', 'password11', 11),
(12, 'marta_castillo', 'password12', 12),
(13, 'jorge_cruz', 'password13', 13),
(14, 'rosa_mendez', 'password14', 14),
(15, 'francisco_garcia', 'password15', 15),
(16, 'elena_reyes', 'password16', 16),
(17, 'daniel_rojas', 'password17', 17),
(18, 'gabriela_acosta', 'password18', 18),
(19, 'mario_sanchez', 'password19', 19),
(20, 'carmen_mora', 'password20', 20);

-- Insert statements for PreferenciasClientes
INSERT INTO `mydb`.`PreferenciasClientes` (`idPreferenciasClientes`, `CaractVehiculoP`, `IdCliente`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 2),
(4, 4, 2),
(5, 1, 3),
(6, 2, 3),
(7, 3, 4),
(8, 4, 4),
(9, 1, 5),
(10, 2, 5),
(11, 3, 6),
(12, 4, 6),
(13, 1, 7),
(14, 2, 7),
(15, 3, 8),
(16, 4, 8),
(17, 1, 9),
(18, 2, 9),
(19, 3, 10),
(20, 4, 10);

-- Insert statements for Vehiculos_Vendidos
INSERT INTO `mydb`.`Vehiculos_Vendidos` (`idVehiculos_Vendidos`, `idVehiculoVenta`, `idCliente`, `PrecioAcordado`, `fechaVenta`, `MontoPagoMensual`) VALUES
(1, 1, 1, 25000, '2023-07-01', 1500),
(2, 2, 1, 30000, '2023-07-02', 1800),
(3, 3, 2, 22000, '2023-07-03', 1320),
(4, 4, 2, 28000, '2023-07-04', 1680),
(5, 5, 3, 20000, '2023-07-05', 1200),
(6, 6, 3, 26000, '2023-07-06', 1560),
(7, 7, 4, 24000, '2023-07-07', 1440),
(8, 8, 4, 32000, '2023-07-08', 1920),
(9, 9, 5, 21000, '2023-07-09', 1260),
(10, 10, 5, 27000, '2023-07-10', 1620),
(11, 11, 6, 23000, '2023-07-11', 1380),
(12, 12, 6, 29000, '2023-07-12', 1740),
(13, 13, 7, 26000, '2023-07-13', 1560),
(14, 14, 7, 34000, '2023-07-14', 2040),
(15, 15, 8, 25000, '2023-07-15', 1500),
(16, 16, 8, 31000, '2023-07-16', 1860),
(17, 17, 9, 28000, '2023-07-17', 1680),
(18, 18, 9, 36000, '2023-07-18', 2160),
(19, 19, 10, 27000, '2023-07-19', 1620),
(20, 20, 10, 33000, '2023-07-20', 1980);


-- Insert statements for tipoEmpleado
INSERT INTO `mydb`.`tipoEmpleado` (`idtipoEmpleado`, `descripcion`) VALUES
(1, 'Vendedor'),
(2, 'Mecánico'),
(3, 'Gerente'),
(4, 'Administrativo'),
(5, 'Lavador');


-- Insert statements for empleado
INSERT INTO `mydb`.`empleado` (`idempleado`, `idPersona`, `codEmpleado`, `Departamento`, `salario`, `FechaContratacion`, `tipoEmpleado`, `empleadocol`) VALUES
(1, 1, 1001, 1, 2000, '2022-01-10', 1, NULL),
(2, 2, 1002, 3, 1800, '2021-05-15', 2, NULL),
(3, 3, 1003, 4, 3000, '2020-03-02', 3, NULL),
(4, 4, 1004, 5, 2200, '2023-02-20', 4, NULL),
(5, 5, 1005, 2, 1500, '2023-04-05', 5, NULL),
(6, 6, 1006, 1, 1900, '2023-06-12', 1, NULL),
(7, 7, 1007, 3, 2100, '2022-11-22', 2, NULL),
(8, 8, 1008, 4, 3200, '2021-08-16', 3, NULL),
(9, 9, 1009, 5, 2400, '2022-09-30', 4, NULL),
(10, 10, 1010, 2, 1600, '2023-01-25', 5, NULL),
(11, 11, 1011, 1, 2300, '2023-05-02', 1, NULL),
(12, 12, 1012, 3, 2000, '2023-03-18', 2, NULL),
(13, 13, 1013, 4, 3500, '2022-07-14', 3, NULL),
(14, 14, 1014, 5, 2600, '2021-09-29', 4, NULL),
(15, 15, 1015, 2, 1700, '2023-06-30', 5, NULL),
(16, 16, 1016, 1, 2400, '2022-12-05', 1, NULL),
(17, 17, 1017, 3, 1900, '2023-02-28', 2, NULL),
(18, 18, 1018, 4, 3300, '2021-10-15', 3, NULL),
(19, 19, 1019, 5, 2500, '2023-03-10', 4, NULL),
(20, 20, 1020, 2, 1800, '2023-04-20', 5, NULL);


-- Insert statements for EstadosPagos
INSERT INTO `mydb`.`EstadosPagos` (`idEstadosPagos`, `descripcion`) VALUES
(1, 'Pendiente'),
(2, 'Pagado'),
(3, 'Atrasado'),
(4, 'Cancelado');

-- Insert statements for PagosCli
INSERT INTO `mydb`.`PagosCli` (`idPagosCli`, `idCliente`, `idVehiculoVendido`, `EstadoPago`, `UltimaFechPago`, `FechaLimPago`, `MontoActual`) VALUES
(1, 1, 1, 2, '2023-08-01', '2023-08-10', 1500),
(2, 2, 2, 2, '2023-08-02', '2023-08-12', 1800),
(3, 3, 3, 1, '2023-08-03', '2023-08-15', 1320),
(4, 4, 4, 1, '2023-08-04', '2023-08-16', 1680),
(5, 5, 5, 3, '2023-08-05', '2023-08-18', 1200),
(6, 6, 6, 3, '2023-08-06', '2023-08-20', 1560),
(7, 7, 7, 2, '2023-08-07', '2023-08-22', 1440),
(8, 8, 8, 2, '2023-08-08', '2023-08-24', 1920),
(9, 9, 9, 4, '2023-08-09', '2023-08-26', 1260),
(10, 10, 10, 4, '2023-08-10', '2023-08-28', 1620),
(11, 11, 11, 2, '2023-08-11', '2023-08-30', 1380),
(12, 12, 12, 1, '2023-08-12', '2023-09-01', 1740),
(13, 13, 13, 1, '2023-08-13', '2023-09-03', 1560),
(14, 14, 14, 3, '2023-08-14', '2023-09-05', 2040),
(15, 15, 15, 3, '2023-08-15', '2023-09-07', 1500),
(16, 16, 16, 2, '2023-08-16', '2023-09-09', 1860),
(17, 17, 17, 2, '2023-08-17', '2023-09-11', 1680),
(18, 18, 18, 4, '2023-08-18', '2023-09-13', 2160),
(19, 19, 19, 4, '2023-08-19', '2023-09-15', 1620),
(20, 20, 20, 1, '2023-08-20', '2023-09-17', 1980);
