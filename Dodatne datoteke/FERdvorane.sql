/* table deletion */
DROP TABLE IF EXISTS dvorana;
DROP TABLE IF EXISTS zgrada;

/* table defintion */
CREATE TABLE zgrada
(
  oznZgrada VARCHAR(5) NOT NULL,
  PRIMARY KEY (oznZgrada)
);

CREATE TABLE dvorana
(
  oznDvorana VARCHAR(40) NOT NULL,
  oznZgrada VARCHAR(5) NOT NULL,
  kapacitet SMALLINT NOT NULL,
  brojStolova SMALLINT,
  brojStolica SMALLINT,
  imaKlimu BOOLEAN,
  imaPrirodnuSvjetlost BOOLEAN,
  imaUticnice BOOLEAN,
  dvoranaSOpremom BOOLEAN,
  imaRacunalo BOOLEAN,
  imaHDMIKabel BOOLEAN,
  imaMikrofon BOOLEAN,
  PRIMARY KEY (oznDvorana),
  FOREIGN KEY (oznZgrada) REFERENCES zgrada(oznZgrada)
);

/* data import */
 INSERT INTO zgrada (oznZgrada) VALUES ('A');
 INSERT INTO zgrada (oznZgrada) VALUES ('B');
 INSERT INTO zgrada (oznZgrada) VALUES ('C');
 INSERT INTO zgrada (oznZgrada) VALUES ('D');

 INSERT INTO dvorana (oznDvorana, oznZgrada, kapacitet, brojStolova, imaPrirodnuSvjetlost, dvoranaSOpremom, imaMikrofon) VALUES ('A101', 'A', 60, 31, TRUE, TRUE, FALSE);
 INSERT INTO dvorana (oznDvorana, oznZgrada, kapacitet, brojStolova, imaPrirodnuSvjetlost, dvoranaSOpremom, imaMikrofon) VALUES ('A102', 'A', 60, 31, TRUE, TRUE, FALSE);
 INSERT INTO dvorana (oznDvorana, oznZgrada, kapacitet, brojStolova, imaPrirodnuSvjetlost, imaMikrofon) VALUES ('A104', 'A', 30, 16, TRUE, FALSE);
 INSERT INTO dvorana (oznDvorana, oznZgrada, kapacitet, brojStolova, imaPrirodnuSvjetlost, imaMikrofon) VALUES ('A105', 'A', 24, 13, TRUE, FALSE);
 INSERT INTO dvorana (oznDvorana, oznZgrada, kapacitet, brojStolova, imaPrirodnuSvjetlost, imaMikrofon) VALUES ('A109', 'A', 40, 21, TRUE, FALSE);
 INSERT INTO dvorana (oznDvorana, oznZgrada, kapacitet, brojStolova, imaPrirodnuSvjetlost, imaMikrofon) VALUES ('A110', 'A', 40, 21, TRUE, FALSE);
 INSERT INTO dvorana (oznDvorana, oznZgrada, kapacitet, brojStolova, imaPrirodnuSvjetlost, imaMikrofon) VALUES ('A111', 'A', 60, 31, TRUE, FALSE);
 INSERT INTO dvorana (oznDvorana, oznZgrada, kapacitet, brojStolova, imaPrirodnuSvjetlost, imaMikrofon) VALUES ('A201', 'A', 60, 31, TRUE, FALSE);
 INSERT INTO dvorana (oznDvorana, oznZgrada, kapacitet, brojStolova, imaPrirodnuSvjetlost, imaMikrofon) VALUES ('A202', 'A', 60, 31, TRUE, FALSE);
 INSERT INTO dvorana (oznDvorana, oznZgrada, kapacitet, brojStolova, imaPrirodnuSvjetlost, imaMikrofon) VALUES ('A204', 'A', 30, 16, TRUE, FALSE);
 INSERT INTO dvorana (oznDvorana, oznZgrada, kapacitet, brojStolova, imaPrirodnuSvjetlost, imaMikrofon) VALUES ('A205', 'A', 30, 16, TRUE, FALSE);
 INSERT INTO dvorana (oznDvorana, oznZgrada, kapacitet, brojStolova, imaPrirodnuSvjetlost, imaMikrofon) VALUES ('A209', 'A', 50, 26, TRUE, FALSE);
 INSERT INTO dvorana (oznDvorana, oznZgrada, kapacitet, brojStolova, imaPrirodnuSvjetlost, imaMikrofon) VALUES ('A210', 'A', 60, 31, TRUE, FALSE);
 INSERT INTO dvorana (oznDvorana, oznZgrada, kapacitet, brojStolova, imaPrirodnuSvjetlost, dvoranaSOpremom, imaRacunalo, imaHDMIKabel, imaMikrofon) VALUES ('A211', 'A', 60, 31, TRUE, FALSE, FALSE, TRUE, FALSE);
 INSERT INTO dvorana (oznDvorana, oznZgrada, kapacitet, brojStolova, imaKlimu, imaPrirodnuSvjetlost, imaUticnice, imaRacunalo, imaHDMIKabel, imaMikrofon) VALUES ('A301', 'A', 16, 9, TRUE, TRUE, TRUE, TRUE, FALSE, FALSE);
 INSERT INTO dvorana (oznDvorana, oznZgrada, kapacitet, brojStolova, imaPrirodnuSvjetlost, imaUticnice, imaRacunalo, imaHDMIKabel, imaMikrofon) VALUES ('A302', 'A', 16, 9, TRUE, TRUE, TRUE, FALSE, FALSE);
 INSERT INTO dvorana (oznDvorana, oznZgrada, kapacitet, brojStolova, imaPrirodnuSvjetlost, dvoranaSOpremom, imaMikrofon) VALUES ('A309', 'A', 16, 9, TRUE, TRUE, FALSE);
 INSERT INTO dvorana (oznDvorana, oznZgrada, kapacitet, brojStolova, imaPrirodnuSvjetlost, dvoranaSOpremom, imaMikrofon) VALUES ('A310', 'A', 16, 9, TRUE, TRUE, FALSE);
 INSERT INTO dvorana (oznDvorana, oznZgrada, kapacitet, brojStolova, imaPrirodnuSvjetlost, imaMikrofon) VALUES ('A311', 'A', 16, 9, TRUE, FALSE);
 INSERT INTO dvorana (oznDvorana, oznZgrada, kapacitet, brojStolova, imaPrirodnuSvjetlost, imaMikrofon) VALUES ('A312', 'A', 16, 9, TRUE, FALSE);
 INSERT INTO dvorana (oznDvorana, oznZgrada, kapacitet, imaPrirodnuSvjetlost, imaMikrofon) VALUES ('B1', 'B', 100, FALSE, TRUE);
 INSERT INTO dvorana (oznDvorana, oznZgrada, kapacitet, imaPrirodnuSvjetlost, imaMikrofon) VALUES ('B2', 'B', 50, FALSE, TRUE);
 INSERT INTO dvorana (oznDvorana, oznZgrada, kapacitet, imaPrirodnuSvjetlost, imaMikrofon) VALUES ('B3', 'B', 50, FALSE, TRUE);
 INSERT INTO dvorana (oznDvorana, oznZgrada, kapacitet, imaPrirodnuSvjetlost, imaMikrofon) VALUES ('B4', 'B', 100, FALSE, TRUE);
 INSERT INTO dvorana (oznDvorana, oznZgrada, kapacitet, imaPrirodnuSvjetlost, imaMikrofon) VALUES ('B5', 'B', 40, FALSE, TRUE);
 INSERT INTO dvorana (oznDvorana, oznZgrada, kapacitet) VALUES ('C603', 'C', 36);
 INSERT INTO dvorana (oznDvorana, oznZgrada, kapacitet) VALUES ('D033', 'D', 35);
 INSERT INTO dvorana (oznDvorana, oznZgrada, kapacitet, imaPrirodnuSvjetlost, imaMikrofon) VALUES ('D1', 'D', 100, FALSE, TRUE);
 INSERT INTO dvorana (oznDvorana, oznZgrada, kapacitet, imaPrirodnuSvjetlost) VALUES ('D152', 'D', 50, TRUE);
 INSERT INTO dvorana (oznDvorana, oznZgrada, kapacitet, imaPrirodnuSvjetlost) VALUES ('D153', 'D', 25, TRUE);
 INSERT INTO dvorana (oznDvorana, oznZgrada, kapacitet, imaPrirodnuSvjetlost) VALUES ('D158', 'D', 25, TRUE);
 INSERT INTO dvorana (oznDvorana, oznZgrada, kapacitet, imaPrirodnuSvjetlost) VALUES ('D159', 'D', 20, TRUE);
 INSERT INTO dvorana (oznDvorana, oznZgrada, kapacitet, imaPrirodnuSvjetlost) VALUES ('D160', 'D', 60, TRUE);
 INSERT INTO dvorana (oznDvorana, oznZgrada, kapacitet, imaPrirodnuSvjetlost, imaMikrofon) VALUES ('D2', 'D', 100, FALSE, TRUE);
 INSERT INTO dvorana (oznDvorana, oznZgrada, kapacitet, imaPrirodnuSvjetlost) VALUES ('D251', 'D', 20, TRUE);
 INSERT INTO dvorana (oznDvorana, oznZgrada, kapacitet, imaPrirodnuSvjetlost) VALUES ('D258', 'D', 20, TRUE);
 INSERT INTO dvorana (oznDvorana, oznZgrada, kapacitet, imaPrirodnuSvjetlost) VALUES ('D259', 'D', 18, TRUE);
 INSERT INTO dvorana (oznDvorana, oznZgrada, kapacitet, imaPrirodnuSvjetlost) VALUES ('D260', 'D', 64, TRUE);
 INSERT INTO dvorana (oznDvorana, oznZgrada, kapacitet, imaPrirodnuSvjetlost) VALUES ('D262', 'D', 24, TRUE);
 INSERT INTO dvorana (oznDvorana, oznZgrada, kapacitet, imaPrirodnuSvjetlost) VALUES ('D263', 'D', 16, TRUE);
 INSERT INTO dvorana (oznDvorana, oznZgrada, kapacitet, imaPrirodnuSvjetlost) VALUES ('D269', 'D', 24, TRUE);
 INSERT INTO dvorana (oznDvorana, oznZgrada, kapacitet, imaPrirodnuSvjetlost) VALUES ('D270', 'D', 24, TRUE);
 INSERT INTO dvorana (oznDvorana, oznZgrada, kapacitet, imaPrirodnuSvjetlost) VALUES ('D272', 'D', 64, TRUE);
 INSERT INTO dvorana (oznDvorana, oznZgrada, kapacitet, imaPrirodnuSvjetlost) VALUES ('D273', 'D', 60, TRUE);
 INSERT INTO dvorana (oznDvorana, oznZgrada, kapacitet, imaPrirodnuSvjetlost) VALUES ('D346', 'D', 55, TRUE);
 INSERT INTO dvorana (oznDvorana, oznZgrada, kapacitet, imaPrirodnuSvjetlost) VALUES ('D347', 'D', 25, TRUE);
 INSERT INTO dvorana (oznDvorana, oznZgrada, kapacitet, imaPrirodnuSvjetlost, imaMikrofon) VALUES ('Siva vijećnica', 'D', 100, TRUE, TRUE);
 INSERT INTO dvorana (oznDvorana, oznZgrada, kapacitet, imaPrirodnuSvjetlost, imaMikrofon) VALUES ('Bijela vijećnica', 'D', 20, TRUE, FALSE);
 INSERT INTO dvorana (oznDvorana, oznZgrada, kapacitet, imaPrirodnuSvjetlost, imaMikrofon) VALUES ('Crna vijećnica', 'D', 50, TRUE, FALSE);