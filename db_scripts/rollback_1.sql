ALTER TABLE musician DROP COLUMN role;
ALTER TABLE musician DROP COLUMN bandName;
ALTER TABLE musician RENAME TO singer;
ALTER TABLE singer CHANGE musicianName singerName varchar(50);
Drop TABLE IF EXISTS band;
ALTER TABLE album DROP FOREIGN KEY FK_A_musicianName;
#ALTER TABLE album DROP FOREIGN KEY FK_A_labelName;
Alter TABLE album
ADD CONSTRAINT FK_A_singerName FOREIGN KEY (singerName) REFERENCES singer(singerName);
#ALTER TABLE album
#ADD CONSTRAINT FK_A_labelName FOREIGN KEY (labelName) REFERENCES label(labelName);



