
--Wie häufig und in welcher Art werden IX verwendet
--IndexID 0 = HEAP
-- 1 = GR IX
-- > 1 = N GR IX
--siehe auch  10a
select * from sys.dm_db_index_usage_stats where database_id = 5

--Brent Ozar.. siehe Z_Nützliche URLs
sp_blitzIndex


--Worauf muss SQL Server warten
select * from sys.dm_os_wait_stats
--|suspended 					runnable
--|-----------------------|----------| 100ms RUNNING
--											signaltime

--Suspended : wartet auf Ressource
--RUNNABLE: Wartet auf CPU 

--dbcc showcontig ist depricated... das ist hier ist genauer...!
select * from sys.dm_db_index_physical_Stats(
			db_id(), object_id('kundeumsatz'), NULL, NULL, 'detailed'
																			)


