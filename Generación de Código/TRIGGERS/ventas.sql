USE `futbol`
DELIMITER $$
CREATE TRIGGER `ventas` BEFORE DELETE ON JUGADORES FOR EACH ROW
BEGIN

  SET @presupuestoEquipo = (SELECT Presupuesto FROM EQUIPO WHERE `Código equipo` = OLD.`Código equipo`);
  
--  Se suma el valor de mercado del jugador de los presupuestos del equipo y del club
  SET @presupuestoEquipo = (@presupuestoEquipo + OLD.`Valor de mercado`);

  UPDATE EQUIPO SET Presupuesto = @presupuestoEquipo WHERE `Código equipo` = OLD.`Código equipo`;
END $$
DELIMITER ;