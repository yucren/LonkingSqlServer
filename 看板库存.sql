/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [fInterID]
      ,[fExecKanbanID]
      ,[fExecKanbanNo]
      ,[fBillNo]
      ,[fConfigID]
      ,[fProTecCode]
      ,[fProTecName]
      ,[fOrders]
      ,[fStatus]
      ,[fCreatedOn]
      ,[fCreatedby]
      ,[fMemo]
      ,[fBustype]
      ,[fproID]
      ,[fProTecID]
  FROM [LonKing_MES_JX].[dbo].[LKM_Kanban_Scan] where fBillNo like 'L00019%'

  select * from lkm_Materials where fItemCode ='30811100388'
  select a.fInterID,fConfigID,fProTecID,fCode,fName from LKM_MCCPTEntry a left join lkm_CommonBill b on a.fProTecID=b.fInterID  where a.fProTecID != 56 and  fConfigID=32 order by fOrders asc
  select * from lkm_Materials where fItemID =72309
  select * from lkm_CommonBill where fInterID =56

  select * from lkm_blank_inventory where fitemid =252830

  select * from vw_lines where ftype =1 and  fitemcode ='30873100038' --1代表生产看板,0代表领料看板

  select * from vw_ExecKB_Detail_List
  select * from LKM_MCCItemEntry where fItemCode ='30873100038'
  select * from LKM_MCCPTEntry
select lmentry.fProTecID,lc.fName, lke.fConfigID,inv.fproid, inv.finterid,inv.flineid, master.fItemCode,master.fItemName,master.fModel,cb.fName,sum(inv.fcount) as fcount from 
lkm_blank_inventory inv 
 inner join lkm_Materials master on inv.fitemid =master.fInterID inner  join lkm_CommonBill cb  on inv.fproid =cb.fInterID
 --inner join  vw_lines vl on master.fItemCode =vl.fItemCode 
 inner join LKM_MCCItemEntry lke on lke.fItemID =master.fItemID
 left join LKM_MCCPTEntry lmentry on lmentry.fConfigID =lke.fConfigID
 inner join lkm_CommonBill lc on lc.fInterID =lmentry.fProTecID
  where master.fInterID = 253239 and inv.flineid =lke.fConfigID
  group by lmentry.fProTecID,lc.fName,lmentry.fConfigID, lke.fConfigID,inv.fproid, inv.finterid,inv.flineid, master.fItemCode,master.fItemName,master.fModel,cb.fName 






select * from LKM_MCCPTEntry 


select lc.fInterID, inv.finterid, lkexek.fbillno,master.fItemCode,master.fItemName,master.fModel,lmentry.fProTecID,
0 as bustype,
lc.fName, lke.fConfigID,inv.fcount from lkm_exec_kanban_entry lkexek inner join 
 lkm_kanban lkanban on lkexek.fbasic_billno =lkanban.fbillno
inner join lkm_Materials master on lkanban.fitemid =master.fInterID
inner join LKM_MCCItemEntry lke on master.fItemID =lke.fitemid 
inner join LKM_MCCPTEntry lmentry on lmentry.fConfigID =lke.fConfigID
inner join lkm_CommonBill lc on lc.fInterID =lmentry.fProTecID
left join lkm_blank_inventory inv on inv.fitemid =lkanban.fitemid and inv.flineid =lmentry.fConfigID 
where lkexek.fbillno ='s00109-01'  and lmentry.fProTecID != 56

select * from LKM_MCCItemEntry


delete from lkm_blank_inventory where fitemid =298881

select * from lkm_Materials

-------------

