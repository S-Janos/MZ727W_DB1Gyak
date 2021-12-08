ALTER TABLE termekek
ADD szin VARCHAR(20);

DROP TABLE termekek;

DELETE FROM termekek
WHERE kategoria IS NULL;