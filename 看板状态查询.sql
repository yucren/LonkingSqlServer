/****** Script for SelectTopNRows command from SSMS  ******/

--看板状态查询
SELECT 
      --lenkanban. finterid,       
      lenkanban.fbillno
     -- ,lenkanban.fstatus   
      ,case lenkanban.fstatus  when 2 then '禁用' when 0  then '可用' when 1 then '可用' else  lenkanban.fstatuName end as kanbanstatus
   --   ,lenkanban.fCurScanID
    --  ,lenkanban.fCurScanNo
	  ,lksc.fCreatedBy
	  ,lksc.fCreatedOn
	  ,case lksc.fBusType  when 1 then '生产'  when -1 then '领料' when 0 then '盘点' end as 'fbusType'
  FROM LonKing_MES_JX.dbo.lkm_exec_kanban_entry lenkanban
  left join  dbo.LKM_KanbanScheduling lksc on lenkanban.fCurScanID = lksc.fInterID
  where lenkanban.fbasic_billno ='L00001'

  --看板流水查询

  SELECT  lenkanban.fbillno ,case lenkanban.fstatus  when 2 then '禁用' when 0  then '可用' when 1 then '可用' else  lenkanban.fstatuName end as kanbanstatus ,lksc.fCreatedBy,lksc.fCreatedOn,case lksc.fBusType  when 1 then '生产'  when -1 then '领料' when 0 then '盘点' end as 'fbusType'
  FROM LonKing_MES_JX.dbo.lkm_exec_kanban_entry lenkanban
  left join  dbo.LKM_KanbanScheduling lksc on lenkanban.fCurScanNo = lksc.fBillNo
  where lenkanban.fbasic_billno ='S00003'



  SELECT   lenkanban.fbillno  ,case lenkanban.fstatus  when 2 then '禁用' when 0  then '可用' when 1 then '可用' else  lenkanban.fstatuName end as kanbanstatus
 ,lksc.fCreatedBy ,lksc.fCreatedOn ,case lksc.fBusType  when 1 then '生产'  when -1 then '领料' when 0 then '盘点' end as 'fbusType'
  FROM LonKing_MES_JX.dbo.lkm_exec_kanban_entry lenkanban   left join  dbo.LKM_KanbanScheduling lksc on lenkanban.fCurScanID = lksc.fInterID 
  where lenkanban.fbasic_billno ='L00001'
  
  

  
  
  