select  main.fbillno,main.fItemName,main.fItemCode,main.fModel,main.fcount,main.fthickness,main.fmin_count,main.fblank_batch,main.ftransfer_batch,
main.fset_count, COUNT(second.fbillno) as useableKb,COUNT(second.fbillno)*main.ftransfer_batch as needMake from (select lkanban.fbillno, master.fItemCode,master.fItemName,master.fModel,lkanban.fthickness,lkanban.fmin_count,
lkanban.fblank_batch,lkanban.ftransfer_batch,lkanban.fset_count, sum(ISNULL(inv.fcount,0)) fcount from  lkm_kanban lkanban 
inner join lkm_Materials master on lkanban.fitemid =master.fInterID
inner join LKM_MCCItemEntry lke on master.fItemID =lke.fitemid 
inner join LKM_MCCPTEntry lmentry on lmentry.fConfigID =lke.fConfigID
inner join lkm_CommonBill lc on lc.fInterID =lmentry.fProTecID
left join lkm_blank_inventory inv on inv.fitemid =lkanban.fitemid and inv.flineid =lmentry.fConfigID and inv.fproid = lmentry.fProTecID
where lkanban.fbillno like 'S%'  and lmentry.fProTecID != 56 and fProTecID !=101 
group by lkanban.fbillno, master.fItemCode,master.fItemName,master.fModel,lkanban.fthickness,lkanban.fmin_count,
lkanban.fblank_batch,lkanban.ftransfer_batch,lkanban.fset_count ) main left join 
lkm_exec_kanban_entry second on main.fbillno =second.fbasic_billno and (second.fstatus =0 or second.fstatus =1)
where main.fItemName like '%%' and main.fItemCode like '%%' and fItemCode like '%%' and fthickness like '%%' and fcount-fmin_count <0
group by main.fItemName, main.fbillno,main.fItemCode,main.fModel,main.fcount,main.fthickness,main.fmin_count,main.fblank_batch,
main.ftransfer_batch,main.fset_count having COUNT(second.fbillno)*main.ftransfer_batch>0 
order by fthickness,fItemCode,fModel
















----------------

select  lkanban.fbillno, master.fItemCode,master.fItemName,master.fModel,lkanban.fthickness,lkanban.fmin_count,
 sum(ISNULL(inv.fcount,0)) fcount from 
 lkm_kanban lkanban 
inner join lkm_Materials master on lkanban.fitemid =master.fInterID
inner join LKM_MCCItemEntry lke on master.fItemID =lke.fitemid 
inner join LKM_MCCPTEntry lmentry on lmentry.fConfigID =lke.fConfigID
inner join lkm_CommonBill lc on lc.fInterID =lmentry.fProTecID
left join lkm_blank_inventory inv on inv.fitemid =lkanban.fitemid and inv.flineid =lmentry.fConfigID and inv.fproid = lmentry.fProTecID
where lkanban.fbillno like 'S00011%'  and lmentry.fProTecID != 56 and fProTecID !=101
group by lkanban.fbillno, master.fItemCode,master.fItemName,master.fModel,lkanban.fthickness,lkanban.fmin_count


select * from lkm_kanban where fbillno ='S00001'

 

select main.fbillno,main.fItemName,main.fItemCode,main.fModel,main.fcount,main.fthickness,main.fmin_count,main.fblank_batch,main.ftransfer_batch, main.fset_count, COUNT(second.fbillno) as useableKb,COUNT(second.fbillno)*main.ftransfer_batch as needMake from (select lkanban.fbillno, master.fItemCode,master.fItemName,master.fModel,lkanban.fthickness,lkanban.fmin_count, lkanban.fblank_batch,lkanban.ftransfer_batch,lkanban.fset_count, sum(ISNULL(inv.fcount,0)) fcount from  lkm_kanban lkanban inner join lkm_Materials master on lkanban.fitemid =master.fInterID inner join LKM_MCCItemEntry lke on master.fItemID =lke.fitemid  inner join LKM_MCCPTEntry lmentry on lmentry.fConfigID =lke.fConfigID inner join lkm_CommonBill lc on lc.fInterID =lmentry.fProTecID left join lkm_blank_inventory inv on inv.fitemid =lkanban.fitemid and inv.flineid =lmentry.fConfigID and inv.fproid = lmentry.fProTecID where lkanban.fbillno like 'S%'  and lmentry.fProTecID != 56 and fProTecID !=101 group by lkanban.fbillno, master.fItemCode,master.fItemName,master.fModel,lkanban.fthickness,lkanban.fmin_count, lkanban.fblank_batch,lkanban.ftransfer_batch,lkanban.fset_count) main left join lkm_exec_kanban_entry second on main.fbillno =second.fbasic_billno and (second.fstatus =0 or second.fstatus =1) where fItemName like '%%' and fItemCode like '%%' and fthickness like '%%' and fModel like '%%' and fcount-fmin_count <0 group by  main.fbillno,main.fItemName,main.fItemCode,main.fModel,main.fcount,main.fthickness,main.fmin_count,main.fblank_batch, main.ftransfer_batch,main.fset_count having COUNT(second.fbillno)*main.ftransfer_batch>0order by fthickness,fItemCode,fModel,fItemName





declare @prolist nvarchar(100)

