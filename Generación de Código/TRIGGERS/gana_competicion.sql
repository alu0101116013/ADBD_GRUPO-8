USE `futbol`
DELIMITER $$
CREATE TRIGGER `ganador_competicion` BEFORE INSERT ON EQUIPO_GANA_COMPETICION FOR EACH ROW
BEGIN
-- Se comprueba la restricción de que el ganador de una competición deba haber participado en ella
  IF NOT EXISTS (SELECT * FROM EQUIPO_PARTICIPA_COMPETICION WHERE `Código equipo` = NEW.`Código equipo` AND 
                      `Año disputado` = NEW.`Año disputado` AND `Código competición` = NEW.`Código competición`) THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'No puede ganar una competición un equipo que no haya participado en ella';
  END IF;

-- Se actualiza el palmarés del equipo y del club

  SET @trofeosEquipo = (SELECT `Nº trofeos` FROM EQUIPO WHERE `Código equipo` = NEW.`Código equipo`);
  SET @trofeosEquipo = @trofeosEquipo + 1;

  UPDATE EQUIPO SET `Nº trofeos`= @trofeosEquipo WHERE `Código equipo` = NEW.`Código equipo`;

  SET @trofeosClub = (SELECT SUM(`Nº trofeos`) FROM EQUIPO WHERE `Código club` = (SELECT `Código club` 
                                                                                FROM EQUIPO WHERE `Código equipo` = NEW.`Código equipo`));

  UPDATE CLUB SET `Palmarés` = @trofeosClub WHERE `Código club` = (SELECT `Código club` FROM EQUIPO WHERE `Código equipo` = NEW.`Código equipo`);

-- Se actualizan los presupuestos del equipo

  SET @presupuestoEquipo = (SELECT Presupuesto FROM EQUIPO WHERE `Código equipo` = NEW.`Código equipo`);
  SET @presupuestoEquipo = @presupuestoEquipo + (SELECT `Bonus económico` FROM COMPETICION WHERE `Código competición` = NEW.`Código competición`);

  UPDATE EQUIPO SET Presupuesto = @presupuestoEquipo WHERE `Código equipo` = NEW.`Código equipo`;

END $$
DELIMITER ;