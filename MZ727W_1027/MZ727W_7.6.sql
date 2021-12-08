BEGIN
    INSERT INTO termekek VALUES(1, 'lapát', 2000, 'K1');
    INSERT INTO termekek VALUES(2, 'seprű', 4000, 'K1');
    INSERT INTO termekek VALUES(3, 'mosogató gél', 1500, 'K2');
    INSERT INTO termekek VALUES(4, 'szappan', 1000, 'K2');
    INSERT INTO termekek VALUES(5, 'pohár', 2400, 'K3');
END;

DELETE FROM termekek
WHERE ear < 2000;

UPDATE termekek
SET ear = (ear / 100) * 90 
WHERE kategoria = 'K1';