/****** Script for SelectTopNRows command from SSMS  ******/
SELECT lkscanentry.*,  lksch.[fInterID]
      ,lksch.[fBillNo]
      ,lksch.[fExecKBID]
      ,lksch.[fExecKBNo]
      ,lksch.[fLineID]
      ,lksch.[fLineName]
      ,lksch.[fStatus]
      ,lksch.[fStatuName]
      ,lksch.[fBusType]
      ,lksch.[fCreatedOn]
      ,lksch.[fCreatedBy],
	  lksch2.fStatuName
  FROM  [dbo].[LKM_Kanban_ScanEntry] lkscanentry    
  left join [LonKing_MES_JX].[dbo].[LKM_KanbanScheduling] lksch on lksch.fBillNo =lkscanentry.fBillNo and fBusType =0
  left join [LonKing_MES_JX].[dbo].[LKM_KanbanScheduling] lksch2 on  lksch2.fBillNo = lkscanentry.fBillNo
 where lkscanentry .fBillNo LIKE 'S00014-01%' 
 

  order by lkscanentry.fBillNo

SELECT *  FROM  [dbo].[LKM_Kanban_ScanEntry] lkscanentry where fBillNo LIKE 'S00014-01_181000002'

select * from [dbo].[LKM_KanbanScheduling] where fBillNo ='S00014-01_181000002'
