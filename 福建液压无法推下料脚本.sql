SELECT * FROM ICStockBillEntry WHERE FInterID=920834 AND FICMOInterID=0



-- declare @beAllowed INT 
--SELECT @beAllowed=CAST(FValue AS INT) from t_SystemProfile Where FCategory='IC' and FKey='StrictToPPBOM'
--IF @beAllowed=1 
--BEGIN 
--   IF EXISTS(SELECT * FROM ICStockBillEntry WHERE FInterID=920834 AND FICMOInterID=0)
--   RAISERROR('严格按投料单发料，不允许增加分录！',18,18)
--   IF EXISTS(SELECT u1.FICMOInterID
--   FROM PPBOMEntry u1 INNER JOIN ICStockBillEntry u2 ON u1.FICMOInterID=u2.FICMOInterID and u1.FEntryID=u2.FPPBOMEntryID
--   WHERE   u2.FInterID=920834
--   AND   u1.FItemID<>u2.FItemID)
--       RAISERROR('严格按投料单发料，不允许修改分录！',18,18)

--END
--IF EXISTS(SELECT TOP 1 1 FROM ICStockBill WHERE FBackFlushed=0 AND FInterID=920834 AND  (CASE WHEN FROB=-1 AND '+'='+' THEN 1 ELSE 0 END)=0 )
--BEGIN
--   IF EXISTS(SELECT t1.FICMOInterID
--             FROM (select * from PPBOMEntry where FIcMOInterID= (SELECT TOP 1 FIcMOInterID FROM ICStockBillEntry WHERE FInterID=920834)) t1 
--             Inner join t_IcItemBase tt on t1.FItemID=tt.FItemID 
--             Left Join ( SELECT FInterID,FItemID,FICMOInterID,FPPBOMEntryID,sum(FQty) as FQty FROM ICStockBillEntry
--                         WHERE FInterID=920834 Group by FInterID,FItemID,FICMOInterID,FPPBOMEntryID
--             ) t2
--             ON t1.FICMOInterID=t2.FICMOInterID AND t1.FItemID=t2.FItemID AND t1.FEntryID=t2.FPPBOMEntryID
--            WHERE t2.FICMOInterID is not null and  t1.FMaterielType<>376             AND tt.FPickingCtrlMode = 36531
--            AND (t1.FQtyMust+t1.FQtySupply)<(t1.FQty+Isnull(t2.FQty,0) )
--   ) 
--      RAISERROR('严格按投料单发料，不允许超过关联的生产投料单数量。',18,18)
-- END


sELECT  u2.finterid,u2.fitemid, u1.FICMOInterID,*
   FROM PPBOMEntry u1 INNER JOIN ICStockBillEntry u2 ON u1.FICMOInterID=u2.FICMOInterID and u1.FEntryID=u2.FPPBOMEntryID
   WHERE   
      u1.FICMOInterID=496983


   select FICMOInterID from ICStockBillEntry


   sELECT fauxstockqty, *
   FROM PPBOMEntry where  FICMOInterID=496983
   --finterid 重复

--   0.0000000000	0	400500	1	46866		570	0.0000000000	6.0000000000	0.0000000000	0.0000000000
---0.0000000000	0	400503	1	46755		524	6.0000000000	6.0000000000	0.0000000000	0.0000000000

   select * from icmo  where fbillno ='WORK135263'

   select * from t_icitem where fitemid =46866

   select * from icstockbill where finterid in (903256,
903256,
909664,
909669)


