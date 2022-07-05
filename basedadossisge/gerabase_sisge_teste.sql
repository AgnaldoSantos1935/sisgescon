-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema siges
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `siges` ;

-- -----------------------------------------------------
-- Schema siges
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `siges` DEFAULT CHARACTER SET utf8mb4 ;
SHOW WARNINGS;
-- -----------------------------------------------------
-- Schema sisge_teste
-- -----------------------------------------------------
SHOW WARNINGS;
USE `siges` ;

-- -----------------------------------------------------
-- Table `siges`.`contratos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `siges`.`contratos` (
  `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `numero` VARCHAR(255) NOT NULL,
  `ano` VARCHAR(255) NOT NULL,
  `dt_insercao` TIMESTAMP NULL DEFAULT NULL,
  `contratada` VARCHAR(255) NOT NULL,
  `objeto` VARCHAR(255) NOT NULL,
  `dtvigencia` VARCHAR(255) NOT NULL,
  `cnpjcontratada` VARCHAR(255) NOT NULL,
  `fiscal` VARCHAR(255) NOT NULL,
  `modalidadelicitacao` VARCHAR(255) NOT NULL,
  `numerolicitacao` VARCHAR(255) NOT NULL,
  `created_at` TIMESTAMP NULL DEFAULT NULL,
  `updated_at` TIMESTAMP NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 12
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `siges`.`users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `siges`.`users` (
  `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  `email` VARCHAR(255) NOT NULL,
  `email_verified_at` TIMESTAMP NULL DEFAULT NULL,
  `password` VARCHAR(255) NOT NULL,
  `remember_token` VARCHAR(100) NULL DEFAULT NULL,
  `created_at` TIMESTAMP NULL DEFAULT NULL,
  `updated_at` TIMESTAMP NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `users_email_unique` (`email` ASC) VISIBLE)
