


SELECT * FROM (
SELECT main.fItemCode,main.fItemName,main.fModel,main.fthickness,main.fbillno,main.fmin_count,main.fcount,main.fblank_batch,main.ftransfer_batch, 
main.fset_count, COUNT(second.fbillno) as useableKb,COUNT(second.fbillno)*main.ftransfer_batch as needMake from (select  
master.fItemCode,master.fItemName,master.fModel,lkanban.fthickness,lkanban.fmin_count, 
lkanban.fblank_batch,lkanban.ftransfer_batch,lkanban.fset_count,lkanban.fbillno, sum(ISNULL(inv.fcount,0)) fcount from  lkm_kanban lkanban 
	inner join lkm_Materials master on lkanban.fitemid =master.fInterID 
	inner join LKM_MCCItemEntry lke on master.fItemID =lke.fitemid 
	inner join LKM_MCCPTEntry lmentry on lmentry.fConfigID =lke.fConfigID 
	inner join lkm_CommonBill lc on lc.fInterID =lmentry.fProTecID 
	left join lkm_blank_inventory inv on inv.fitemid =lkanban.fitemid and inv.fproid = lmentry.fProTecID 
	where lkanban.fbillno like 'S%' and lkanban.fstatus !=1 and lmentry.fProTecID != 56 and fProTecID !=101  
	group by  master.fItemCode,master.fItemName,master.fModel,lkanban.fthickness,lkanban.fmin_count, 
	lkanban.fblank_batch,lkanban.ftransfer_batch,lkanban.fset_count,lkanban.fbillno) main left join 
	lkm_exec_kanban_entry second on main.fbillno =second.fbasic_billno and (second.fstatus =0 or second.fstatus =1) 
	where fItemName like '%' and fItemCode like '%' and fthickness like '%' and fModel like '%'
	 and fcount-fmin_count <= 0 and main.fmin_count !=0 
	group by  main.fItemCode,main.fItemName,main.fModel,main.fthickness,main.fbillno,main.fmin_count,main.fcount,main.fblank_batch,main.ftransfer_batch, 
main.fset_count) main2 inner join (select distinct fbasic_billno from lkm_exec_kanban_entry where fbasic_billno  in ( select fbasic_billno from lkm_exec_kanban_entry where fstatus !=2 group by fbasic_billno ) and fbasic_billno like '%') second2 on main2.fbillno =second2.fbasic_billno
