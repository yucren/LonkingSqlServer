/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [FSerialClassID]
      ,[FSerialID]
      ,[FItemID]
      ,[FStockID]
      ,[FStockPlace]
      ,[FOutStockID]
      ,[FOutStockPlace]
      ,[FAuxPropID]
      ,[FBatchNO]
      ,[FKFDate]
      ,[FKFPeriod]
      ,[FtranTypeID]
      ,[FInterID]
      ,[FSNListID]
      ,[FStatus]
      ,[FValid]
      ,[FSerialNum]
  FROM [AIS20071011135950].[dbo].[ICSerial] where FSerialNum in ('G1863850-19235SB','G1863850-19236SB','G1863850-19242SB','G1863850-19297WB','G1863850-19301WB','G1863850-19306WB','G1863850-19309WB','G1863850-19311WB','G1863850-19312WB','G1863850-19313WB','G1863850-19317WB','G1863850-19318WB',
  'G1863850-19241SB',
'G1863850-19243SB',
'G1863850-19319WB'
  )

  select * from icstockbill where fbillno ='XOUT033893'

  select * from icstockbill where finterid =613022

  select * from ICSerialflow where fserialid =882359

  Select *  From icSerialFlow Where FSNListID=212698
  select * from icSerialFlow where  snlistid =213754

