cd "C:\Program Files\PostgreSQL\14\bin"

psql -U postgres -d FERdvorane -c "SET client_encoding TO 'UTF8'; COPY dvorana TO 'D:/dvorane.csv' DELIMITER ',' CSV HEADER;"

psql -U postgres -d FERdvorane -c "SET client_encoding TO 'UTF8'; SELECT json_agg(dvorana)::jsonb FROM dvorana;" -o "D:/dvorane_db.json"
more +2 "D:/dvorane_db.json" > "D:/dvorane.json"
del "D:/dvorane_db.json"