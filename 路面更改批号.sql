use db_u9v20_Data
go
--select  *   from  Lot_LotMaster
--where  LotCode='>LSH050NCKJA807894<'--���� 
select ItemCode, *   from  Lot_LotMaster
where  LotCode='>LSH0855NCJAB11895<'
 and DataOwnerOrg =1004003217021875   --��һ��






select * from #lott

 select *  into #lott  from  Lot_LotMaster
where  LotCode='>LSH0855NCJAB11895<'
 and DataOwnerOrg =1004003217021875   --��һ��
  --�ڶ���


  go
begin transaction
delete  from  Lot_LotMaster where id in (1004807138465975)  --��������

commit

go

begin transaction
insert into  Lot_LotMaster select * from #lott    --���Ĳ�


commit




--delete from  Lot_LotMaster where id =1004712046948955

--select * from  Lot_LotMaster where id =1004803266577959






--select * into #lott from Lot_LotMaster where id =1004712046948955





select    *   from   PM_Receivement --�ջ���
where  DocNo='00RCZ201801331'


select  InvLot ,DocLineNo,RcvLot ,*   from  PM_RcvLine --�ջ�����
where  Receivement='1004803296565839' 




update  PM_RcvLine
set InvLot=1004804247038780 --��������Ÿ���Ϊ�ֹ�������Lot_LotMasterID��
where  Receivement='1004803296565839'
AND ID='1004803296565840'
AND InvLot=1004803296565873


select * from Base_Organization_Trl


drop table  Resultsyu


select * from Resultsyu









select * from sys.sysprocesses where open_tran>0

kill 200

