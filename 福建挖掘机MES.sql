/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [fInterID]
      ,[fConfigID]
      ,[fItemID]
      ,[fItemCode]
      ,[fItemName]
  FROM [Lonking_MES_WJ].[dbo].[LKM_MCCItemEntry]

  select * from lkm_CommonBill

  select * from  LKM_WarehouseCenter

  select * from  LKM_MCCPTEntry

  select * from lkm_CommonBill

  select * from LKM_MCC

  select * from LKM_ItemCategory where fInterID =189

  select * from lkm_Materials
  select * from Vw_MDOrder

  --查看已扫描件

  select a.fSerialNo,a.fItemCode,a.fItemName,a.fNum,a.fSteelCode,a.fSupAndFacCode,fScanner,b.fMoDocNo,b.fItemCode,b.fItemName,
  b.fModel,b.fUnit,b.fPlanNum,b.fstatuname,d.fName
  
   from LKM_MOPickList a inner join Vw_MDOrder b on a.fSerialNo =b.flotcode inner join lkm_Materials c on 
  a.fItemID =c.fItemID left join LKM_ItemCategory d on c.fMaterial_Class =d.fInterID


  select * from sys.dm_exec_sql_text(0x01000700E4D35835B00ABF450200000000000000)