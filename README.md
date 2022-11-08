
# FER-OR-Labosi

## Opis
Repozitorij napravljen u svrhu laboratorijskih vježbi kolegija Otvoreno računarstvu na preddiplomskom studiju u sklopu programa FER3 na Fakultetu elektrotehnike i računarstva Sveučilišta u Zagrebu.

## Licenca - CC0 1.0 Universal
The person who associated a work with this deed has dedicated the work to the public domain by waiving all of his or her rights to the work worldwide under copyright law, including all related and neighboring rights, to the extent allowed by law.

You can copy, modify, distribute and perform the work, even for commercial purposes, all without asking permission.

## Autor - Jakov Jakovac

## Verzija skupa podataka - 1.0

## Jezik podataka - hrvatski

## Format podataka - JSON i CSV

## Datum izdavanja - 02.11.2022.

## Nazivi i opisi atributa

### Zgrada
- oznZgrada - *Jedinstvena oznaka zgrade kojoj dvorana pripada.*

### Dvorana
- oznZgrada - *Jedinstvena oznaka zgrade kojoj dvorana pripada.*
- oznDvorana - *Jedinstvena oznaka dvorane (child).*
- kapacitet - *Maksimalan kapacitet osoba u dvorani.*
- brojStolova - *Broj stolova u dvorani.*
- brojStolica - *Broj stolica u dvorani.*
- imaKlimu - *U dvorani postoji funkcionalan i dostupan klima uređaj.*
- imaPrirodnuSvjetlost - *Dvorana ima prozore i pristup prirodnog svjetlosti.*
- imaUticnice - *Dvorana sadrži razvodne kutije i utičnice po zidovima dvorane.* 
- dvoranaSOpremom - *Oprema može biti računala ili druga laboratorijska oprema.*
- imaRacunalo - *Dvorana sadrži fakultetsko računalo koje se može koristiti.*
- imaHDMIKabel - *Dvorana sadrži dostupan HDMI kabel pomoću kojeg se može povezati vlastito računalo na projektor.*
- imaMikrofon - *Dvorana sadrži ugrađen mikrofon i razglas.*

### Naredbe za izvoz podataka iz baze u CSV i JSON formatima
cd "C:/Program Files/PostgreSQL/14/bin"

psql -U postgres -d FERdvorane -c "SET client_encoding TO 'UTF8'; COPY (SELECT * FROM zgrada NATURAL JOIN dvorana) TO 'C:\Users\Public\Documents\OR - Skripta za CSV i JSON/dvorane.csv' DELIMITER ',' CSV HEADER;"

psql -U postgres -d FERdvorane -c "SET client_encoding TO 'UTF8'; copy (SELECT array_to_json(array_agg(row_to_json(t)))FROM (SELECT *,(SELECT array_to_json(array_agg(row_to_json(d))) FROM (SELECT oznDvorana, kapacitet, brojStolova, brojStolica, imaKlimu, imaPrirodnuSvjetlost, imaUticnice, dvoranaSOpremom, imaRacunalo, imaHDMIKabel, imaMikrofon FROM dvorana WHERE oznZgrada=zgrada.oznZgrada ORDER BY oznZgrada) d) AS dvoraneUZgradi FROM zgrada) t) TO 'C:\Users\Public\Documents\OR - Skripta za CSV i JSON\dvorane.json'

## Napomena
Preporučam kopirati JSON u https://codebeautify.org/jsonviewer i stisnuti *Beautify* da se vidi cijela forma.
