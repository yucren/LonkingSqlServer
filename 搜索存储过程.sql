SELECT obj.Name �洢������, sc.TEXT �洢��������

FROM syscomments sc

INNER JOIN sysobjects obj ON sc.Id = obj.ID

WHERE sc.TEXT LIKE '192.168.50.41' 

select so.name,so.type from sys.syscomments sc left join 
sys.sysobjects so on sc.id =so.id  where so.type ='TR'