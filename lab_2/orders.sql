-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema orders
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema orders
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `orders` ;
USE `orders` ;

-- -----------------------------------------------------
-- Table `orders`.`Products`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `orders`.`Products` (
  `product_id` INT NOT NULL AUTO_INCREMENT COMMENT 'id товара',
  `name_of_product` TINYTEXT NOT NULL COMMENT 'наименование товара',
  `price` DECIMAL(10,0) NOT NULL COMMENT 'цена товара',
  `product_characteristics` TEXT(300) NULL COMMENT 'характеристики торвара',
  `delivery` TINYINT(1) NOT NULL COMMENT 'наличие доставки',
  PRIMARY KEY (`product_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `orders`.`Customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `orders`.`Customers` (
  `customer_id` INT NOT NULL AUTO_INCREMENT COMMENT 'id заказчика',
  `name_of_customer` VARCHAR(50) NOT NULL COMMENT 'контактное лицо (имя заказчика)',
  `address` TEXT(100) NULL COMMENT 'адрес заказчика',
  `phone_num` INT NOT NULL COMMENT 'телефонный номер заказчика для связи с ним',
  PRIMARY KEY (`customer_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `orders`.`Delivery`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `orders`.`Delivery` (
  `delivery_id` INT NOT NULL AUTO_INCREMENT COMMENT 'id доставки',
  `type_of_delivery` TINYTEXT NOT NULL COMMENT 'способ (тип) доставки',
  `cost_of_delivery` DECIMAL(10,0) NOT NULL COMMENT 'стоимости доставки',
  `speed` TEXT(25) NOT NULL COMMENT 'скорость доставки',
  PRIMARY KEY (`delivery_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `orders`.`Orders`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `orders`.`Orders` (
  `order_id` INT NOT NULL AUTO_INCREMENT COMMENT 'id заказа',
  `product_id` INT NOT NULL COMMENT 'id товара',
  `customer_id` INT NOT NULL COMMENT 'id заказчика',
  `quantity` INT NOT NULL COMMENT 'количество купленного заказчиком товара',
  `date_of_purchase` DATE NOT NULL COMMENT 'дата покупки',
  `type_of_delivery` TINYTEXT NOT NULL,
  `cost_of_delivery` DECIMAL(10,0) NOT NULL,
  `delivery_id` INT NOT NULL,
  PRIMARY KEY (`order_id`),
  INDEX `product_id_idx` (`product_id` ASC),
  INDEX `customers_id_idx` (`customer_id` ASC),
  INDEX `delivery_id_idx` (`delivery_id` ASC),
  CONSTRAINT `product_id`
    FOREIGN KEY (`product_id`)
    REFERENCES `orders`.`Products` (`product_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `customers_id`
    FOREIGN KEY (`customer_id`)
    REFERENCES `orders`.`Customers` (`customer_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `delivery_id`
    FOREIGN KEY (`delivery_id`)
    REFERENCES `orders`.`Delivery` (`delivery_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `orders`.`Delivery_of_Products`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `orders`.`Delivery_of_Products` (
  `delivery_id` INT NOT NULL,
  `product_id` INT NOT NULL,
  INDEX `delivery_id_idx` (`product_id` ASC),
  INDEX `delivery_id_idx1` (`delivery_id` ASC),
  CONSTRAINT `prodect_id`
    FOREIGN KEY (`product_id`)
    REFERENCES `orders`.`Products` (`product_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `delivery_id`
    FOREIGN KEY (`delivery_id`)
    REFERENCES `orders`.`Delivery` (`delivery_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `orders`.`new_table`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `orders`.`new_table` (
  `id_new_table` INT(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_new_table`),
  UNIQUE INDEX `id_new_table_UNIQUE` (`id_new_table` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = 'таблица, созданная в бд и синхронизированная с моделью';


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
