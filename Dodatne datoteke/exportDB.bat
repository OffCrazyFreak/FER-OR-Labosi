cd "C:/Program Files/PostgreSQL/14/bin" || psql -U postgres -d FERdvorane -c "SET client_encoding TO 'UTF8'; COPY dvorana TO 'C:/Users/Public/Documents/dvorane.csv' DELIMITER ',' CSV HEADER;"
PAUSE

psql -U postgres -d FERdvorane -c "SET client_encoding TO 'UTF8'; SELECT json_agg(dvorana)::jsonb FROM dvorana;" -o "C:/Users/Public/Documents/dvorane.json"
more +2 "C:/Users/Public/Documents/dvorane_db.json" > "C:/Users/Public/Documents/dvorane.json"
del "C:/Users/Public/Documents/dvorane_db.json"