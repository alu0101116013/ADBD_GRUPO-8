USE `futbol`
DELIMITER $$
CREATE TRIGGER `recibe_subvencion` BEFORE INSERT ON CLUB_RECIBE_SUBVENCION FOR EACH ROW
BEGIN
-- Se verifica que el club cumpla con el tiempo mínimo invertido en actividades
  SET @horasDeActividades = (SELECT SUM(`Tiempo invertido (Horas)`) FROM ACTIVIDAD WHERE `Código actividad` IN (SELECT `Código actividad` 
                              FROM CLUB_REALIZA_ACTIVIDAD WHERE `Código club` = NEW.`Código club`));
  SET @horasNecesarias = (SELECT `Tiempo invertido necesario (Horas)` FROM SUBVENCION WHERE `Código subvención` = NEW.`Código subvención`);
  
  IF (@horasDeActividades < @horasNecesarias) THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Tiempo empleado en actividades insuficiente';
  ELSE
    IF (@horasDeActividades IS NULL) THEN
      SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Tiempo empleado en actividades insuficiente';
    END IF;
  END IF;

-- Se actualizan los presupuestos del club
  SET @presupuestoClub = (SELECT Presupuestos FROM CLUB WHERE `Código club` = NEW.`Código club`);
  SET @presupuestoClub = @presupuestoClub + (SELECT Importe FROM SUBVENCION WHERE `Código subvención` = NEW.`Código subvención`);

  UPDATE CLUB SET Presupuestos = @presupuestoClub WHERE `Código club` = NEW.`Código club`;
END $$
DELIMITER ;