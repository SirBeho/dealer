-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Vehiculo_Categoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Vehiculo_Categoria` (
  `idVehiculo_Categoria` INT NOT NULL,
  `nombre_Categoria` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idVehiculo_Categoria`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Vehiculos_Marcas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Vehiculos_Marcas` (
  `idVehiculos_Marca` INT NOT NULL,
  `marca_nombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idVehiculos_Marca`),
  UNIQUE INDEX `marca_nombre_UNIQUE` (`marca_nombre` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Vehiculos_Modelos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Vehiculos_Modelos` (
  `idVehiculos_Modelos` INT NOT NULL,
  `Modelo_nombre` VARCHAR(45) NOT NULL,
  `marca` INT NOT NULL,
  PRIMARY KEY (`idVehiculos_Modelos`),
  UNIQUE INDEX `marca_UNIQUE` (`marca` ASC) VISIBLE,
  UNIQUE INDEX `idVehiculos_Modelos_UNIQUE` (`idVehiculos_Modelos` ASC) VISIBLE,
  UNIQUE INDEX `Modelo_nombre_UNIQUE` (`Modelo_nombre` ASC) VISIBLE,
  CONSTRAINT `marca`
    FOREIGN KEY (`marca`)
    REFERENCES `mydb`.`Vehiculos_Marcas` (`idVehiculos_Marca`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Vehiculos_venta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Vehiculos_venta` (
  `idVehiculos_Venta` INT NOT NULL,
  `precio` FLOAT NOT NULL,
  `millage` FLOAT NOT NULL,
  `fecha_adquisicion` DATE NOT NULL,
  `year` VARCHAR(45) NOT NULL,
  `vehiculo_modelo` INT NOT NULL,
  `vehiculo_Categoria` INT NOT NULL,
  `image` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`idVehiculos_Venta`),
  INDEX `categoria_idx` (`vehiculo_Categoria` ASC) VISIBLE,
  UNIQUE INDEX `vehiculo_modelo_UNIQUE` (`vehiculo_modelo` ASC) VISIBLE,
  CONSTRAINT `categoria`
    FOREIGN KEY (`vehiculo_Categoria`)
    REFERENCES `mydb`.`Vehiculo_Categoria` (`idVehiculo_Categoria`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `modelo`
    FOREIGN KEY (`vehiculo_modelo`)
    REFERENCES `mydb`.`Vehiculos_Modelos` (`idVehiculos_Modelos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Vehiculo_Caracteristicas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Vehiculo_Caracteristicas` (
  `idVehiculo_Caracteristicas` INT NOT NULL,
  `Vehiculo_Caracteristica` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idVehiculo_Caracteristicas`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`CaracteristicasVSvehiculoVenta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`CaracteristicasVSvehiculoVenta` (
  `IdCaracteristica` INT NOT NULL,
  `IdVehiculoVenta` INT NOT NULL,
  INDEX `vehiculo_idx` (`IdVehiculoVenta` ASC) VISIBLE,
  INDEX `caracteristica_idx` (`IdCaracteristica` ASC) VISIBLE,
  CONSTRAINT `vehiculo`
    FOREIGN KEY (`IdVehiculoVenta`)
    REFERENCES `mydb`.`Vehiculos_venta` (`idVehiculos_Venta`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `caracteristica`
    FOREIGN KEY (`IdCaracteristica`)
    REFERENCES `mydb`.`Vehiculo_Caracteristicas` (`idVehiculo_Caracteristicas`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`TipoPersona`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`TipoPersona` (
  `idTipoPersona` INT NOT NULL,
  `TipoPersonaDescrip` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idTipoPersona`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`correos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`correos` (
  `idcorreos` INT NOT NULL,
  `correo` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idcorreos`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`tipoTelefono`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`tipoTelefono` (
  `idtipoTelefono` INT NOT NULL,
  `tipoTel` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idtipoTelefono`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`telefono`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`telefono` (
  `idtelefono` INT NOT NULL,
  `tipoTel` INT NOT NULL,
  `numTel` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idtelefono`),
  INDEX `tipoTel_idx` (`tipoTel` ASC) VISIBLE,
  CONSTRAINT `tipoTel`
    FOREIGN KEY (`tipoTel`)
    REFERENCES `mydb`.`tipoTelefono` (`idtipoTelefono`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`provincia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`provincia` (
  `idprovincia` INT NOT NULL,
  `nomProv` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idprovincia`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Sector`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Sector` (
  `idSector` INT NOT NULL,
  `nomSector` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idSector`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`tipoDireccion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`tipoDireccion` (
  `idtipoDireccion` INT NOT NULL,
  `descripcion` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idtipoDireccion`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Direccion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Direccion` (
  `idDireccion` INT NOT NULL,
  `idPersona` INT NOT NULL,
  `direccion1` VARCHAR(45) NOT NULL,
  `direccion2` VARCHAR(45) NOT NULL,
  `idProvincia` INT NOT NULL,
  `idSector` INT NOT NULL,
  `tipoDireccion` INT NOT NULL,
  PRIMARY KEY (`idDireccion`),
  INDEX `provinca_idx` (`idProvincia` ASC) VISIBLE,
  INDEX `sector_idx` (`idSector` ASC) VISIBLE,
  INDEX `tipodir_idx` (`tipoDireccion` ASC) VISIBLE,
  CONSTRAINT `provincia`
    FOREIGN KEY (`idProvincia`)
    REFERENCES `mydb`.`provincia` (`idprovincia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `sector`
    FOREIGN KEY (`idSector`)
    REFERENCES `mydb`.`Sector` (`idSector`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `tipodir`
    FOREIGN KEY (`tipoDireccion`)
    REFERENCES `mydb`.`tipoDireccion` (`idtipoDireccion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Persona`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Persona` (
  `idPersona` INT NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `apellido` VARCHAR(45) NOT NULL,
  `sexo` VARCHAR(45) NOT NULL,
  `doc_identidad` VARCHAR(45) NOT NULL,
  `idDireccion` INT NOT NULL,
  `correo` INT NOT NULL,
  `TipoPersona` INT NOT NULL,
  `telefono` INT NOT NULL,
  PRIMARY KEY (`idPersona`),
  INDEX `tipoPersoa_idx` (`TipoPersona` ASC) VISIBLE,
  INDEX `correo_idx` (`correo` ASC) VISIBLE,
  INDEX `telefono_idx` (`telefono` ASC) VISIBLE,
  INDEX `direccion_idx` (`idDireccion` ASC) VISIBLE,
  CONSTRAINT `tipoPersoa`
    FOREIGN KEY (`TipoPersona`)
    REFERENCES `mydb`.`TipoPersona` (`idTipoPersona`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `correo`
    FOREIGN KEY (`correo`)
    REFERENCES `mydb`.`correos` (`idcorreos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `telefono`
    FOREIGN KEY (`telefono`)
    REFERENCES `mydb`.`telefono` (`idtelefono`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `direccion`
    FOREIGN KEY (`idDireccion`)
    REFERENCES `mydb`.`Direccion` (`idDireccion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Cliente` (
  `idCliente` INT NOT NULL,
  `idPersona` INT NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `apellido` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idCliente`),
  INDEX `persona_idx` (`idPersona` ASC) VISIBLE,
  CONSTRAINT `personaCliente`
    FOREIGN KEY (`idPersona`)
    REFERENCES `mydb`.`Persona` (`idPersona`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Usuario` (
  `idUsuario` INT NOT NULL,
  `NombreUser` VARCHAR(45) NOT NULL,
  `PasswUser` VARCHAR(45) NOT NULL,
  `idPersona` INT NOT NULL,
  PRIMARY KEY (`idUsuario`),
  INDEX `persona_idx` (`idPersona` ASC) VISIBLE,
  CONSTRAINT `personaUser`
    FOREIGN KEY (`idPersona`)
    REFERENCES `mydb`.`Persona` (`idPersona`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`PreferenciasClientes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`PreferenciasClientes` (
  `idPreferenciasClientes` INT NOT NULL,
  `CaractVehiculoP` INT NOT NULL,
  `IdCliente` INT NOT NULL,
  PRIMARY KEY (`idPreferenciasClientes`),
  INDEX `IdCliPrefClie_idx` (`IdCliente` ASC) VISIBLE,
  INDEX `PrefCliVehi_idx` (`CaractVehiculoP` ASC) VISIBLE,
  CONSTRAINT `PrefCliVehi`
    FOREIGN KEY (`CaractVehiculoP`)
    REFERENCES `mydb`.`Vehiculo_Caracteristicas` (`idVehiculo_Caracteristicas`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `IdCliPrefClie`
    FOREIGN KEY (`IdCliente`)
    REFERENCES `mydb`.`Cliente` (`idCliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Vehiculos_Vendidos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Vehiculos_Vendidos` (
  `idVehiculos_Vendidos` INT NOT NULL,
  `idVehiculoVenta` INT NOT NULL,
  `idCliente` INT NOT NULL,
  `PrecioAcordado` FLOAT NOT NULL,
  `fechaVenta` DATE NOT NULL,
  `MontoPagoMensual` FLOAT NOT NULL,
  PRIMARY KEY (`idVehiculos_Vendidos`),
  INDEX `vehiculoVenta_idx` (`idVehiculoVenta` ASC) VISIBLE,
  INDEX `cliente_idx` (`idCliente` ASC) VISIBLE,
  CONSTRAINT `vehiculoVenta`
    FOREIGN KEY (`idVehiculoVenta`)
    REFERENCES `mydb`.`Vehiculos_venta` (`idVehiculos_Venta`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `cliente`
    FOREIGN KEY (`idCliente`)
    REFERENCES `mydb`.`Cliente` (`idCliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`tipoEmpleado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`tipoEmpleado` (
  `idtipoEmpleado` INT NOT NULL,
  `descripcion` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idtipoEmpleado`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`empleado`
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS `mydb`.`empleado` (
  `idempleado` INT NOT NULL,
  `idPersona` INT NOT NULL,
  `codEmpleado` INT NOT NULL,
  `Departamento` INT NOT NULL,
  `salario` FLOAT NOT NULL,
  `FechaContratacion` DATE NOT NULL,
  `tipoEmpleado` INT NULL,
  `empleadocol` VARCHAR(45) NULL,
  PRIMARY KEY (`idempleado`),
  INDEX `persona_idx` (`idPersona` ASC) VISIBLE,
  INDEX `tipoEmpl_idx` (`tipoEmpleado` ASC) VISIBLE,
  INDEX `departamento_idx` (`Departamento` ASC) VISIBLE,
  CONSTRAINT `personaEmpleado`
    FOREIGN KEY (`idPersona`)
    REFERENCES `mydb`.`Persona` (`idPersona`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `tipoEmpl`
    FOREIGN KEY (`tipoEmpleado`)
    REFERENCES `mydb`.`tipoEmpleado` (`idtipoEmpleado`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Departamento`
    FOREIGN KEY (`Departamento`)
    REFERENCES `mydb`.`Departamento` (`idDepartamento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
)
ENGINE = InnoDB;



-- -----------------------------------------------------
-- Table `mydb`.`EstadosPagos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`EstadosPagos` (
  `idEstadosPagos` INT NOT NULL,
  `descripcion` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idEstadosPagos`))
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `mydb`.`Departamento` (
  `idDepartamento` INT NOT NULL ,
  `nombre` VARCHAR(50) NOT NULL,
  `ubicacion` VARCHAR(100) NOT NULL,
  `descripcion` TEXT,
  PRIMARY KEY (`idDepartamento`)
)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `mydb`.`PagosCli`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`PagosCli` (
  `idPagosCli` INT NOT NULL,
  `idCliente` INT NOT NULL,
  `idVehiculoVendido` INT NOT NULL,
  `EstadoPago` INT NOT NULL,
  `UltimaFechPago` DATE NOT NULL,
  `FechaLimPago` DATE NOT NULL,
  `MontoActual` FLOAT NOT NULL,
  PRIMARY KEY (`idPagosCli`),
  INDEX `cliente_idx` (`idCliente` ASC) VISIBLE,
  INDEX `vehiculoVendido_idx` (`idVehiculoVendido` ASC) VISIBLE,
  INDEX `estadosPago_idx` (`EstadoPago` ASC) VISIBLE,
  CONSTRAINT `pagoscliente`
    FOREIGN KEY (`idCliente`)
    REFERENCES `mydb`.`Cliente` (`idCliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `vehiculoVendido`
    FOREIGN KEY (`idVehiculoVendido`)
    REFERENCES `mydb`.`Vehiculos_Vendidos` (`idVehiculos_Vendidos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `estadosPago`
    FOREIGN KEY (`EstadoPago`)
    REFERENCES `mydb`.`EstadosPagos` (`idEstadosPagos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`PrestVehiculo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`PrestVehiculo` (
  `idPrestVehiculo` INT NOT NULL,
  `vehiculo` INT NOT NULL,
  `fechaInicio` DATE NOT NULL,
  `fechaCulminacion` DATE NOT NULL,
  `pagosMensAcordados` FLOAT NOT NULL,
  PRIMARY KEY (`idPrestVehiculo`),
  INDEX `vehiculo_idx` (`vehiculo` ASC) VISIBLE,
  CONSTRAINT `prestvehiculo`
    FOREIGN KEY (`vehiculo`)
    REFERENCES `mydb`.`Vehiculos_Vendidos` (`idVehiculos_Vendidos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Seguros`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Seguros` (
  `idSeguros` INT NOT NULL,
  `nomSeguro` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idSeguros`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`PolizasSeguros`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`PolizasSeguros` (
  `idPolizasSeguros` INT NOT NULL,
  `vehiculo` INT NOT NULL,
  `aseguradora` INT NOT NULL,
  `fechaInicio` DATE NOT NULL,
  `fechaRenovacion` DATE NOT NULL,
  `cuotaPagMensual` FLOAT NOT NULL,
  PRIMARY KEY (`idPolizasSeguros`),
  INDEX `vehiculo_idx` (`vehiculo` ASC) VISIBLE,
  INDEX `aseguradora_idx` (`aseguradora` ASC) VISIBLE,
  CONSTRAINT `polizavehiculo`
    FOREIGN KEY (`vehiculo`)
    REFERENCES `mydb`.`Vehiculos_Vendidos` (`idVehiculos_Vendidos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `aseguradora`
    FOREIGN KEY (`aseguradora`)
    REFERENCES `mydb`.`Seguros` (`idSeguros`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