set @prolist ='[下料]'
select * from (select  lkexek.fbillno,master.fItemCode,master.fItemName,master.fModel,lmentry.fProTecID,0 as bustype,
lc.fName, inv.fcount from lkm_exec_kanban_entry lkexek inner join  lkm_kanban lkanban on lkexek.fbasic_billno =lkanban.fbillno
inner join lkm_Materials master on lkanban.fitemid =master.fInterID inner join LKM_MCCItemEntry lke on master.fItemID =lke.fitemid 
inner join LKM_MCCPTEntry lmentry on lmentry.fConfigID =lke.fConfigID inner join lkm_CommonBill lc on lc.fInterID =lmentry.fProTecID
left join lkm_blank_inventory inv on inv.fitemid =lkanban.fitemid  and inv.fproid = lmentry.fProTecID where lkexek.fbillno ='l00001-01' 
 and lmentry.fProTecID != 56) dd pivot (sum(dd.fcount) for fname in  ([下料,[后道库存]) ) as gggg
 go

declare @pro nvarchar(100)
declare @prolist nvarchar(500)
declare @prolistNew nvarchar(500)
set @prolist =''
set @prolistNew =''
declare  good cursor for
select fName from LKM_MCCPTEntry lmentry inner join
lkm_CommonBill lc on lc.fInterID =lmentry.fProTecID where  lmentry.fConfigID =32
open good
fetch next from good into  @pro
while @@FETCH_STATUS =0
begin
if @pro != '开工' 
begin
set @prolist += @pro +','
set @prolistNew += 'ISNULL('+@pro +',0) as ' + @pro  +','
end
fetch next from good into @pro
end
set @prolist = left(@prolist,len(@prolist) -1)
set @prolistNew = left(@prolistNew,len(@prolistNew) -1)
close good
deallocate good
declare @sql NVARCHAR(MAX)
declare @fbillno nvarchar(100)
set @fbillno ='%S%'
set @sql = 'select 生产看板号,物料代码,规格型号, ' +  @prolistNew+  ' from (select lkanban.fbillno as 生产看板号 ,master.fItemCode as 物料代码,master.fItemName as 物料名称,master.fModel as 规格型号, '
set @sql = @sql + 'lc.fName, ISNULL(inv.fcount,0) fcount from lkm_kanban lkanban '
set @sql = @sql + 'inner join lkm_Materials master on lkanban.fitemid =master.fInterID inner join LKM_MCCItemEntry lke on master.fItemID =lke.fitemid  '
set @sql = @sql + 'inner join LKM_MCCPTEntry lmentry on lmentry.fConfigID =lke.fConfigID inner join lkm_CommonBill lc on lc.fInterID =lmentry.fProTecID '
set @sql = @sql + 'left join lkm_blank_inventory inv on inv.fitemid =lkanban.fitemid  and inv.fproid = lmentry.fProTecID where lkanban.fbillno like @fbillno '
set @sql = @sql + ' and lmentry.fProTecID != 56) dd pivot (sum(dd.fcount) for fname in (' + @prolist + ',后道库存' +') ) as gggg '
print @sql
print @prolist
EXEC sp_executesql @sql,N'@prolistNew nvarchar(500), @fbillno nvarchar(100),@prolist nvarchar(100)',@prolistNew,@fbillno,@prolist







select * from lkm_kanban

select ISNULL(扫描点1,0), * from(

select ISNULL(下料,0),ISNULL(扫描点2,0),ISNULL(扫描点1,0),ISNULL(扫描点3,0),ISNULL(仓库库存,0), * from (select distinct lkanban.fbillno as 生产看板号,master.fItemCode as 物料代码 ,master.fItemName,master.fModel, 
lc.fName, inv.fcount from  lkm_kanban lkanban 
inner join lkm_Materials master on lkanban.fitemid =master.fInterID inner join LKM_MCCItemEntry lke on master.fItemID =lke.fitemid  
inner join LKM_MCCPTEntry lmentry on lmentry.fConfigID =lke.fConfigID inner join lkm_CommonBill lc on lc.fInterID =lmentry.fProTecID 
left join lkm_blank_inventory inv on inv.fitemid =lkanban.fitemid  and inv.fproid = lmentry.fProTecID where lkanban.fbillno like '%S%'
 and lmentry.fProTecID != 56) dd pivot (sum(  dd.fcount) for fname in (下料,扫描点2,扫描点1,扫描点3,仓库库存,后道库存) ) as gggg ) as dd