ENGINE = InnoDB
AUTO_INCREMENT = 2
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `siges`.`tarefas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `siges`.`tarefas` (
  `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(255) NOT NULL,
  `dtcriacao` TIMESTAMP NULL DEFAULT NULL,
  `dtinicio` VARCHAR(255) NOT NULL,
  `previsaofim` VARCHAR(255) NOT NULL,
  `metas` VARCHAR(255) NOT NULL,
  `designado` INT NOT NULL,
  `status` VARCHAR(255) NOT NULL,
  `ultimainsercao` TIMESTAMP NULL DEFAULT NULL,
  `created_at` TIMESTAMP NULL DEFAULT NULL,
  `updated_at` TIMESTAMP NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 6
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `siges`.`funcionarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `siges`.`funcionarios` (
  `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(255) NOT NULL,
  `dtnascimento` VARCHAR(255) NOT NULL,
  `dt_insercao` TIMESTAMP NULL DEFAULT NULL,
  `rg` VARCHAR(255) NOT NULL,
  `cpf` VARCHAR(255) NOT NULL,
  `matricula` VARCHAR(255) NOT NULL,
  `cargo` VARCHAR(255) NOT NULL,
  `setor` VARCHAR(255) NOT NULL,
  `dtadmissao` VARCHAR(255) NOT NULL,
  `dtdemissao` VARCHAR(255) NOT NULL,
  `created_at` TIMESTAMP NULL DEFAULT NULL,
  `updated_at` TIMESTAMP NULL DEFAULT NULL,
  `usersistema` INT NULL,
  `users_id` BIGINT(20) UNSIGNED NOT NULL,
  `tarefas_id` BIGINT(20) UNSIGNED NOT NULL,
  `diariase_passagens_id` BIGINT(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`, `tarefas_id`),
  INDEX `fk_funcionarios_users1_idx` (`users_id` ASC) VISIBLE,
  INDEX `fk_funcionarios_tarefas1_idx` (`tarefas_id` ASC) VISIBLE,
  INDEX `fk_funcionarios_diariase_passagens1_idx` (`diariase_passagens_id` ASC) VISIBLE,
  CONSTRAINT `fk_usuario-funcionario`
    FOREIGN KEY (`users_id`)
    REFERENCES `siges`.`users` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_funcionarios_tarefas1`
    FOREIGN KEY (`tarefas_id`)
    REFERENCES `siges`.`tarefas` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_funcionarios_diariase_passagens1`
    FOREIGN KEY (`diariase_passagens_id`)
    REFERENCES `siges`.`diariase_passagens` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 6
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `siges`.`diariase_passagens`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `siges`.`diariase_passagens` (
  `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `numeroprd` VARCHAR(255) NOT NULL,
  `ano` VARCHAR(255) NOT NULL,
  `dtinclusao` TIMESTAMP NULL DEFAULT NULL,
  `favorecido` INT NOT NULL,
  `itnerario` VARCHAR(255) NOT NULL,
  `dtpartida` VARCHAR(255) NOT NULL,
  `dtchegada` VARCHAR(255) NOT NULL,
  `created_at` TIMESTAMP NULL DEFAULT NULL,
  `updated_at` TIMESTAMP NULL DEFAULT NULL,
  PRIMARY KEY (`id`, `favorecido`),
  CONSTRAINT `fk_favorecido_diaria`
    FOREIGN KEY (`id`)
    REFERENCES `siges`.`funcionarios` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `siges`.`failed_jobs`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `siges`.`failed_jobs` (
  `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` VARCHAR(255) NOT NULL,
  `connection` TEXT NOT NULL,
  `queue` TEXT NOT NULL,
  `payload` LONGTEXT NOT NULL,
  `exception` LONGTEXT NOT NULL,
  `failed_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  PRIMARY KEY (`id`),
  UNIQUE INDEX `failed_jobs_uuid_unique` (`uuid` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `siges`.`migrations`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `siges`.`migrations` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` VARCHAR(255) NOT NULL,
  `batch` INT(11) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 12
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `siges`.`password_resets`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `siges`.`password_resets` (
  `email` VARCHAR(255) NOT NULL,
  `token` VARCHAR(255) NOT NULL,
  `created_at` TIMESTAMP NULL DEFAULT NULL,
  INDEX `password_resets_email_index` (`email` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `siges`.`patrimonios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `siges`.`patrimonios` (
  `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `equipamento` INT NOT NULL,
  `rpnum` TIMESTAMP NULL DEFAULT NULL,
  `incorporacao` VARCHAR(255) NOT NULL,
  `estadodeconservacao` VARCHAR(255) NOT NULL,
  `txdepreciacao` DECIMAL NOT NULL,
  `created_at` TIMESTAMP NULL DEFAULT NULL,
  `updated_at` TIMESTAMP NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `siges`.`personal_access_tokens`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `siges`.`personal_access_tokens` (
  `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` VARCHAR(255) NOT NULL,
  `tokenable_id` BIGINT(20) UNSIGNED NOT NULL,
  `name` VARCHAR(255) NOT NULL,
  `token` VARCHAR(64) NOT NULL,
  `abilities` TEXT NULL DEFAULT NULL,
  `last_used_at` TIMESTAMP NULL DEFAULT NULL,
  `created_at` TIMESTAMP NULL DEFAULT NULL,
  `updated_at` TIMESTAMP NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `personal_access_tokens_token_unique` (`token` ASC) VISIBLE,
  INDEX `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type` ASC, `tokenable_id` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `siges`.`equipamentos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `siges`.`equipamentos` (
  `codequipamento` INT NOT NULL AUTO_INCREMENT,
  `nomeeq` VARCHAR(255) NULL,
  `fabricanteeq` VARCHAR(255) NULL,
  `serianumber` VARCHAR(45) NULL,
  `modelo` VARCHAR(255) NULL,
  `cores` VARCHAR(255) NULL,
  `valormercado` BLOB NULL,
  `tamanho` VARCHAR(255) NULL,
  `nacionalidade` VARCHAR(255) NULL,
  `dtfabricacao` DATE NULL,
  `categoriaproduto` VARCHAR(255) NULL,
  `patrimonios_id` BIGINT(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`codequipamento`),
  INDEX `fk_equipamentos_patrimonios_idx` (`patrimonios_id` ASC) VISIBLE,
  CONSTRAINT `fk_equipamentos_patrimonios`
    FOREIGN KEY (`patrimonios_id`)
    REFERENCES `siges`.`patrimonios` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

SHOW WARNINGS;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
