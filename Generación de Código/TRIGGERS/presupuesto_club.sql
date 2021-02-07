USE `futbol`
DELIMITER $$
CREATE TRIGGER `presupuesto_club` AFTER UPDATE ON EQUIPO FOR EACH ROW
BEGIN
-- Se actualizan los presupuestos del club en función de los presupuestos de sus equipos

  SET @diferenciaPresupuesto = (NEW.Presupuesto - OLD.Presupuesto);

  CALL actualizar_presupuestos(@diferenciaPresupuesto, NEW.`Código club`);
END $$
DELIMITER ;