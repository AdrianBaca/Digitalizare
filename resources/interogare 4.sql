SELECT COUNT(per."Nume") 
FROM (public."PROGRAMARI" as pr INNER JOIN public."PACIENTI" as p ON pr."IdProgramare"=p."Programare") INNER JOIN public."PERSOANE" as per ON per."IdPersoana"=p."Persoana"
WHERE pr."Data"='12/11/2023'
GROUP BY per."Nume"