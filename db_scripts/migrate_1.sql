
CREATE TABLE IF NOT EXISTS band
(
    bandName varchar(50) PRIMARY KEY,
    creation YEAR,
    genre    varchar(50)
);

INSERT into band(bandName, creation, genre) values ("Crazy Duo", 2015, "rock"),
                                                   ("Luna", 2009, "classical"),
                                                   ("Mysterio", 2019, "pop");


#singer
ALTER TABLE singer RENAME TO musician;
ALTER TABLE musician change column singerName musicianName varchar(50);
ALTER TABLE musician add column role varchar(50),
    ADD COLUMN bandName varchar(50);

UPDATE musician
set role = 'vocals', bandName = 'Crazy Duo'
WHERE musicianName = 'Alina';
UPDATE musician
set role = 'guitar', bandName = 'Mysterio'
WHERE musicianName = 'Mysterio';
UPDATE musician
set role = 'percussion', bandName = 'Crazy Duo'
WHERE musicianName = 'Rainbow';
UPDATE musician
set role = 'piano', bandName = 'Luna'
WHERE musicianName = 'Luna';

#album
ALTER TABLE album
Drop FOREIGN KEY FK_A_singerName;

ALTER TABLE album
ADD CONSTRAINT FK_A_musicianName FOREIGN KEY (singerName) REFERENCES musician(musicianName);



