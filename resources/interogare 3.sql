SELECT per."Nume", SUM(an."Pret") 
FROM (((public."ANALIZE" as an RIGHT OUTER JOIN public."LISTE_ANALIZE" as l ON an."IdAnaliza"=l."Analiza") RIGHT OUTER JOIN public."CONSULTATII" as c ON l."Consultatie"=c."IdConsultatie") LEFT OUTER JOIN public."PACIENTI" as p on c."Pacient"=p."IdPacient") RIGHT OUTER JOIN "PERSOANE" as per on per."IdPersoana"=p."Persoana" 
GROUP BY per."Nume"