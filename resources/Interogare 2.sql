SELECT per."Nume", COUNT(an."Pret") 
FROM (((public."ANALIZE" as an INNER JOIN public."LISTE_ANALIZE" as l ON an."IdAnaliza"=l."Analiza") INNER JOIN public."CONSULTATII" as c ON l."Consultatie"=c."IdConsultatie") INNER JOIN public."PACIENTI" as p on c."Pacient"=p."IdPacient") INNER JOIN "PERSOANE" as per on per."IdPersoana"=p."Persoana" 
GROUP BY per."Nume"