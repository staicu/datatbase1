# datatbase1
team project database 1
Laurian Staicu tables:

vehicle
driver
storage unit
position
employe

Elmira tables:

customer
unit rental
job order
ware house
job id 

example table:

 Table `homework1`.`jobdetail`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `homework1`.`jobdetail` (
  `JobDetailID` INT(11) NOT NULL,
  `VehicleID` INT(11) NOT NULL,
  `DriverID` INT(11) NOT NULL,
  `Mileage` DECIMAL(10,3) NOT NULL,
  `WeightActual` DECIMAL(10,3) NOT NULL,
  PRIMARY KEY (`JobDetailID`),
  INDEX `fk_jobdetail_drivers1_idx` (`DriverID` ASC),
  INDEX `fk_jobdetail_vehicle1_idx` (`VehicleID` ASC),
  CONSTRAINT `fk_jobdetail_drivers1`
    FOREIGN KEY (`DriverID`)
    REFERENCES `homework1`.`drivers` (`IdDrivers`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_jobdetail_vehicle1`
    FOREIGN KEY (`VehicleID`)
    REFERENCES `homework1`.`vehicle` (`VehicleID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_jobdetail_joborders1`
    FOREIGN KEY (`JobDetailID`)
    REFERENCES `homework1`.`joborders` (`JobOrdersID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;




