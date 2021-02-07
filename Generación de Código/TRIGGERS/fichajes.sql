USE `futbol`
DELIMITER $$
CREATE TRIGGER `fichajes` BEFORE INSERT ON JUGADORES FOR EACH ROW
BEGIN

  SET @presupuestoEquipo = (SELECT Presupuesto FROM EQUIPO WHERE `Código equipo` = NEW.`Código equipo`);
-- Se comprueba que se tenga presupuesto suficiente para fichar al jugador
  IF (@presupuestoEquipo < NEW.`Valor de mercado`) THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'No se dispone de presupuesto suficiente para fichar a este jugador';
  END IF;
  
-- Se comprueba que el nuevo jugador no tenga un dorsal repetido
  IF (NEW.Dorsal IN (SELECT Dorsal FROM JUGADORES WHERE `Código equipo` = NEW.`Código equipo`)) THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Ya existe un jugador con ese dorsal en el equipo';
  END IF;

--  Se resta el valor de mercado del jugador de los presupuestos del equipo y del club
  SET @presupuestoEquipo = (@presupuestoEquipo - NEW.`Valor de mercado`);

  UPDATE EQUIPO SET Presupuesto = @presupuestoEquipo WHERE `Código equipo` = NEW.`Código equipo`;

END $$
DELIMITER ;