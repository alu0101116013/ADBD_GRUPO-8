USE `futbol`
DELIMITER $$
CREATE PROCEDURE `actualizar_presupuestos` (IN cambioPresupuesto FLOAT, IN codigoClub VARCHAR(45))
BEGIN
-- Procedimiento creado para actualizar los presupuestos del club indicado
  SET @presupuestoClub = (SELECT Presupuestos FROM CLUB WHERE `Código club` = codigoClub);

  SET @presupuestoClub = @presupuestoClub + cambioPresupuesto;

  UPDATE CLUB SET Presupuestos = @presupuestoClub WHERE `Código club` = codigoClub;
END $$
DELIMITER ;