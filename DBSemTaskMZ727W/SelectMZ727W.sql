1.: Albumon nem szereplő dalok adatainak listázása:
SELECT * FROM Dal
    WHERE albumid IS NULL

2.: Függetlenül kiadott albumok dalainak és szerzőinek listázása:
SELECT Dal.cim, Album.cim FROM Dal
    JOIN Album USING(albumid)
    WHERE kiadoid IS NULL

3.: 2010 eleje és 2015 vége között kiadott albumok, és az azokat kiadó lemezkiadók listázása:
SELECT DISTINCT Album.cim, Szerzo.nev, Kiado.nev, Album.kiadas FROM Album 
    JOIN Dal USING(albumid)
    JOIN Szerzo USING(szerzoid)
    JOIN Kiado USING(kiadoid)
    WHERE kiadas BETWEEN '01/01/2010' AND '12/31/2015'

4.: Lemezkiadók csökkenő sorrendbe rendezése kiadott albumok száma alapján:
SELECT nev, COUNT(*) AS albumSzam
    FROM Kiado
    JOIN Album USING(kiadoid)
    GROUP BY nev
    ORDER BY albumSzam DESC

5.: Különböző nyelveken különböző műfajú dalok száma:
SELECT nyelv, megnevezes, COUNT(*) AS mennyiseg FROM Mufaj
        JOIN Mufaj_Dal USING(mufajid)
        JOIN Dal USING(dalid)
        JOIN Enek USING(dalid)
        GROUP BY nyelv, megnevezes
        ORDER BY mennyiseg DESC

6.: Három és négy perc közötti hosszúságú dalok szerzőinek és címének kiválasztása:
SELECT nev, cim FROM Dal JOIN Szerzo USING(szerzoid)
    WHERE hossz BETWEEN INTERVAL '0 00:03:00' DAY TO SECOND
    AND INTERVAL '0 00:05:00' DAY TO SECOND

7.: Albumok csökkenő sorba rendezése a dalok összesített hossza szerint:
SELECT Album.cim,
    NUMTODSINTERVAL(SUM(EXTRACT(MINUTE FROM hossz)), 'MINUTE') +
    NUMTODSINTERVAL(SUM(EXTRACT(SECOND FROM hossz)), 'SECOND')
    AS osszHossz
    FROM Album
    JOIN Dal USING(albumid)
    GROUP BY Album.cim
    ORDER BY osszHossz DESC

8.: Énekesek csökkenő sorba rendezése dalok száma szerint:
SELECT nev, COUNT(*) AS dalszam FROM Enekes
    JOIN Enek USING(enekesid)
    JOIN Dal USING(dalid)
    GROUP BY nev
    ORDER BY dalszam DESC

9.: Avicii azon dalainak kiválasztása, amiben női vokál van:
SELECT cim FROM (
    SELECT Dal.cim, nem FROM Dal
    JOIN Album USING(albumid)
    JOIN Szerzo USING(szerzoid)
    JOIN Enek USING(dalid)
    JOIN Enekes USING(enekesid)
    WHERE Szerzo.nev LIKE 'Avicii'
) WHERE nem LIKE 'nő'

10.: Azon albumok kiválasztása, amelyekben kettő vagy több szerző zenéi szerepelnek:
SELECT Album.cim, COUNT(DISTINCT nev) AS kozremukodok FROM Album 
    JOIN Dal USING(albumid)
    JOIN Szerzo USING(szerzoid)
    GROUP BY Album.cim
    HAVING COUNT(DISTINCT nev) >= 2