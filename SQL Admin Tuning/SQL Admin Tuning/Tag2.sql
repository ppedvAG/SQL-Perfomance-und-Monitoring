Tag2

/*

best practice 

CPU Kerne --> tempdb    (Anzahl der Datendateien - MAX 8)
CPU Kerne --> MAXDOP (Anzahl der Kerne pro Abfrage MAX 8)
				  --> pro DB einstellbar
				  -- DEV option (maxdop 2)
				  ABER: der MAXDOP gilt nur wenn....Kostenschwellwert (5)

				  Tipp: 50 OLTP  25 OLAP

				  --je mehr Kerne beteiligt sind, desto teurer

--Verteilung der DB Dateien 
--Trenne Log von Daten ..pro DB 
----

---I U D -->  RAM (Seiten) 
             -->  LOG


Tempdb 
		gleich große DB Daten-Dateien -T1117
		uniform extents

		Latch: Sperre auf Systemniveau

		TAB (id int identity) --Messdatenerfassung
		       GUID  uniqueidentifier
			   inMemory
			   Partitionierung

RAM
			MIN: 0 (bei mehr. Instanzen.. der Wert muss erreicht werden)
			MAX: empfehlung (Gesamter RAM - OS)   2GB--10GB

			--nur der Datenpuffer

--je mehr Seiten desto höher ist der CPU Aufwand und mehr RAM Aufwand

--Kompression (Row/Page):  40-60%
-----> weniger RAM, aber  mehr CPU Archiv



			   select newid()








*/


use Northwind


select * into o1 from orders

select * from o1 where freight < 1

select fdemo(sp) from Tab

Tabellenwert: 2012---> 1   2014 --> 100

scan seek