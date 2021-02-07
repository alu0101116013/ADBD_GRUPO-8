USE `futbol`
DELIMITER $$
CREATE TRIGGER `nuevo_equipo` BEFORE INSERT ON EQUIPO FOR EACH ROW
BEGIN
-- Se añade el presupuesto y el nº de trofeos del equipo a la cuenta del club
  SET @nuevoPalmaresClub = NEW.`Nº trofeos` + (SELECT `Palmarés` FROM CLUB WHERE `Código club` = NEW.`Código club`);
  SET @nuevoPresupuestoClub = NEW.Presupuesto + (SELECT Presupuestos FROM CLUB WHERE `Código club` = NEW.`Código club`);

  UPDATE CLUB SET Presupuestos = @nuevoPresupuestoClub, `Palmarés` = @nuevoPalmaresClub WHERE `Código club` = NEW.`Código club`;

END $$
DELIMITER ;