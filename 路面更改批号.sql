use db_u9v20_Data
go
--select  *   from  Lot_LotMaster
--where  LotCode='>LSH050NCKJA807894<'--批号 
select ItemCode, *   from  Lot_LotMaster
where  LotCode='>LSH0855NCJAB11895<'
 and DataOwnerOrg =1004003217021875   --第一步






select * from #lott

 select *  into #lott  from  Lot_LotMaster
where  LotCode='>LSH0855NCJAB11895<'
 and DataOwnerOrg =1004003217021875   --第一步
  --第二步


  go
begin transaction
delete  from  Lot_LotMaster where id in (1004807138465975)  --第三步步

commit

go

begin transaction
insert into  Lot_LotMaster select * from #lott    --第四步


commit




--delete from  Lot_LotMaster where id =1004712046948955

--select * from  Lot_LotMaster where id =1004803266577959






--select * into #lott from Lot_LotMaster where id =1004712046948955





select    *   from   PM_Receivement --收货单
where  DocNo='00RCZ201801331'


select  InvLot ,DocLineNo,RcvLot ,*   from  PM_RcvLine --收货单行
where  Receivement='1004803296565839' 




update  PM_RcvLine
set InvLot=1004804247038780 --将库存批号更改为手工创建的Lot_LotMasterID号
where  Receivement='1004803296565839'
AND ID='1004803296565840'
AND InvLot=1004803296565873


select * from Base_Organization_Trl


drop table  Resultsyu


select * from Resultsyu









select * from sys.sysprocesses where open_tran>0

kill 200

