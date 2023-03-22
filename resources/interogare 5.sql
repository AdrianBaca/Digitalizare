SELECT per."Nume"
FROM (public."PROGRAMARI" as pr INNER JOIN public."PACIENTI" as p ON pr."IdProgramare"=p."Programare") INNER JOIN public."PERSOANE" as per ON per."IdPersoana"=p."Persoana"
WHERE pr."Ora"!='08:00:00'
GROUP BY per."Nume"