cd "C:/Program Files/PostgreSQL/14/bin"

psql -U postgres -d FERdvorane -c "SET client_encoding TO 'UTF8'; COPY (SELECT * FROM zgrada NATURAL JOIN dvorana) TO 'C:\Users\Public\Documents\OR - Skripta za CSV i JSON/FERdvorane.csv' DELIMITER ',' CSV HEADER;"

psql -U postgres -d FERdvorane -c "SET client_encoding TO 'UTF8'; copy (SELECT array_to_json(array_agg(row_to_json(t)))FROM (SELECT *,(SELECT array_to_json(array_agg(row_to_json(d))) FROM (SELECT oznDvorana, kapacitet, brojStolova, brojStolica, imaKlimu, imaPrirodnuSvjetlost, imaUticnice, dvoranaSOpremom, imaRacunalo, imaHDMIKabel, imaMikrofon FROM dvorana WHERE oznZgrada=zgrada.oznZgrada ORDER BY oznZgrada) d) AS dvoraneUZgradi FROM zgrada) t) TO 'C:\Users\Public\Documents\OR - Skripta za CSV i JSON\FERdvorane.json'