--> f�r SQL 2014 und fr�her empfiehlt sich statt Wartungsplan das Script von Ola Hallengren zu verwenden
--hier werden Fragmentierungen ber�cksichtigt

-- > 30 % --> Rebuild
-- < 10 %       kein Defrag notwendig
-- 10 bis 30  ---> Reorg


/*

zu einer Wartung geh�rt auch das Aktualisieren von Statistiken.
Statistiken: SQL pr�ft  -vor Ausf�hrung von Abfragen - wieviele ZEilen zur�ckkommen.
Diese Anzahl wird aus dem Histogramm gebildet, dass der SQL Server automatisch erstellt.
Histogramm: Verteilung der DAten innerhalb einer Spalte (oder auch mehr Spalten)
Werden nicht bei jedem I U D aktualisiert und k�nnen somit falsch sein..

--Plan muss aber aufgrund der zu erwartenden Menge f�r SEEK oder SCAN entscheiden...


Je korrekteer diese sind desto exakter kann ein Ausf�hrungsplan eingesch�rtzt werden...


*/
