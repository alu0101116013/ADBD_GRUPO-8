USE `futbol`
DELIMITER $$
CREATE TRIGGER `participa_competicion` BEFORE INSERT ON EQUIPO_PARTICIPA_COMPETICION FOR EACH ROW
BEGIN
-- Se comprueba que el equipo juegue una competición que corresponda con su deporte
  SET @deporteCompeticion = (SELECT Deporte FROM COMPETICION WHERE `Código competición` = NEW.`Código competición`);
  SET @deporteEquipo = (SELECT `Tipo deporte` FROM EQUIPO WHERE `Código equipo` = NEW.`Código equipo`);

  IF (@deporteCompeticion != @deporteEquipo) THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El deporte de esta competición no corresponde con el del equipo';
  END IF;

-- Se comprueba que el equipo cuente con el mínimo número de jugadores necesario
  SET @jugadoresEquipo = (SELECT `Nº jugadores` FROM EQUIPO WHERE `Código equipo` = NEW.`Código equipo`);

  IF (@deporteCompeticion = 'Futbol') THEN 
    IF (@jugadoresEquipo < '14') THEN
      SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'No se cumple el mínimo de jugadores para participar en la competición';
    END IF;
  ELSE 
    IF (@jugadoresEquipo < '8') THEN
      SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'No se cumple el mínimo de jugadores para participar en la competición';
    END IF;
  END IF;
END $$
DELIMITER ;