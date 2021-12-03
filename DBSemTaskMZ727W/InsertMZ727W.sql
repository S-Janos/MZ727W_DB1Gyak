begin
    INSERT INTO Kiado VALUES(1, 'PRMD Music', '03/01/2013', 'Svédország', 'Stockholm');
    INSERT INTO Kiado VALUES(2, 'Universal Music Group', '09/01/1934', 'Egyesült Államok', 'Santa Monica');
    INSERT INTO Kiado VALUES(3, 'Sony Music Entertainment', '03/01/1968', 'Japán', 'Tokió');
    INSERT INTO Kiado VALUES(4, 'Odyssey Music Network', '01/01/2014', 'Németország', 'Berlin');
end;

begin
    INSERT INTO Szerzo VALUES(1, 'Avicii', '05/09/2008');
    INSERT INTO Szerzo VALUES(2, 'supercell', '12/07/2007');
    INSERT INTO Szerzo VALUES(3, 'kz', '09/22/2007');
    INSERT INTO Szerzo VALUES(4, 'Apocalyptica', '01/01/1993');
end;

begin
    INSERT INTO Mufaj VALUES(1, 'dance');
    INSERT INTO Mufaj VALUES(2, 'folktronica');
    INSERT INTO Mufaj VALUES(3, 'soul');
    INSERT INTO Mufaj VALUES(4, 'pop');
    INSERT INTO Mufaj VALUES(5, 'house');
    INSERT INTO Mufaj VALUES(6, 'j-pop');
    INSERT INTO Mufaj VALUES(7, 'rock');
    INSERT INTO Mufaj VALUES(8, 'EDM');
    INSERT INTO Mufaj VALUES(9, 'metal');
    INSERT INTO Mufaj VALUES(10, 'symphonic');
end;

begin
    INSERT INTO Enekes VALUES(1, 'Aloe Blacc', 'férfi', '01/07/1979');
    INSERT INTO Enekes VALUES(2, 'Audra Mae', 'nő', '02/20/1984');
    INSERT INTO Enekes VALUES(3, 'Simon Aldred', 'férfi', '09/01/1975');
    INSERT INTO Enekes VALUES(4, 'Hatsune Miku', 'nő', '08/31/2007');
    INSERT INTO Enekes VALUES(5, 'Franky Perez', 'férfi', '02/24/1976');
end;

begin
    INSERT INTO Album VALUES(1, 'True', '09/13/2013', 1);
    INSERT INTO Album VALUES(2, 'Stories', '10/02/2015', 1);
    INSERT INTO Album VALUES(3, 'TIM', '06/06/2019', 2);
    INSERT INTO Album VALUES(4, 'supercell', '08/16/2008', null);
    INSERT INTO Album VALUES(5, 'こっち向いて Baby / Yellow', '07/14/2010', 3);
    INSERT INTO Album VALUES(6, 'Shadowmaker', '04/17/2015', 4);
end;

begin
    INSERT INTO Dal VALUES(1, 'Wake Me Up', TO_DSINTERVAL('0 00:04:07'), 1, 1);
    INSERT INTO Dal VALUES(2, 'Addicted to You', TO_DSINTERVAL('0 00:02:28'), 1, 1);
    INSERT INTO Dal VALUES(3, 'Waiting for Love', TO_DSINTERVAL('0 00:03:50'), 1, 2);
    INSERT INTO Dal VALUES(4, 'SOS', TO_DSINTERVAL('0 00:02:37'), 1, 3);
    INSERT INTO Dal VALUES(5, 'ワールドイズマイン', TO_DSINTERVAL('0 00:04:14'), 2, 4);
    INSERT INTO Dal VALUES(6, 'こっち向いて Baby', TO_DSINTERVAL('0 00:03:30'), 2, 5);
    INSERT INTO Dal VALUES(7, 'ODDS&ENDS', TO_DSINTERVAL('0 00:05:37'), 2, null);
    INSERT INTO Dal VALUES(8, 'Yellow', TO_DSINTERVAL('0 00:03:20'), 3, 5);
    INSERT INTO Dal VALUES(9, 'Shadowmaker', TO_DSINTERVAL('0 00:07:36'), 4, 6);
    INSERT INTO Dal VALUES(10, 'Sea Song (You Waded Out)', TO_DSINTERVAL('0 00:04:54'), 4, 6);
    INSERT INTO Dal VALUES(11, 'Till Death Do Us Part', TO_DSINTERVAL('0 00:07:51'), 4, 6);
end;

begin
    INSERT INTO Enek VALUES(1, 'angol', 1);
    INSERT INTO Enek VALUES(2, 'angol', 2);
    INSERT INTO Enek VALUES(3, 'angol', 3);
    INSERT INTO Enek VALUES(4, 'angol', 1);
    INSERT INTO Enek VALUES(5, 'japán', 4);
    INSERT INTO Enek VALUES(6, 'japán', 4);
    INSERT INTO Enek VALUES(7, 'japán', 4);
    INSERT INTO Enek VALUES(8, 'japán', 4);
    INSERT INTO Enek VALUES(9, 'angol', 5);
    INSERT INTO Enek VALUES(10, 'angol', 5);
end;

begin
    INSERT INTO Mufaj_Dal VALUES(1, 1);
    INSERT INTO Mufaj_Dal VALUES(2, 1);
    INSERT INTO Mufaj_Dal VALUES(3, 2);
    INSERT INTO Mufaj_Dal VALUES(2, 2);
    INSERT INTO Mufaj_Dal VALUES(4, 2);
    INSERT INTO Mufaj_Dal VALUES(4, 3);
    INSERT INTO Mufaj_Dal VALUES(5, 3);
    INSERT INTO Mufaj_Dal VALUES(8, 4);
    INSERT INTO Mufaj_Dal VALUES(6, 5);
    INSERT INTO Mufaj_Dal VALUES(7, 5);
    INSERT INTO Mufaj_Dal VALUES(6, 6);
    INSERT INTO Mufaj_Dal VALUES(7, 6);
    INSERT INTO Mufaj_Dal VALUES(6, 7);
    INSERT INTO Mufaj_Dal VALUES(7, 7);
    INSERT INTO Mufaj_Dal VALUES(6, 8);
    INSERT INTO Mufaj_Dal VALUES(8, 8);
    INSERT INTO Mufaj_Dal VALUES(1, 8);
    INSERT INTO Mufaj_Dal VALUES(9, 9);
    INSERT INTO Mufaj_Dal VALUES(10, 9);
    INSERT INTO Mufaj_Dal VALUES(9, 10);
    INSERT INTO Mufaj_Dal VALUES(10, 10);
    INSERT INTO Mufaj_Dal VALUES(9, 11);
    INSERT INTO Mufaj_Dal VALUES(10, 11);
end;