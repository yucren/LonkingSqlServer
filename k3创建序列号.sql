EXEC sp_reset_connection 
GO
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
GO
SELECT * FROM icserialgenerate WHERE fgenerateid=(SELECT fgenerateid  FROM icserialdesc WHERE fserialclassid=1 AND fpropid=1)
GO
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
GO
UPDATE ICSerialgenerate SET FHead='a',FTail='',FStart=1,FEnd=10,FStep=1,FLength=3 WHERE FGenerateID=1
GO
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
GO
SELECT * FROM icserialdesc WHERE ( fpredefine=0 OR fisindex=1 ) AND fserialclassid=1 ORDER BY fpropID 
GO
SELECT * FROM (SELECT TOP 20000 tf.FSerialNum AS FSerialNum,tf.F_S001 AS F_S001, tm.FSerialID AS FSerialID   FROM ICserial tm LEFT JOIN ICserial_F1 tf ON tm.FserialclassID=tf.FSerialClassID AND tm.FSerialID=tf.FSerialID  WHERE (  tm.FItemID=2578 AND tm.FBatchNO='' AND tm.FKFPeriod=0 AND tm.FKFDate='' AND tm.FAuxPropID=0 AND tm.FSupplyID=0 AND tm.FSerialClassID=1 AND tm.FStatus=1 AND tm.FValid=1 AND tm.FSerialClassID=1 AND tm.FStockID=470 AND tm.FStockPlace=10 AND  tm.FSerialNum='a001' ) OR (( tm.FSerialClassID=1 AND  tm.FSNListID=4 AND tm.FItemID=2578 AND  tm.FSerialNum='a001' ))) opTable 
GO
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
SELECT TOP 100 a.FMesType,a.FMesID FROM t_Message a
                            LEFT JOIN t_msgList d ON d.FMesID = a.FMesID
                            LEFT JOIN t_User c ON  d.FUserID =c.FUserID
                            WHERE FMesState<>2 AND FChecked=0 AND FNew=1 AND d.FUserID =16394 AND (FMesType=0 OR FMesType=1)
                            UNION ALL
                            SELECT TOP 100 a.FMesType,a.FMesID FROM t_Message a
                            LEFT JOIN t_msgList d ON d.FMesID = a.FMesID
                            LEFT JOIN t_User c ON  d.FUserID =c.FUserID
                            WHERE FMesState<>2 AND FChecked=0 AND FNew=1 AND d.FUserID =16394 AND FMesType=2
                            UNION ALL
                            SELECT TOP 100 a.FMesType,a.FMesID FROM t_Message a
                            LEFT JOIN t_msgList d ON d.FMesID = a.FMesID
                            LEFT JOIN t_User c ON  d.FUserID =c.FUserID
                            WHERE FMesState<>2 AND FChecked=0 AND FNew=1 AND d.FUserID =16394 AND FMesType=3
                            UNION ALL
                            SELECT TOP 100 a.FMesType,a.FMesID FROM t_Message a
                            LEFT JOIN t_msgList d ON d.FMesID = a.FMesID
                            LEFT JOIN t_User c ON  d.FUserID =c.FUserID
                            WHERE FMesState<>2 AND FChecked=0 AND FNew=1 AND d.FUserID =16394 AND FMesType=4
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
SELECT COUNT(FID) FROM t_UserProfile WHERE FUserID = 16394 AND FCategory = 'K3Function.IniFile' AND FKey = 'App.Path\JXCSystem.INI'
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
SELECT COUNT(FID) FROM t_UserProfile WHERE FUserID = 16394 AND FCategory = 'K3Function.IniFile' AND FKey = 'App.Path\JXCSystem.INI'
go
SET TRANSACTION ISOLATION LEVEL READ UnCOMMITTED
go
select * from icserialdesc where ( fpredefine=0 or fisindex=1 ) and fserialclassid=1 order by fpropID 
go
Select * from (Select top 20000 tf.FSerialNum as FSerialNum,tf.F_S001 as F_S001, tm.FSerialID as FSerialID   from ICserial tm left join ICserial_F1 tf on tm.FserialclassID=tf.FSerialClassID and tm.FSerialID=tf.FSerialID  Where (  tm.FItemID=2578 and tm.FBatchNO='' and tm.FKFPeriod=0 and tm.FKFDate='' and tm.FAuxPropID=0 and tm.FSupplyID=0 and tm.FSerialClassID=1 and tm.FStatus=1 and tm.FValid=1 and tm.FSerialClassID=1 and tm.FStockID=470 and tm.FStockPlace=10 and  tm.FSerialNum='a001' ) or (( tm.FSerialClassID=1 and  tm.FSNListID=4 and tm.FItemID=2578 and  tm.FSerialNum='a001' ))) opTable 
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
SELECT COUNT(FID) FROM t_UserProfile WHERE FUserID = 16394 AND FCategory = 'K3Function.IniFile' AND FKey = 'App.Path\JXCSystem.INI'
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
SELECT COUNT(FID) FROM t_UserProfile WHERE FUserID = 16394 AND FCategory = 'K3Function.IniFile' AND FKey = 'App.Path\JXCSystem.INI'
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
Delete From t_FuncControl Where FID=6987 And FUserID=16394
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
 Select FFuncID,FSubSysID From t_SysFunction Where FNumber = 'Cc0022' 
go
SELECT F.*,S.FSubSysID
FROM t_FuncControl F INNER JOIN t_SysFunction S ON F.FFuncID = S.FFuncID
INNER JOIN t_Mutex A ON F.FFuncID = A.FFuncID
WHERE A.FType =  8
 OR (A.FType = 2 AND A.FForbidden = 2)
 OR (A.FType = 4 AND F.FYear = 2019 AND A.FForbidden = 21)
 OR (A.FType = 9 AND A.FForbidden = 2 AND F.FYear = 2019 AND F.FPeriod = 4)
 OR (A.FType = 10 AND A.FForbidden=20022 AND F.FRowID = 1936 AND F.FBizType='0')
 OR (A.FType = 1 AND A.FForbidden=20022)

go
Select Max(FID) FID from t_FuncControl
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
select count(1) as recordcount  from syscolumns where id=(select id from sysobjects where name='t_log')
go
INSERT INTO t_Log (FDate,FUserID,FFunctionID,FStatement,FDescription,FMachineName,FIPAddress) VALUES (getdate(),16394,'K010000',1,'','DESKTOP-H77T5F3','172.15.250.51')
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
select FNumber from t_stockplace WHERE FSPID in (10) and FDeleted=1
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
SELECT t2.FName_CHS AS FName,t1.FSourClassTypeID As FSourClassTypeID FROM ICClassLink t1 INNER JOIN ICClassType t2 ON t1.FSourClassTypeID=t2.FID WHERE FIsUsed=2 AND FMustSelected IN(1,3) AND FDestClassTypeID =-2
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
Select FValue from t_SystemProfile where FCategory='BOS' and FKey='AccessDataUsed'
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
select FUserID from t_Group where FUserID = 16394 and FGroupID = 1
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
SET NOCount ON
CREATE Table #TempTable(FItemID int)
INSERT INTO #TempTable VALUES(2578)
select isnull(FSerialclassID,0) as FSerialclassID,isnull(FIsSNManage,0) as FIsSNManage,t1.FItemID from t_IcItem t1
INNER JOIN #TempTable t2 ON t1.FItemID=t2.FItemID
go
SET TRANSACTION ISOLATION LEVEL READ UnCOMMITTED
go
select isnull(FCoefficient,0) from t_measureunit where FMeasureUnitID=261
go
SET TRANSACTION ISOLATION LEVEL READ UnCOMMITTED
go
select FName  from ictransactiontype where FID=2
go
SET TRANSACTION ISOLATION LEVEL READ UnCOMMITTED
go
SELECT FUpStockWhenSave FROM ICStockBill WHERE FInterID=1936
go
SET TRANSACTION ISOLATION LEVEL READ UnCOMMITTED
go
SELECT FValue FROM t_SystemProfile WHERE FCategory='IC' AND FKey='IsSepBillNoTrans'
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
SET TRANSACTION ISOLATION LEVEL  READ UNCOMMITTED  SELECT FIndex,FComponentName,FComponentSrv FROM t_ThirdPartyComponent WHERE FTypeID=0 AND FTypeDetailID=2 AND FComponentName <> 'K3AuditTransBill.cAuditLog' AND FComponentSrv <> 'K3MAuditTransBill.cAudit_Bill'  ORDER BY FIndex 
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
SELECT count(c.name) FROM sysobjects o inner join syscolumns c  on o.id=c.id inner join systypes t on c.xtype=t.xtype and c.xusertype=t.xusertype where t.name='uniqueidentifier' and o.name='ICStockBill' and c.name='FUUID'
go
SELECT FUUID FROM ICStockBill (NOLOCK) WHERE FInterID=1936
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
SELECT TOP 1 1 FROM ICStockBill WHERE FROB = 1 AND FInterID = 1936
go
Select FValue From t_SystemProfile  Where FCategory='SH' and FKey='FirstMainLastSubstitute'
go
SELECT FComponentSrv,FDescription FROM t_ThirdPartyComponent WHERE FTypeID=2 AND FTypeDetailID=300009 ORDER BY FIndex
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
SELECT t1.FHeadTable,t1.FEntryTable,t2.FLookUpCls
FROM ICTransactiontype t1 left join ICTemplate t2 on t1.FTemplateID=t2.FID and t2.FLookUpCls=-35
where t1.FID=2
go
Select top 1 t1.FSourceTranType, t2.FName as FName, t2.FHeadTable, t2.FEntryTable 
From ICStockBillEntry t1 
Left Join ICTransactiontype t2 On t1.FSourceTranType=t2.FID 
 Where t1.FSourceTranType<>0  AND t1.FInterID = 1936
go
SET TRANSACTION ISOLATION LEVEL READ UnCOMMITTED
go
SELECT FUpStockWhenSave FROM ICStockBill WHERE FInterID = 1936
go
SELECT FKey,FValue FROM t_systemProfile WHERE FCategory ='IC' AND FKey IN('SEOrderAvailableInventory', 'SEOrderAvailableInventoryBill')
go
SET TRANSACTION ISOLATION LEVEL READ UnCOMMITTED
go
SELECT FKey,FValue FROM t_systemProfile WHERE FCategory ='IC' AND FKey IN('UpdateWhenSave','SEOrderAvailableInventory', 'SEOrderAvailableInventoryBill')
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
SELECT Getdate() 
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
SELECT FCategory,FKey,FValue FROM t_systemprofile 
WHERE (FKey IN ('StartPeriod','CurrentPeriod','ICClosed','UseShortNumber','ISUseMultiCheck','UseHighInv','UseLowInv',
                'UseSafeInv','ShowUnderTip','CurrentYear','BillStatus',
                'IsOkToModAfterClose','WorkCalendarset','UseOrderBatchTrace','UseLockStock',
                'AlertSELowPrice','IsUsePurPrcMgr','AlertSELowPriceWhenCheck','PurHPriceControl','PurHPricePSW','PurHPriceZero','PurHPriceContrlPoint','AlertHighPriceWhenCheck',
                'UseInvMgr','SameUserApprovalAndUnApproval','POQtyLargeStock','POInstockQtyLargePO','CQtyLargerSEQty','OrdStockOutByProportion','AllowPurchase','CQtyLargerPOQty')
                AND FCategory='IC') 
  OR (FCategory='General' AND FKey='SingleMan') 

go
SELECT  FHeadTable, FEntryTable FROM ICTransactionType WHERE FID=2
go
SELECT * FROM ICStockBill WHERE FInterID=1936 AND FTranType=2

go
SELECT * FROM ICStockBillEntry WHERE FInterID=1936

go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
SELECT FValue FROM t_SystemProfile WHERE Upper(FCategory)='IC' AND Upper(FKey)='UPSTOCKWHENSAVE'
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
SELECT FValue FROM t_SystemProfile WHERE Upper(FCategory)='IC' AND Upper(FKey)='STRICTCTRLBACKQTY'
go
SELECT FComponentSrv FROM t_ThirdPartyComponent WHERE FTypeID=2 AND FTypeDetailID=200001 ORDER BY FIndex
go
SELECT ISNULL(FValue,0) FROM t_SystemProfile WHERE FCateGory = 'IC' AND FKey = 'EnableMtoPlanMode'
go
SET TRANSACTION ISOLATION LEVEL READ UnCOMMITTED
go
 SELECT TOP 1 1 FROM SysObjects WHERE Name='t_SMEComponents' AND XType='U' 
go
select t.FCategory from t_SMEComponents t where FComponent='K3MCheckBill.CheckNow' and t.FCategory='YYHY'
go
DROP TABLE #TempBill
go
SET NOCOUNT ON
CREATE TABLE #TempBill
(FID INT IDENTITY (1,1),FBrNo VARCHAR(10) NOT NULL DEFAULT(''),
 FInterID INT NOT NULL DEFAULT(0),
 FEntryID INT NOT NULL DEFAULT(0),
 FTranType INT NOT NULL DEFAULT(0),
 FItemID INT NOT NULL DEFAULT(0),
 FBatchNo NVARCHAR(255) NOT NULL DEFAULT(''),
 FMTONo NVARCHAR(255) NOT NULL DEFAULT(''),
 FAuxPropID INT NOT NULL DEFAULT(0),
 FStockID INT NOT NULL DEFAULT(0),
 FStockPlaceID INT NOT NULL DEFAULT(0),
 FKFPeriod INT NOT NULL DEFAULT(0),
 FKFDate VARCHAR(20) NOT NULL DEFAULT(''),
 FSupplyID INT NOT NULL DEFAULT(0),
 FQty DECIMAL(28,10) NOT NULL DEFAULT(0),
 FSecQty DECIMAL(28,10) NOT NULL DEFAULT(0),
 FAmount DECIMAL(28,2)  NOT NULL DEFAULT(0) 
)

go
INSERT INTO #TempBill(FBrNo,FInterID,FEntryID,FTranType,FItemID,FBatchNo,FMTONo,FAuxPropID,FStockID,FStockPlaceID,FKFPeriod,FKFDate,FSupplyID,FQty,FSecQty,FAmount)
SELECT '',u1.FInterID,u1.FEntryID,2 AS FTranType,u1.FItemID,ISNULL(u1.FBatchNo,'') AS FBatchNo,ISNULL(u1.FMTONo,'') AS FMTONo,
       u1.FAuxPropID,ISNULL(u1.FDCStockID,0) AS FDCStockID,ISNULL(u1.FDCSPID,0) AS FDCSPID,ISNULL(u1.FKFPeriod,0) AS FKFPeriod,
       LEFT(ISNULL(CONVERT(VARCHAR(20),u1.FKFdate ,120),''),10) AS FKFDate,FEntrySupply,
-1*u1.FQty AS FQty,-1*u1.FSecQty AS FSecQty,-1*u1.FAmount
FROM ICStockBillEntry u1 
WHERE u1.FInterID=1936
 order by  u1.FEntryID
go
SELECT DISTINCT u1.FItemID,u1.FAuxPropID,u1.FBatchNo,u1.FMTONo,u1.FDCStockID AS FStockID,ISNULL(u1.FDCSPID,0) as FStockPlaceID
,LEFT(ISNULL(CONVERT(VARCHAR(20),u1.FKFdate ,120),''),10) AS FKFDate,ISNULL(u1.FKFPeriod,0) AS FKFPeriod
FROM ICStockBillEntry u1 
WHERE u1.FInterID=1936

go
SELECT TOP 1 * FROM t_LockStock
go
SELECT DISTINCT FItemID,FNumber,FName,FIsStockMgr,FTypeID,FUnderStock
FROM (
SELECT DISTINCT t1.FItemID,t1.FNumber,t1.FName,t1.FIsStockMgr,t1.FTypeID,t1.FUnderStock 
FROM t_Stock t1 INNER JOIN ICStockBillEntry u1 ON u1.FDCStockID=t1.FItemID
WHERE u1.FInterID=1936
UNION ALL
SELECT DISTINCT t1.FItemID,t1.FNumber,t1.FName,t1.FIsStockMgr,t1.FTypeID ,t1.FUnderStock
FROM t_Stock t1 INNER JOIN ICStockBillEntry u1 ON u1.FSCStockID=t1.FItemID
WHERE u1.FInterID=1936) tmpStock

go
SELECT DISTINCT FSPID,FNumber,FName
FROM (
SELECT DISTINCT t1.FSPID,t1.FNumber,t1.FName
FROM t_StockPlace t1 INNER JOIN ICStockBillEntry u1 ON u1.FDCSPID=t1.FSPID
WHERE u1.FInterID=1936
UNION ALL
SELECT DISTINCT t1.FSPID,t1.FNumber,t1.FName
FROM t_StockPlace t1 INNER JOIN ICStockBillEntry u1 ON u1.FSCSPID=t1.FSPID
WHERE u1.FInterID= 1936) tmpSP

go
SELECT * INTO #TempBill2 FROM #TempBill 
UPDATE t1
SET t1.FQty=t1.FQty+(u1.FQty),
t1.FSecQty=t1.FSecQty+(u1.FSecQty)
FROM ICInventory t1 INNER JOIN
(SELECT FItemID,FBatchNo,FMTONo,FAuxPropID,FStockID,FStockPlaceID,FKFPeriod,FKFDate
        ,SUM(FQty) AS FQty,SUM(FSecQty) AS FSecQty
 FROM #TempBill2 
 GROUP BY FItemID,FBatchNo,FMTONo,FAuxPropID,FStockID,FStockPlaceID,FKFPeriod,FKFDate
) u1
ON t1.FItemID=u1.FItemID AND t1.FBatchNo=u1.FBatchNo AND t1.FMTONo=u1.FMTONo AND t1.FAuxPropID=u1.FAuxPropID
   AND t1.FStockID=u1.FStockID AND t1.FStockPlaceID=u1.FStockPlaceID 
   AND t1.FKFPeriod=u1.FKFPeriod AND t1.FKFDate=u1.FKFDate

DELETE u1
FROM ICInventory t1 INNER JOIN #TempBill2 u1
ON t1.FItemID=u1.FItemID AND t1.FBatchNo=u1.FBatchNo AND t1.FMTONo=u1.FMTONo AND t1.FAuxPropID=u1.FAuxPropID
   AND t1.FStockID=u1.FStockID AND t1.FStockPlaceID=u1.FStockPlaceID 
   AND t1.FKFPeriod=u1.FKFPeriod AND t1.FKFDate=u1.FKFDate

INSERT INTO ICInventory(FBrNo,FItemID,FBatchNo,FMTONo,FAuxPropID,FStockID,FStockPlaceID,FKFPeriod,FKFDate,FQty,FSecQty)
SELECT '',FItemID,FBatchNo,FMTONo,FAuxPropID,FStockID,FStockPlaceID,FKFPeriod,FKFDate,
       SUM(FQty) AS FQty,SUM(FSecQty) AS FSecQty
FROM #TempBill2
GROUP BY FItemID,FBatchNo,FMTONo,FAuxPropID,FStockID,FStockPlaceID,FKFPeriod,FKFDate


DROP TABLE #TempBill2

go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
SELECT FValue FROM t_SystemProfile WHERE Upper(FCategory)='IC' AND Upper(FKey)='REALTIMECOST'
go
DROP TABLE #TempBill
go
SELECT 1 FROM ICStockBillEntry v1 INNER JOIN ICMO u1 ON v1.FICMOInterID = u1.FInterID AND u1.FStatus = 3 AND v1.FInterID = 1936 And v1.FSourceTranType <> 2 
go
SELECT ISNULL(FValue,0) FROM t_SystemProfile WHERE FCateGory = 'SH' AND FKey = 'AUTOBACKFLUSH_SH'
go
SELECT TOP 1 * FROM ICOrderBatchTrace 
go
SELECT FComponentSrv FROM t_ThirdPartyComponent WHERE FTypeID=2 AND FTypeDetailID=200002 ORDER BY FIndex
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
select newid(),ISNULL(FValue,0) as FValue FROM t_SystemProfile WHERE FKey='MO_CLOSEOPTION' AND FCategory='SH'
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
   --Declare @FSouceTrantype  as int 
   Declare @bWriteMethod as Int --是否按标准数量
   Declare @dRate as Decimal(23,10) --换算率
   Declare @FWIPQty as Decimal(23,10) --在制品数量
   Declare @FICMOInterID as int 
 SELECT @FICMOInterID = FICMOInterID  FROM ICStockBillEntry  WHERE FInterID = 1936
IF Exists(SELECT 1 FROM tempdb..sysobjects WHERE ID = OBJECT_ID(N'tempdb..#GradeProduct')) 
Drop Table #GradeProduct
 
  CREATE TABLE #GradeProduct(FICMOInterID INT DEFAULT(0), FItemID INT DEFAULT(0), FMaterielType  INT DEFAULT(0), FAuxQtyScrap DECIMAL(23,10))
 INSERT #GradeProduct
 SELECT c.FInterID,p.FItemID, p.FMaterielType, ISNULL(p.FAuxQtyMust/NULLIF(c.FAuxQty,1),0)  FROM ICMO c
 INNER JOIN  PPBOMEntry  p ON c.FInterID = p.FICMOInterID AND p.FMaterielType = 374 AND c.FInterID = @FICMOInterID
Declare @#DataFE821953ED364710939D777AFA463671 table(FICMOinteriD int ,FStockQty Decimal(23,10),FChkPassItem INT, FItemID INT)
Insert into @#DataFE821953ED364710939D777AFA463671
   SELECT u2.FICMOinteriD,SUM(CAST(ISNULL(u2.FAuxQty,0) as Decimal(23,10))*Cast(tu.FCoefficient as Decimal(23,10))) as FStockQty,u2.FChkPassItem, u2.FItemID FROM ICStockBillEntry u2 
   INNER JOIN t_MeasureUnit tu ON tu.FItemID=u2.FUnitID 
   WHERE (u2.FPPBOMEntryID=0) and u2.FSourceTrantype>0 and  u2.FInterID= 1936
     AND NOT EXISTS(SELECT 1 FROM ICMORptEntry  
                    WHERE FInterID=u2.FSourceInterID AND FEntryID=u2.FSourceEntryID 
                    AND u2.FSourceTrantype =551 AND FMaterielType>0) 
   Group by u2.FICMOInterID,u2.FChkPassItem,tu.FCoefficient,u2.FItemID 
 UNION ALL
   SELECT u2.FICMOinteriD,SUM(CAST(ISNULL(u2.FAuxQty,0) as Decimal(23,10))*Cast(tu.FCoefficient as Decimal(23,10))) as FStockQty,u2.FChkPassItem, u2.FItemID FROM ICStockBillEntry u2 
   INNER JOIN t_MeasureUnit tu ON tu.FItemID=u2.FUnitID 
   INNER JOIN #GradeProduct G ON G.FICMOInterID = U2.FICMOInterID  
   WHERE (U2.FItemID = G.FItemID) and u2.FSourceTrantype>0 and  u2.FInterID= 1936
     AND NOT EXISTS(SELECT 1 FROM ICMORptEntry  
                    WHERE FInterID=u2.FSourceInterID AND FEntryID=u2.FSourceEntryID 
                    AND u2.FSourceTrantype =551 AND FMaterielType>0) 
   Group by u2.FICMOInterID,u2.FChkPassItem,tu.FCoefficient,u2.FItemID 
UPDATE m SET m.FStockQty = m.FStockQty / ISNULL(g.FAuxQtyScrap,1)
FROM @#DataFE821953ED364710939D777AFA463671 m 
INNER JOIN #GradeProduct g ON g.FICMOInterID = m.FICMOinteriD AND m.FItemID = g.FItemID
DROP TABLE #GradeProduct
 Declare @FSourceTrantype as int 
 Declare @FROB as int 
 select @FROB=u1.FROB,@FSourceTrantype=t1.FSourceTrantype  --(select fsourcetrantype from icstockbillentry m1 where m1.finterid=t1.fsourceinterid) end) 
 from ICStockBillEntry t1 join ICStockBill u1 on t1.finterid=u1.finterid where t1.finterid=1936
 if @FROB=1 or (@FROB=-1 And @FSourceTrantype in (551,581))
 Begin 
 IF (Select Count(*) From ICStockBillEntry Where FSourceTrantype =581 And FInterID=1936)>0 
     Update src Set src.FQtyStock = src.FQtyStock-dest.FQty
     ,src.FAuxQtyStock = (src.FQtyStock-dest.FQty)/CAST(t1.FCoefficient as Decimal(23,10))
     From ICOperShift src INNER JOIN 
     (Select u1.FSourceInterID as FSourceInterID,u1.FSourceEntryID,u1.FItemID,SUM(u1.FQty) as FQty
     From  ICStockBillEntry u1 
     Where u1.FSourceTrantype=581 And u1.FInterID=1936
     GROUP BY u1.FSourceInterID,u1.FSourceEntryID,u1.FItemID) dest 
     ON dest.FSourceInterID = src.FInterID
     AND dest.FItemID = src.FItemID 
     INNER JOIN t_MeasureUnit t1 ON src.FUnitID=t1.FItemID
 IF (Select Count(*) From ICStockBillEntry Where FSourceTrantype =551 And FInterID=1936)>0 
     Update src Set src.FQtyStock = src.FQtyStock-dest.FQty
     ,src.FAuxQtyStock = (src.FQtyStock-dest.FQty)/CAST(t1.FCoefficient as Decimal(23,10))
     From ICMORptEntry src INNER JOIN 
     (Select u1.FSourceInterID as FSourceInterID,u1.FSourceEntryID,u1.FItemID,SUM(u1.FQty) as FQty
     From  ICStockBillEntry u1 
     INNER JOIN ICMORptEntry u2 ON u2.FInterID=u1.FSourceInterID AND u2.FEntryID=u1.FSourceEntryID 
     Where u1.FSourceTrantype=551 /*AND u2.FMaterielType=0*/ AND u1.FChkPassItem =1058 And u1.FInterID=1936
     GROUP BY u1.FSourceInterID,u1.FSourceEntryID,u1.FItemID) dest 
     ON dest.FSourceInterID = src.FInterID
     AND dest.FItemID = src.FItemID and dest.FSourceEntryID=src.FEntryID 
     INNER JOIN t_MeasureUnit t1 ON src.FUnitID=t1.FItemID
     Update src Set src.FDiscardStockInQty = src.FDiscardStockInQty-dest.FQty
     ,src.FDiscardStockInAuxQty = (src.FDiscardStockInQty-dest.FQty)/CAST(t1.FCoefficient as Decimal(23,10))
     From ICMORptEntry src INNER JOIN 
     (Select u1.FSourceInterID as FSourceInterID,u1.FSourceEntryID,u1.FItemID,SUM(u1.FQty) as FQty
     From  ICStockBillEntry u1 
     INNER JOIN ICMORptEntry u2 ON u2.FInterID=u1.FSourceInterID AND u2.FEntryID=u1.FSourceEntryID 
     Where u1.FSourceTrantype=551 /*AND u2.FMaterielType=0*/ AND u1.FChkPassItem =1059 And u1.FInterID=1936
     GROUP BY u1.FSourceInterID,u1.FSourceEntryID,u1.FItemID) dest 
     ON dest.FSourceInterID = src.FInterID
     AND dest.FItemID = src.FItemID and dest.FSourceEntryID=src.FEntryID 
     INNER JOIN t_MeasureUnit t1 ON src.FUnitID=t1.FItemID
     Update src Set src.FQtyStock = src.FQtyStock-dest.FQty
     ,src.FAuxQtyStock = (src.FQtyStock-dest.FQty)/CAST(t1.FCoefficient as Decimal(23,10))
     From ICMORptEntry src INNER JOIN 
     QMSourceInfo tmp ON src.FInterID = tmp.FQCReqInterID AND src.FEntryID = FQCReqEntryID
     INNER JOIN ICQCBill tmpHead ON tmpHead.FInterID = tmp.FInterID INNER JOIN 
     (Select u1.FSourceInterID as FSourceInterID,u1.FSourceEntryID,u1.FItemID,SUM(u1.FQty) as FQty
     From  ICStockBillEntry u1 
     Where u1.FSourceTrantype=1001001 AND u1.FChkPassItem =1058 And u1.FInterID=1936
     GROUP BY u1.FSourceInterID,u1.FSourceEntryID,u1.FItemID) dest 
     ON dest.FSourceInterID = tmp.FInterID
     AND dest.FItemID = tmpHead.FItemID and dest.FSourceEntryID=tmp.FDetailID 
     INNER JOIN t_MeasureUnit t1 ON src.FUnitID=t1.FItemID
     Update src Set src.FDiscardStockInQty = src.FDiscardStockInQty-dest.FQty
     ,src.FDiscardStockInAuxQty = (src.FDiscardStockInQty-dest.FQty)/CAST(t1.FCoefficient as Decimal(23,10))
     From ICMORptEntry src INNER JOIN 
     QMSourceInfo tmp ON src.FInterID = tmp.FQCReqInterID AND src.FEntryID = FQCReqEntryID
     INNER JOIN ICQCBill tmpHead ON tmpHead.FInterID = tmp.FInterID INNER JOIN 
     (Select u1.FSourceInterID as FSourceInterID,u1.FSourceEntryID,u1.FItemID,SUM(u1.FQty) as FQty
     From  ICStockBillEntry u1 
     Where u1.FSourceTrantype=1001001 AND u1.FChkPassItem =1059 And u1.FInterID=1936
     GROUP BY u1.FSourceInterID,u1.FSourceEntryID,u1.FItemID) dest 
     ON dest.FSourceInterID = tmp.FInterID
     AND dest.FItemID = tmpHead.FItemID and dest.FSourceEntryID=tmp.FDetailID 
     INNER JOIN t_MeasureUnit t1 ON src.FUnitID=t1.FItemID
 END
 ELSE
 Begin
 IF (Select Count(*) From ICStockBillEntry m1 inner join ICStockBillEntry t1 on m1.finterid=t1.fsourceinterid Where m1.FSourceTrantype =581 And t1.FInterID=1936)>0 
     Update src Set src.FQtyStock = src.FQtyStock-dest.FQty
     ,src.FAuxQtyStock = (src.FQtyStock-dest.FQty)/CAST(t1.FCoefficient as Decimal(23,10))
     From ICOperShift src --INNER JOIN 
      --icstockbillentry m1 on m1.fsourceinterid=src.FInterID 
      INNER JOIN
     (Select m1.FSourceInterID,Dests.FItemID,SUM(Dests.FQty) as FQty From icstockbillentry m1 Inner join      (Select u1.FSourceInterID as FSourceInterID,u1.FSourceEntryID,u1.FItemID,SUM(u1.FQty) as FQty
     From  ICStockBillEntry u1 inner join icstockbillentry t1  on t1.finterid=u1.fsourceinterid AND t1.FEntryID=u1.FSourceEntryID 
     Where t1.FSourceTrantype=581 And  u1.FInterID=1936
     GROUP BY u1.FSourceInterID,u1.FSourceEntryID,u1.FItemID) dests 
     ON dests.FSourceInterID = m1.Finterid and dests.FSourceEntryID=m1.FEntryID Group By m1.FSourceInterID,dests.FItemID) dest
     ON dest.FItemID = src.FItemID AND dest.fsourceinterid=src.FInterID 
     INNER JOIN t_MeasureUnit t1 ON src.FUnitID=t1.FItemID
 IF (Select Count(*) From ICStockBillEntry m1 inner join ICStockBillEntry t1 on m1.finterid=t1.fsourceinterid Where m1.FSourceTrantype =551 And t1.FInterID=1936)>0 
     Update src Set src.FQtyStock = src.FQtyStock-dest.FQty
     ,src.FAuxQtyStock = (src.FQtyStock-dest.FQty)/CAST(t1.FCoefficient as Decimal(23,10))
     From ICMORptEntry src --INNER JOIN 
      --icstockbillentry m1 on m1.fsourceinterid=src.FInterID and m1.FSourceEntryID=src.FEntryID 
      INNER JOIN
     (Select m1.FSourceInterID,m1.FSourceEntryID,Dests.FItemID,SUM(Dests.FQty) as FQty From icstockbillentry m1 Inner join      (Select u1.FSourceInterID as FSourceInterID,u1.FSourceEntryID,u1.FItemID,SUM(u1.FQty) as FQty
     From  ICStockBillEntry u1 inner join icstockbillentry t1  on t1.finterid=u1.fsourceinterid AND t1.FEntryID=u1.FSourceEntryID 
     Where t1.FSourceTrantype=551 AND t1.FChkPassItem = 1058 And  u1.FInterID=1936
     GROUP BY u1.FSourceInterID,u1.FSourceEntryID,u1.FItemID) dests 
     ON dests.FSourceInterID = m1.Finterid and dests.FSourceEntryID=m1.FEntryID Group By m1.FSourceInterID,m1.FSourceEntryID,dests.FItemID) dest
     ON dest.FItemID = src.FItemID AND dest.fsourceinterid=src.FInterID and dest.FSourceEntryID=src.FEntryID 
     INNER JOIN t_MeasureUnit t1 ON src.FUnitID=t1.FItemID
     Update src Set src.FDiscardStockInQty = src.FDiscardStockInQty-dest.FQty
     ,src.FDiscardStockInAuxQty = (src.FDiscardStockInQty-dest.FQty)/CAST(t1.FCoefficient as Decimal(23,10))
     From ICMORptEntry src --INNER JOIN 
      --icstockbillentry m1 on m1.fsourceinterid=src.FInterID and m1.FSourceEntryID=src.FEntryID 
      INNER JOIN
     (Select m1.FSourceInterID,m1.FSourceEntryID,Dests.FItemID,SUM(Dests.FQty) as FQty From icstockbillentry m1 Inner join      (Select u1.FSourceInterID as FSourceInterID,u1.FSourceEntryID,u1.FItemID,SUM(u1.FQty) as FQty
     From  ICStockBillEntry u1 inner join icstockbillentry t1  on t1.finterid=u1.fsourceinterid AND t1.FEntryID=u1.FSourceEntryID
     Where t1.FSourceTrantype=551 AND t1.FChkPassItem = 1059 And  u1.FInterID=1936
     GROUP BY u1.FSourceInterID,u1.FSourceEntryID,u1.FItemID) dests 
     ON dests.FSourceInterID = m1.Finterid and dests.FSourceEntryID=m1.FEntryID Group By m1.FSourceInterID,m1.FSourceEntryID,dests.FItemID) dest
     ON dest.FItemID = src.FItemID AND dest.fsourceinterid=src.FInterID and dest.FSourceEntryID=src.FEntryID 
     INNER JOIN t_MeasureUnit t1 ON src.FUnitID=t1.FItemID
 END 
     Update src Set src.FQtyStock = src.FQtyStock-dest.FQty
     ,src.FAuxQtyStock = (src.FQtyStock-dest.FQty)/CAST(t1.FCoefficient as Decimal(23,10))
     From ICMORptEntry src INNER JOIN 
     QMSourceInfo tmp ON src.FInterID = tmp.FQCReqInterID AND src.FEntryID = FQCReqEntryID
     INNER JOIN ICQCBill tmpHead ON tmpHead.FInterID = tmp.FInterID INNER JOIN 
     (Select m1.FSourceInterID,m1.FSourceEntryID,Dests.FItemID,SUM(Dests.FQty) as FQty From icstockbillentry m1 Inner join 
     (Select u1.FSourceInterID as FSourceInterID,u1.FSourceEntryID,u1.FItemID,SUM(u1.FQty) as FQty
       From  ICStockBillEntry u1 inner join icstockbillentry t1  on t1.finterid=u1.fsourceinterid and t1.fentryid=u1.fsourceentryid
     Where u1.FSourceTrantype=2 AND u1.FChkPassItem =1058 And u1.FInterID=1936
     GROUP BY u1.FSourceInterID,u1.FSourceEntryID,u1.FItemID) dests 
     ON dests.FSourceInterID = m1.Finterid and dests.FSourceEntryID=m1.FEntryID Group By m1.FSourceInterID,m1.FSourceEntryID,dests.FItemID) dest
     ON dest.FSourceInterID = tmp.FInterID
     AND dest.FItemID = tmpHead.FItemID and dest.FSourceEntryID=tmp.FDetailID 
     INNER JOIN t_MeasureUnit t1 ON src.FUnitID=t1.FItemID
     Update src Set src.FDiscardStockInQty = src.FDiscardStockInQty-dest.FQty
     ,src.FDiscardStockInAuxQty = (src.FDiscardStockInQty-dest.FQty)/CAST(t1.FCoefficient as Decimal(23,10))
     From ICMORptEntry src INNER JOIN 
     QMSourceInfo tmp ON src.FInterID = tmp.FQCReqInterID AND src.FEntryID = FQCReqEntryID
     INNER JOIN ICQCBill tmpHead ON tmpHead.FInterID = tmp.FInterID INNER JOIN 
     (Select m1.FSourceInterID,m1.FSourceEntryID,Dests.FItemID,SUM(Dests.FQty) as FQty From icstockbillentry m1 Inner join 
     (Select u1.FSourceInterID as FSourceInterID,u1.FSourceEntryID,u1.FItemID,SUM(u1.FQty) as FQty
       From  ICStockBillEntry u1 inner join icstockbillentry t1  on t1.finterid=u1.fsourceinterid and t1.fentryid=u1.fsourceentryid
     Where u1.FSourceTrantype=2 AND u1.FChkPassItem =1059 And u1.FInterID=1936
     GROUP BY u1.FSourceInterID,u1.FSourceEntryID,u1.FItemID) dests 
     ON dests.FSourceInterID = m1.Finterid and dests.FSourceEntryID=m1.FEntryID Group By m1.FSourceInterID,m1.FSourceEntryID,dests.FItemID) dest
     ON dest.FSourceInterID = tmp.FInterID
     AND dest.FItemID = tmpHead.FItemID and dest.FSourceEntryID=tmp.FDetailID 
     INNER JOIN t_MeasureUnit t1 ON src.FUnitID=t1.FItemID

IF Object_id('TEMPDB..#TEMP_StockQty') IS NOT NULL 
  DROP TABLE #TEMP_StockQty
CREATE TABLE #TEMP_StockQty ( 
  FICMOinteriD INT,
  FStockQty Decimal(23,10), 
  FChkPassItem INT
  ) 
 
 INSERT #TEMP_StockQty
 SELECT   d.FICMOinteriD,sum(d.FStockQty) AS  FStockQty, D.FChkPassItem AS FChkPassItem
 FROM @#DataFE821953ED364710939D777AFA463671 d
 GROUP BY d.FChkPassItem, d.FICMOinterID
 
 IF (select count(1) from #TEMP_StockQty ) >0  
   UPDATE u1 SET
   u1.FStockQty=ISNULL(u1.FStockQty,0)- m2.FStockQty,
   u1.FAuxStockQty=ISNULL(u1.FAuxStockQty,0)-
   m2.FStockQty/cast(t2.FCoEfficient as float)
   FROM ICMO u1 INNER JOIN #TEMP_StockQty m2 on u1.FInterID=m2.FICMOInterID and m2.FChkPassItem = 1058 
   INNER JOIN t_MeasureUnit t2 ON u1.FUnitID=t2.FMeasureUnitID 
   UPDATE u1 SET
   u1.FDiscardStockInQty=ISNULL(u1.FDiscardStockInQty,0)- m2.FStockQty,
   u1.FDiscardStockInAuxQty=ISNULL(u1.FDiscardStockInAuxQty,0)-
   m2.FStockQty/cast(t2.FCoEfficient as float)
   FROM ICMO u1 INNER JOIN  #TEMP_StockQty  m2 on u1.FInterID=m2.FICMOInterID and m2.FChkPassItem = 1059 
   INNER JOIN t_MeasureUnit t2 ON u1.FUnitID=t2.FMeasureUnitID 
   DROP TABLE #TEMP_StockQty

   IF OBJECT_ID('tempdb..#tmpPMCIndex','U') IS NOT NULL 
       DROP TABLE #tmpPMCIndex
   SELECT u1.FIndex
              ,CASE when m2.FQty>=(ISNULL(m2.FStockQty,0)+ISNULL(m2.FDiscardStockInQty,0)) THEN m2.FQty-(ISNULL(m2.FStockQty,0)+ISNULL(m2.FDiscardStockInQty,0))  ELSE 0 END AS  FWillInQty
              ,ISNULL(m2.FStockQty,0) AS FStockQty
   INTO #tmpPMCIndex 
   FROM ICPlan_PmcDetail u1 
   INNER JOIN  ICMO  m2 on u1.FRelInterID=m2.FInterID AND u1.FRelTranType=85 AND u1.FRelEntryID=0 AND u1.FBillType=1
   INNER JOIN @#DataFE821953ED364710939D777AFA463671  m3 on  m2.FInterID=m3.FICMOInterID 
   OPTION(RECOMPILE) 
   CREATE CLUSTERED INDEX PK_#tmpPMCIndex ON #tmpPMCIndex(FIndex)  

   UPDATE u1 
   SET  u1.FWillInQty=ISNULL(u2.FWillInQty,0)
          ,u1.FStockQty=ISNULL(u2.FStockQty,0)
   FROM ICPlan_PmcDetail u1 
   INNER JOIN  #tmpPMCIndex u2 ON u1.FIndex=u2.FIndex 
   DROP TABLE #tmpPMCIndex

Declare @#ICSTOCKFE821953ED364710939D777AFA463671 table (FICMOInterID int ,FPPBOMEntryID int ,FItemID int ,FStockQty decimal(28,10))
Insert into @#ICSTOCKFE821953ED364710939D777AFA463671   SELECT u2.FICMOInterID,u2.FPPBOMEntryID,u2.FItemID,SUM(ISNULL(u2.FQty,0)) AS FStockQty  FROM ICStockBillEntry  u2 
   WHERE  u2.FSourceTrantype>0 and u2.FPPBOMEntryID>0 and  u2.FInterID= 1936
   GROUP BY u2.FICMOInterID,u2.FPPBOMEntryID,u2.FItemID
 IF (select count(1) from @#ICSTOCKFE821953ED364710939D777AFA463671 ) >0 
BEGIN
   UPDATE u1 SET
   u1.FStockQty=ISNULL(u1.FStockQty,0)- ISNULL(m2.FStockQty,0) ,
   u1.FAuxStockQty=ISNULL(u1.FAuxStockQty,0)-ISNULL(ROUND(
  ISNULL(cast(m2.FStockQty as float),0) /cast(t2.FCoEfficient as float),t1.FQtyDecimal),0)
   FROM PPBOMEntry u1 INNER JOIN @#ICSTOCKFE821953ED364710939D777AFA463671
     m2 
   ON u1.FItemID=m2.FItemID AND u1.FEntryID=m2.FPPBOMEntryID AND u1.FICMOInterID=m2.FICMOinterID 
   INNER JOIN t_ICItem t1 ON m2.FItemID=t1.FItemID 
   INNER JOIN t_MeasureUnit t2 ON u1.FUnitID=t2.FMeasureUnitID 
   WHERE u1.FMaterielType IN (372,373,374)  --联副产品等级品件 

   UPDATE u1 
        SET  u1.FWillInQty=CASE WHEN ISNULL(u2.FQtyMust,0)>=ISNULL(u2.FStockQty,0) THEN ISNULL(u2.FQtyMust,0)-ISNULL(u2.FStockQty,0) ELSE 0 END 
              ,u1.FStockQty=ISNULL(u2.FStockQty,0)
   FROM ICPlan_PmcDetail u1 
   INNER JOIN  PPBOMEntry  u2 on  u1.FRelTranType=88 AND u1.FRelInterID=u2.FInterID AND  u1.FRelEntryID=u2.FEntryID AND u1.FBillType=16
   INNER JOIN @#ICSTOCKFE821953ED364710939D777AFA463671 u3 on u1.FParentInterID=u3.FICMOInterID AND u3.FICMOInterID=u1.FParentInterID AND u1.FParentTrantype=85
   WHERE u2.FMaterielType IN (372,373,374)  --联副产品等级品件 
END
SET NOCOUNT ON
--构建临时表 记录源单信息，如入库单、任务单汇报单
CREATE TABLE #SourceBill(
               FInterID INT DEFAULT -1--源单内码
              ,FEntryID INT DEFAULT -1
              ,FTranType INT DEFAULT -1--源单类型
              ,FDeleted INT DEFAULT 0--删除单据
             )
CREATE TABLE #ItemConsume(
            FInterID INT DEFAULT -1
           ,FEntryID INT DEFAULT -1
           ,FSourceInterID INT--源单内码
           ,FSourceEntryID INT--源单分录
           ,FICMOInterID INT--任务单内码
           ,FICMOEntryID INT DEFAULT 0--委外订单分录
           ,FProductID INT--产品ID
           ,FPPBOMInterID INT--投料单内码
           ,FPPBOMEntryID INT--投料单分录
           ,FQtyConsume DECIMAL(23,10)--材料耗用
           ,FAuxQtyConsume DECIMAL(23,10)--常用单位材料耗用
           )

INSERT INTO #SourceBill(FInterID,FEntryID,FTranType,FDeleted)
VALUES(1936,-1,2,0)
--获取原来的耗用信息
INSERT INTO #ItemConsume(FInterID,FSourceInterID,FSourceEntryID,FICMOInterID,FICMOEntryID,FProductID,FPPBOMInterID,FPPBOMEntryID,FQtyConsume,FAuxQtyConsume)
--产品入库单
SELECT u.FInterID,u1.FInterID,u1.FEntryID,v.FICMOInterID,v.FICMOEntryID,v.FItemID,u.FPPBOMInterID,u.FPPBOMEntryID,u.FQtyConsume,u.FAuxQtyConsume
    FROM ICShop_ItemConsumeEntry u
    INNER JOIN ICShop_ItemConsume v ON v.FInterID=u.FInterID
    INNER JOIN ICStockBillEntry u1 ON u1.FInterID=v.FSourceInterID AND u1.FEntryID=v.FSourceEntryID
INNER JOIN #SourceBill s ON s.FInterID=u1.FInterID AND u1.FEntryID = CASE WHEN s.FEntryID <> -1 THEN s.FEntryID ELSE u1.FEntryID END
WHERE (s.FEntryID=-1 OR (s.FEntryID>0 AND s.FEntryID=u1.FEntryID)) AND  (v.FIsAutoGen=1 OR s.FDeleted=1)--只取自动生成的记录，手工修改过的不进行修改,或如果业务单据被删除也是需要去更新的

IF @@RowCount<>0--没有需要自动生成的耗用记录
BEGIN
--更新投料单
UPDATE u SET FQtyConsume=u.FQtyConsume+(-1*s.FQtyConsume)
            ,FAuxQtyConsume= u.FAuxQtyConsume+(-1*s.FAuxQtyConsume) 
            ,FWIPQty=u.FWIPQty-(-1*s.FQtyConsume)--更新WIP
            ,FWIPAuxQty=u.FWIPAuxQty-(-1*s.FAuxQtyConsume) 
FROM PPBOMEntry u
INNER JOIN (
        SELECT FPPBOMInterID,FPPBOMEntryID,FProductID,SUM(FQtyConsume) AS FQtyConsume,SUM(FAuxQtyConsume) AS FAuxQtyConsume
        FROM #ItemConsume GROUP BY FPPBOMInterID,FPPBOMEntryID,FProductID 
) s ON s.FPPBOMInterID=u.FInterID AND s.FPPBOMEntryID=u.FEntryID

    --删除耗用记录(必须关联#ItemConsume，考虑删除分录的情况)
    DELETE u FROM ICShop_ItemConsumeEntry u INNER JOIN ICShop_ItemConsume v ON v.FInterID=u.FInterID INNER JOIN #SourceBill s ON s.FInterID=v.FSourceInterID AND s.FTranType=v.FSourceTranType INNER JOIN #ItemConsume ic ON ic.FSourceInterID=v.FSourceInterID AND ic.FSourceEntryID=v.FSourceEntryID
    DELETE v FROM ICShop_ItemConsume v INNER JOIN #SourceBill s ON s.FInterID=v.FSourceInterID AND s.FTranType=v.FSourceTranType INNER JOIN #ItemConsume ic ON ic.FSourceInterID=v.FSourceInterID AND ic.FSourceEntryID=v.FSourceEntryID
END
--删除临时表
DROP TABLE #SourceBill
DROP TABLE #ItemConsume


Declare @#ICMOFE821953ED364710939D777AFA463671 table (FICMOInterID int ,FStatus int)
Insert into @#ICMOFE821953ED364710939D777AFA463671
 select Distinct FICMOInterID, 0 as FStatus 
 from @#DataFE821953ED364710939D777AFA463671
UPDATE Temp001 SET FSTATUS=(CASE WHEN ROUND(m1.FAuxStockQty+m1.FDiscardStockInAuxQty+m1.FAuxQtyLost,t1.FQtyDecimal)>=ROUND(m1.FAuxInLowLimitQty,t1.FQtyDecimal)
                            THEN 0 ELSE 1 END)
FROM @#ICMOFE821953ED364710939D777AFA463671 Temp001
INNER JOIN ICMO m1  ON m1.FInterID=Temp001.FICMOInterID
INNER JOIN t_ICItemBase t1 ON m1.FItemID=t1.FItemID
IF EXISTS(SELECT TOP 1 1 FROM PPBOMEntry u1 
          INNER JOIN @#ICMOFE821953ED364710939D777AFA463671 Temp ON u1.FICMOInterID=Temp.FICMOInterID 
          WHERE u1.FMaterielType IN (371)
         )
BEGIN
UPDATE Temp001 SET FStatus=(CASE WHEN FStatus=-1 THEN 0 ELSE FStatus END) +ISNULL(t1.FCount,0)  FROM @#ICMOFE821953ED364710939D777AFA463671 Temp001 
LEFT JOIN (
           SELECT COUNT(1) AS FCount,u1.FICMOInterID 
           FROM PPBOMEntry u1 
           INNER JOIN @#ICMOFE821953ED364710939D777AFA463671 Temp ON u1.FICMOInterID=Temp.FICMOInterID 
           INNER JOIN t_ICItemBase t1 ON u1.FItemID=t1.FItemID
           WHERE u1.FMaterielType IN (371) AND ROUND(u1.FAuxStockQty,t1.FQtyDecimal)<ROUND(u1.FAuxQtyMust,t1.FQtyDecimal)
           GROUP BY u1.FICMOInterID 
          ) t1 ON temp001.FICMOInterID=t1.FICMOInterID
END
DECLARE @StartDate AS DateTime
SELECT @StartDate=FStartDate FROM T_PeriodDate
    WHERE FYear=(SELECT TOP 1 ISNULL(FValue,0) FROM t_SystemProfile WHERE FKey ='CurrentYear' AND FCategory='IC')
      AND FPeriod=(SELECT TOP 1 ISNULL(FValue,0) FROM t_SystemProfile WHERE FKey ='CurrentPeriod' AND FCategory='IC')
Update m1
    SET FStatus=(CASE WHEN Temp001.FStatus=0 THEN 3 ELSE (CASE WHEN FCloseDate>=@StartDate THEN 1 ELSE m1.FStatus END) END)
   ,FCloseDate=(CASE WHEN Temp001.FStatus=0 THEN Convert(varchar(10) ,Getdate(),121) ELSE (CASE WHEN FCloseDate>=@StartDate THEN  Null ELSE m1.FCloseDate END) END)
   ,FCheckerID=(CASE WHEN Temp001.FStatus=0 THEN 16394 ELSE (CASE WHEN FCloseDate>=@StartDate THEN  Null ELSE m1.FCheckerID END) END)
   ,FMrpClosed=(CASE WHEN Temp001.FStatus=0 THEN 1 ELSE (CASE WHEN FCloseDate>=@StartDate THEN 0 ELSE m1.FMrpClosed END) END)
   ,FHandworkClose=(CASE WHEN Temp001.FStatus=0 THEN FHandworkClose ELSE 0 END)
FROM ICMO m1 INNER JOIN @#ICMOFE821953ED364710939D777AFA463671 Temp001 ON m1.FInterID=Temp001.FICMOInterID 

IF EXISTS(SELECT 1 FROM @#ICMOFE821953ED364710939D777AFA463671 t1 INNER JOIN ICMO t2 ON t2.FInterID=t1.FICMOInterID AND t2.FStatus=3)
BEGIN
    Delete t1 FROM ICPlan_PMCDetail t1 
    INNER JOIN @#ICMOFE821953ED364710939D777AFA463671 t2 ON t1.FParentInterID=t2.FICMOInterID  AND  t1.FParentTranType=85 AND t1.FParentEntryID=0 
    INNER JOIN ICMO t3 ON t3.FInterID=t2.FICMOInterID AND t3.FStatus=3
END

IF EXISTS(SELECT 1 FROM @#ICMOFE821953ED364710939D777AFA463671 t1 INNER JOIN ICMO t2 ON t2.FInterID=t1.FICMOInterID AND t2.FStatus<>3)
BEGIN
    INSERT INTO ICPlan_PMCDetail(FItemID,FUnitID,FNeedDate,FSrcTranType,FSrcInterID,FSrcEntryID,FRelTranType,FRelInterID,FRelEntryID, FParentTranType,FParentInterID,FParentEntryID,
    FNeedQty,FStockQty,FWillInQty,FPlanOrderInterID,FBillType,FBomCategory,FBomInterID,FPlanCategory,FAuxPropID,FPlanMode,FMtoNo)
    SELECT  v1.FItemID,v2.FUnitID,v1.FPlanFinishDate,v1.FSourceTranType,v1.FSourceInterId,v1.FSourceEntryID,85,v1.FInterID,0 AS FEntryID
            ,85 AS FParentTranType,v1.FInterID AS FParentInterID,0 AS FParentEntryID
            ,v1.FQty AS FNeedQty,v1.FStockQty+v1.FDiscardStockInQty,v1.FQty-v1.FStockQty-v1.FDiscardStockInQty AS FWillInQty,v1.FPlanOrderInterID,1 AS FBillType
            ,v1.FBomCategory,v1.FBomInterID,v1.FPlanCategory,v1.FAuxPropID,v1.FPlanMode,v1.FMtoNo
    From ICMO v1
    INNER JOIN t_ICItemBase v2 ON v1.FItemID=v2.FItemID
    INNER JOIN @#ICMOFE821953ED364710939D777AFA463671 v3 ON v1.FInterID=v3.FICMOInterID  AND v1.FStatus<>3 
    Where v1.FQty>(v1.FStockQty+v1.FDiscardStockInQty) 
    AND NOT EXISTS(SELECT 1 FROM ICPlan_PMCDetail  WITH(NOLOCK)  WHERE FRelTranType=85 AND FRelInterID=v1.FInterID AND FRelEntryID=0 AND FBillType=1)
    INSERT INTO ICPlan_PMCDetail(FItemID,FUnitID,FNeedDate,FRelTranType,FRelInterID,FRelEntryID,FParentTranType,FParentInterID,FParentEntryID,
    FNeedQty,FStockQty,FWillOutQty,FWillInQty, FBillType,FPlanCategory,FAuxPropID,FPlanMode,FMtoNo)
    SELECT t1.FItemID,t1.FUnitID,t1.FSendItemDate AS FNeedDate,88 AS FTranType,t1.FInterID,t1.FEntryID 
               ,ISNULL(t3.fTranType,0) AS FParentTranType,ISNULL(t2.FICMOInterID,0) AS FParentInterID,0 AS FParentEntryID
               ,t1.FQtyMust+t1.FQtySupply AS FNeedQty,t1.FStockQty,CASE WHEN t1.FMaterielType IN(372,373,374) THEN 0 ELSE t1.FQtyMust+t1.FQtySupply-t1.FStockQty  END FWillOutQty
               ,CASE WHEN t1.FMaterielType IN(372,373,374) THEN  t1.FQtyMust+t1.FQtySupply-t1.FStockQty  ELSE 0 END FWillInQty
               ,CASE WHEN t1.FMaterielType IN(372,373,374) THEN  16 ELSE 20 END FBillType
               ,ISNULL(t3.FPlanCategory,0) AS FPlanCategory,t1.FAuxPropID,t1.FPlanMode,t1.FMtoNo 
    FROM PPBOMEntry t1
    INNER JOIN PPBOM t2 ON t1.FInterID=t2.FInTerID AND t2.FOrderEntryID=0
    INNER JOIN ICMO t3 ON t2.FICMOInterID=t3.FInterID
    INNER JOIN t_MeasureUnit t4 ON t1.FUnitID=t4.FItemID 
    INNER JOIN @#ICMOFE821953ED364710939D777AFA463671 t5 ON t3.FInterID=t5.FICMOInterID  AND t3.FStatus<>3 
    WHERE  t1.FMaterielType<>376  AND t1.FQtyMust+t1.FQtySupply>=t1.FStockQty
        AND NOT EXISTS(SELECT 1 FROM ICPlan_PMCDetail WITH(NOLOCK)  WHERE FRelTranType=88 AND FRelInterID=t1.FInterID AND FRelEntryID=t1.FEntryID)
    ORDER BY t1.FInterID,t1.FEntryID
END

 UPDATE tmpEntry SET tmpEntry.FStatus = (CASE WHEN Temp001.FStatus=0 THEN 3 ELSE (CASE WHEN FCloseDate>=@StartDate THEN 1 ELSE tmpEntry.FStatus END) END)
 FROM SHWorkBillEntry  tmpEntry
 INNER JOIN SHWorkBill tmpBill ON tmpEntry.FInterID = tmpBill.FInterID
 INNER JOIN ICMO m ON m.FInterID = tmpBill.FICMOInterID AND m.FWorktypeID = 57
 INNER JOIN @#ICMOFE821953ED364710939D777AFA463671 Temp001 ON m.FInterID=Temp001.FICMOInterID 

go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
SELECT m2.FICMOInterID 
FROM ICMO u1 INNER JOIN ICStockBillEntry m2 ON u1.FInterID = m2.FICMOInterID 
WHERE m2.FInterID = 1936
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
SELECT ISNULL(FValue,1) AS FValue from t_Systemprofile
 WHERE FCategory='APS' AND Fkey = 'FAuxQtyFinishOriginate'

go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
SELECT distinct ibe.FICMOInterID FROM ICStockBillEntry ibe
INNER JOIN ICStockBill ib ON ibe.FInterID=ib.FInterID AND ib.FTranType=2
INNER JOIN ICMO i ON i.FInterID=ibe.FICMOInterID AND i.FStatus=3
WHERE ibe.FInterID=1936
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED 
SELECT FCategory,FKey,FValue FROM t_systemprofile 
WHERE (FKey IN ('EnableSupplierCooperation')
     AND FCategory='IC') 

go
SELECT FComponentSrv FROM t_ThirdPartyComponent WHERE FTypeID=2 AND FTypeDetailID=200003 ORDER BY FIndex
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
Select FRoB from icStockBill where FInterID=1936 and  FTranType=2
go
Select count(*)  from icStockBillentry where FSNlistID>0 and  FInterID=1936
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
INSERT INTO t_SuspendWorkPushQueue(FPushTypeID,FBillTypeID,FInterID,FEntryID,FStatus,FExtInfo)
VALUES (30210,85,1936,0,0,'lngCheckSwitch=1|lngProcessStatus=8|bICMOBIll=False')
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
select FValue from t_SystemProfile where FCategory='IC' and FKey='CreditEnable'
go
select * from ICCreditBill where FSource=0 and FID=2
go
DELETE  ICStockBill WHERE  FInterID=1936
go
INSERT INTO ICStockBillEntry (FInterID,FEntryID,FBrNo,FItemID,FAuxPropID,FBatchNo,FQtyMust,FQty,FUnitID,FAuxQtyMust,Fauxqty,FSecCoefficient,FSecQty,FAuxPlanPrice,FPlanAmount,Fauxprice,Famount,Fnote,FKFDate,FKFPeriod,FPeriodDate,FDCStockID,FDCSPID,FSNListID,FSourceBillNo,FSourceTranType,FSourceInterId,FSourceEntryID,FICMOBillNo,FICMOInterID,FPPBomEntryID,FPlanMode,FMTONo,FChkPassItem,weiwaiqingkuang,FEntrySelfA0241,FEntrySelfA0242)  SELECT 1936,1,'0',2578,0,'',0,1,261,0,1,0,0,0,0,0,0,'',Null,0,Null,470,10,4,'',0,0,0,'',0,0,14036,'',1058,'','','' 
EXEC p_UpdateBillRelateData 2,1936,'ICStockBill','ICStockBillEntry' 

go
INSERT INTO ICStockBill(FInterID,FBillNo,FBrNo,FTranType,FCancellation,FStatus,FUpStockWhenSave,FROB,FHookStatus,Fdate,FDeptID,FCheckDate,FFManagerID,FSManagerID,FBillerID,FMultiCheckDate1,FMultiCheckDate2,FMultiCheckDate3,FMultiCheckDate4,FMultiCheckDate5,FMultiCheckDate6,FVchInterID,FSelTranType,FManageType,FPrintCount,FHeadSelfA0232) SELECT 1936,'CIN000017','0',2,0,0,1,1,0,'2019-04-17',335,Null,2487,2485,16394,Null,Null,Null,Null,Null,Null,0,85,0,0,''
go
 UPDATE ICStockBill SET FUUID='{0F743F08-3317-4394-895F-48D2E0E864EE}' WHERE FInterID=1936
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
SELECT TOP 1 1 FROM ICStockBill WHERE FROB = 1 AND FInterID = 1936
go
Select FValue From t_SystemProfile  Where FCategory='SH' and FKey='FirstMainLastSubstitute'
go
SELECT FComponentSrv,FDescription FROM t_ThirdPartyComponent WHERE FTypeID=2 AND FTypeDetailID=300009 ORDER BY FIndex
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
SELECT t1.FHeadTable,t1.FEntryTable,t2.FLookUpCls
FROM ICTransactiontype t1 left join ICTemplate t2 on t1.FTemplateID=t2.FID and t2.FLookUpCls=-35
where t1.FID=2
go
Select top 1 t1.FSourceTranType, t2.FName as FName, t2.FHeadTable, t2.FEntryTable 
From ICStockBillEntry t1 
Left Join ICTransactiontype t2 On t1.FSourceTranType=t2.FID 
 Where t1.FSourceTranType<>0  AND t1.FInterID = 1936
go
SET TRANSACTION ISOLATION LEVEL READ UnCOMMITTED
go
SELECT FUpStockWhenSave FROM ICStockBill WHERE FInterID = 1936
go
SELECT FKey,FValue FROM t_systemProfile WHERE FCategory ='IC' AND FKey IN('SEOrderAvailableInventory', 'SEOrderAvailableInventoryBill')
go
SET TRANSACTION ISOLATION LEVEL READ UnCOMMITTED
go
SELECT FKey,FValue FROM t_systemProfile WHERE FCategory ='IC' AND FKey IN('UpdateWhenSave','SEOrderAvailableInventory', 'SEOrderAvailableInventoryBill')
go
SET TRANSACTION ISOLATION LEVEL READ UnCOMMITTED
go
SELECT T.FHeadTable, T1.FCaption AS FCaption, T1.FFieldName,T2.FName,T2.FItemClassID,ISNULL(T2.FSQLTableName,'') AS FSQLTableName FROM ICTransactionType t Inner Join ICTemplate t1 on t.FTemplateID=t1.FID Inner Join t_ItemClass t2 on t1.FLookupcls=t2.FItemClassID Where t2.FItemClassID Not in (2001,2023) AND t1.FRelateOutTbl=0 AND t2.FType=1 AND t.FID = 2
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
Select FValue from t_SystemProfile where FCategory='BOS' and FKey='AccessDataUsed'
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
select FUserID from t_Group where FUserID = 16394 and FGroupID = 1
go
SELECT t1.FDCStockID AS FID,t2.FNumber,t2.FName FROM ICStockBill t1  Inner Join t_Item t2 on t1.FDCStockID =t2.FItemID  WHERE t2.FItemClassID=5 AND t1.FInterID=1936 AND t2.FDetail=1 AND t2.FDeleted=1 
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
Select FValue from t_SystemProfile where FCategory='BOS' and FKey='AccessDataUsed'
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
select FUserID from t_Group where FUserID = 16394 and FGroupID = 1
go
SELECT t1.FDeptID AS FID,t2.FNumber,t2.FName FROM ICStockBill t1  Inner Join t_Item t2 on t1.FDeptID =t2.FItemID  WHERE t2.FItemClassID=2 AND t1.FInterID=1936 AND t2.FDetail=1 AND t2.FDeleted=1 
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
Select FValue from t_SystemProfile where FCategory='BOS' and FKey='AccessDataUsed'
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
select FUserID from t_Group where FUserID = 16394 and FGroupID = 1
go
SELECT t1.FFManagerID AS FID,t2.FNumber,t2.FName FROM ICStockBill t1  Inner Join t_Item t2 on t1.FFManagerID =t2.FItemID  WHERE t2.FItemClassID=3 AND t1.FInterID=1936 AND t2.FDetail=1 AND t2.FDeleted=1 
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
Select FValue from t_SystemProfile where FCategory='BOS' and FKey='AccessDataUsed'
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
select FUserID from t_Group where FUserID = 16394 and FGroupID = 1
go
SELECT t1.FSManagerID AS FID,t2.FNumber,t2.FName FROM ICStockBill t1  Inner Join t_Item t2 on t1.FSManagerID =t2.FItemID  WHERE t2.FItemClassID=3 AND t1.FInterID=1936 AND t2.FDetail=1 AND t2.FDeleted=1 
go
SELECT T.FEntryTable, T1.FHeadCaption AS FCaption, T1.FFieldName,T2.FName,T2.FItemClassID,ISNULL(T2.FSQLTableName,'') AS FSQLTableName FROM ICTransactionType t Inner Join ICTemplateEntry t1 on t.FTemplateID=t1.FID Inner Join t_ItemClass t2 on t1.FLookupcls=t2.FItemClassID Where t2.FItemClassID Not in (2001,2023) AND t1.FRelateOutTbl=0 AND t2.FType=1 AND t.FID = 2
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
Select FValue from t_SystemProfile where FCategory='BOS' and FKey='AccessDataUsed'
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
select FUserID from t_Group where FUserID = 16394 and FGroupID = 1
go
SELECT t1.FDCStockID as FID,t2.FNumber,t2.FName FROM ICStockBillEntry t1  Inner Join t_Item t2 on t1.FDCStockID =t2.FItemID  WHERE t2.FItemClassID=5 And t1.FInterID=1936 AND t2.FDetail=1 AND t2.FDeleted=1 
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
Select FValue from t_SystemProfile where FCategory='BOS' and FKey='AccessDataUsed'
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
select FUserID from t_Group where FUserID = 16394 and FGroupID = 1
go
SELECT t1.FItemID as FID,t2.FNumber,t2.FName FROM ICStockBillEntry t1  Inner Join t_Item t2 on t1.FItemID =t2.FItemID  WHERE t2.FItemClassID=4 And t1.FInterID=1936 AND t2.FDetail=1 AND t2.FDeleted=1 
go
SELECT T.FHeadTable, T1.FCaption AS FCaption, T1.FFieldName,T1.FLookUpCls FROM ICTransactionType t Inner Join ICTemplate t1 on t.FTemplateID=t1.FID Where t1.FRelateOutTbl=0 AND T1.FLookUpCls=12 AND t.FID = 2
go
SELECT T.FEntryTable, T1.FHeadCaption AS FCaption, T1.FFieldName,T1.FLookUpCls FROM ICTransactionType t Inner Join ICTemplateEntry t1 on t.FTemplateID=t1.FID Where t1.FRelateOutTbl=0 AND T1.FLookUpCls=12 AND t.FID = 2
go
SELECT T.FHeadTable, T1.FCaption AS FCaption, T1.FFieldName,T1.FLookUpCls FROM ICTransactionType t Inner Join ICTemplate t1 on t.FTemplateID=t1.FID Where t1.FRelateOutTbl=0 AND T1.FLookUpCls=13 AND t.FID = 2
go
SELECT T.FEntryTable, T1.FHeadCaption AS FCaption, T1.FFieldName,T1.FLookUpCls FROM ICTransactionType t Inner Join ICTemplateEntry t1 on t.FTemplateID=t1.FID Where t1.FRelateOutTbl=0 AND T1.FLookUpCls=13 AND t.FID = 2
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
SELECT Getdate() 
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
SELECT FCategory,FKey,FValue FROM t_systemprofile 
WHERE (FKey IN ('StartPeriod','CurrentPeriod','ICClosed','UseShortNumber','ISUseMultiCheck','UseHighInv','UseLowInv',
                'UseSafeInv','ShowUnderTip','CurrentYear','BillStatus',
                'IsOkToModAfterClose','WorkCalendarset','UseOrderBatchTrace','UseLockStock',
                'AlertSELowPrice','IsUsePurPrcMgr','AlertSELowPriceWhenCheck','PurHPriceControl','PurHPricePSW','PurHPriceZero','PurHPriceContrlPoint','AlertHighPriceWhenCheck',
                'UseInvMgr','SameUserApprovalAndUnApproval','POQtyLargeStock','POInstockQtyLargePO','CQtyLargerSEQty','OrdStockOutByProportion','AllowPurchase','CQtyLargerPOQty')
                AND FCategory='IC') 
  OR (FCategory='General' AND FKey='SingleMan') 

go
SELECT  FHeadTable, FEntryTable FROM ICTransactionType WHERE FID=2
go
SELECT * FROM ICStockBill WHERE FInterID=1936 AND FTranType=2

go
SELECT * FROM ICStockBillEntry WHERE FInterID=1936

go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
SELECT FValue FROM t_SystemProfile WHERE Upper(FCategory)='IC' AND Upper(FKey)='UPSTOCKWHENSAVE'
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
SELECT FValue FROM t_SystemProfile WHERE Upper(FCategory)='IC' AND Upper(FKey)='STRICTCTRLBACKQTY'
go
SELECT FComponentSrv FROM t_ThirdPartyComponent WHERE FTypeID=2 AND FTypeDetailID=200001 ORDER BY FIndex
go
SELECT ISNULL(FValue,0) FROM t_SystemProfile WHERE FCateGory = 'IC' AND FKey = 'EnableMtoPlanMode'
go
SET TRANSACTION ISOLATION LEVEL READ UnCOMMITTED
go
 SELECT TOP 1 1 FROM SysObjects WHERE Name='t_SMEComponents' AND XType='U' 
go
select t.FCategory from t_SMEComponents t where FComponent='K3MCheckBill.CheckNow' and t.FCategory='YYHY'
go
DROP TABLE #TempBill
go
SET NOCOUNT ON
CREATE TABLE #TempBill
(FID INT IDENTITY (1,1),FBrNo VARCHAR(10) NOT NULL DEFAULT(''),
 FInterID INT NOT NULL DEFAULT(0),
 FEntryID INT NOT NULL DEFAULT(0),
 FTranType INT NOT NULL DEFAULT(0),
 FItemID INT NOT NULL DEFAULT(0),
 FBatchNo NVARCHAR(255) NOT NULL DEFAULT(''),
 FMTONo NVARCHAR(255) NOT NULL DEFAULT(''),
 FAuxPropID INT NOT NULL DEFAULT(0),
 FStockID INT NOT NULL DEFAULT(0),
 FStockPlaceID INT NOT NULL DEFAULT(0),
 FKFPeriod INT NOT NULL DEFAULT(0),
 FKFDate VARCHAR(20) NOT NULL DEFAULT(''),
 FSupplyID INT NOT NULL DEFAULT(0),
 FQty DECIMAL(28,10) NOT NULL DEFAULT(0),
 FSecQty DECIMAL(28,10) NOT NULL DEFAULT(0),
 FAmount DECIMAL(28,2)  NOT NULL DEFAULT(0) 
)

go
INSERT INTO #TempBill(FBrNo,FInterID,FEntryID,FTranType,FItemID,FBatchNo,FMTONo,FAuxPropID,FStockID,FStockPlaceID,FKFPeriod,FKFDate,FSupplyID,FQty,FSecQty,FAmount)
SELECT '',u1.FInterID,u1.FEntryID,2 AS FTranType,u1.FItemID,ISNULL(u1.FBatchNo,'') AS FBatchNo,ISNULL(u1.FMTONo,'') AS FMTONo,
       u1.FAuxPropID,ISNULL(u1.FDCStockID,0) AS FDCStockID,ISNULL(u1.FDCSPID,0) AS FDCSPID,ISNULL(u1.FKFPeriod,0) AS FKFPeriod,
       LEFT(ISNULL(CONVERT(VARCHAR(20),u1.FKFdate ,120),''),10) AS FKFDate,FEntrySupply,
1*u1.FQty AS FQty,1*u1.FSecQty AS FSecQty,1*u1.FAmount
FROM ICStockBillEntry u1 
WHERE u1.FInterID=1936
 order by  u1.FEntryID
go
SELECT TOP 1 * FROM t_LockStock
go
SELECT DISTINCT FItemID,FNumber,FName,FIsStockMgr,FTypeID,FUnderStock
FROM (
SELECT DISTINCT t1.FItemID,t1.FNumber,t1.FName,t1.FIsStockMgr,t1.FTypeID,t1.FUnderStock 
FROM t_Stock t1 INNER JOIN ICStockBillEntry u1 ON u1.FDCStockID=t1.FItemID
WHERE u1.FInterID=1936
UNION ALL
SELECT DISTINCT t1.FItemID,t1.FNumber,t1.FName,t1.FIsStockMgr,t1.FTypeID ,t1.FUnderStock
FROM t_Stock t1 INNER JOIN ICStockBillEntry u1 ON u1.FSCStockID=t1.FItemID
WHERE u1.FInterID=1936) tmpStock

go
SELECT DISTINCT FSPID,FNumber,FName
FROM (
SELECT DISTINCT t1.FSPID,t1.FNumber,t1.FName
FROM t_StockPlace t1 INNER JOIN ICStockBillEntry u1 ON u1.FDCSPID=t1.FSPID
WHERE u1.FInterID=1936
UNION ALL
SELECT DISTINCT t1.FSPID,t1.FNumber,t1.FName
FROM t_StockPlace t1 INNER JOIN ICStockBillEntry u1 ON u1.FSCSPID=t1.FSPID
WHERE u1.FInterID= 1936) tmpSP

go
SELECT m1.FItemID,t2.FName,t2.FNumber,m1.FStockID,m1.FStockPlaceID,t3.FName AS FAuxPropName,m1.FBatchNo,m1.FMTONo
FROM (SELECT u1.FItemID,u1.FAuxPropID,u1.FBatchNo,u1.FMTONo,u1.FStockID ,u1.FStockPlaceID,u1.FKFdate,u1.FKFPeriod
,SUM(u1.FQty) AS FBillQty,SUM(u1.FSecQty) AS FBillSecQty
FROM #TempBill u1 
GROUP BY u1.FItemID,u1.FAuxPropID,u1.FBatchNo,u1.FMTONo,u1.FStockID ,u1.FStockPlaceID,u1.FKFdate,u1.FKFPeriod) m1
INNER JOIN t_ICItem t2 ON m1.FItemID=t2.FItemID
INNER JOIN t_AuxItem t3 ON m1.FAuxPropID=t3.FItemID
LEFT OUTER JOIN ICInventory t1 ON t1.FItemID=m1.FItemID AND t1.FBatchNo=m1.FBatchNo AND t1.FMTONo=m1.FMTONo AND t1.FAuxPropID=m1.FAuxPropID
   AND t1.FStockID=m1.FStockID AND t1.FStockPlaceID=m1.FStockPlaceID 
   AND t1.FKFPeriod=m1.FKFPeriod AND t1.FKFDate=m1.FKFDate
WHERE (ISNULL(t1.FQty,0)+m1.FBillQty)*(ISNULL(t1.FSecQty,0)+m1.FBillSecQty)<0 

go
SELECT m1.FItemID,t2.FName,t2.FNumber,m1.FStockID,m1.FStockPlaceID,t3.FName AS FAuxPropName,m1.FBatchNo,m1.FMTONo
FROM (SELECT u1.FItemID,u1.FAuxPropID,u1.FBatchNo,u1.FMTONo,u1.FStockID ,u1.FStockPlaceID,u1.FKFdate,u1.FKFPeriod
,SUM(u1.FQty) AS FBillQty,SUM(u1.FSecQty) AS FBillSecQty
FROM #TempBill u1 
GROUP BY u1.FItemID,u1.FAuxPropID,u1.FBatchNo,u1.FMTONo,u1.FStockID ,u1.FStockPlaceID,u1.FKFdate,u1.FKFPeriod) m1
INNER JOIN t_ICItem t2 ON m1.FItemID=t2.FItemID
INNER JOIN t_AuxItem t3 ON m1.FAuxPropID=t3.FItemID
LEFT OUTER JOIN ICInventory t1 ON t1.FItemID=m1.FItemID AND t1.FBatchNo=m1.FBatchNo AND t1.FMTONo=m1.FMTONo AND t1.FAuxPropID=m1.FAuxPropID
   AND t1.FStockID=m1.FStockID AND t1.FStockPlaceID=m1.FStockPlaceID 
   AND t1.FKFPeriod=m1.FKFPeriod AND t1.FKFDate=m1.FKFDate
WHERE Round((ISNULL(t1.FQty,0)+m1.FBillQty),t2.FQtyDecimal)=0 AND Round((ISNULL(t1.FSecQty,0)+m1.FBillSecQty),t2.FQtyDecimal)<>0 

go
SELECT * FROM #TempBill
go
SELECT ts.FUnderStock,m1.FItemID,t2.FName,t2.FNumber,m1.FStockID,m1.FStockPlaceID,m1.FAuxPropID,t3.FName AS FAuxPropName,m1.FBatchNo,m1.FMTONo
FROM (SELECT u1.FItemID,u1.FAuxPropID,u1.FBatchNo,u1.FMTONo,u1.FStockID ,u1.FStockPlaceID,u1.FKFdate,u1.FKFPeriod
,SUM(u1.FQty) AS FBillQty,SUM(u1.FSecQty) AS FBillSecQty
FROM #TempBill u1 
GROUP BY u1.FItemID,u1.FAuxPropID,u1.FBatchNo,u1.FMTONo,u1.FStockID ,u1.FStockPlaceID,u1.FKFdate,u1.FKFPeriod) m1
INNER JOIN t_ICItem t2 ON m1.FItemID=t2.FItemID
INNER JOIN t_AuxItem t3 ON m1.FAuxPropID=t3.FItemID
INNER JOIN t_Stock ts ON m1.FStockID=ts.FItemID
LEFT OUTER JOIN ICInventory t1 ON t1.FItemID=m1.FItemID AND t1.FBatchNo=m1.FBatchNo AND t1.FMTONo=m1.FMTONo AND t1.FAuxPropID=m1.FAuxPropID
   AND t1.FStockID=m1.FStockID AND t1.FStockPlaceID=m1.FStockPlaceID 
   AND t1.FKFPeriod=m1.FKFPeriod AND t1.FKFDate=m1.FKFDate
WHERE (Round(ISNULL(t1.FQty,0),t2.FQtyDecimal)+Round(m1.FBillQty,t2.FQtyDecimal))<0 OR (Round(ISNULL(t1.FSecQty,0),t2.FQtyDecimal)+Round(m1.FBillSecQty,t2.FQtyDecimal))<0 

go
select t1.FItemID,t1.FProperty,t1.FIncludeAccounting from #TempBill u1 inner join t_Stock t1 on u1.FStockID=t1.FItemID 
 inner join ICStockBillEntry i1 on u1.FInterID=i1.FInterID And u1.FEntryID=i1.FEntryID where i1.FSourceInterId > 0 
go
SELECT * INTO #TempBill2 FROM #TempBill 
UPDATE t1
SET t1.FQty=t1.FQty+(u1.FQty),
t1.FSecQty=t1.FSecQty+(u1.FSecQty)
FROM ICInventory t1 INNER JOIN
(SELECT FItemID,FBatchNo,FMTONo,FAuxPropID,FStockID,FStockPlaceID,FKFPeriod,FKFDate
        ,SUM(FQty) AS FQty,SUM(FSecQty) AS FSecQty
 FROM #TempBill2 
 GROUP BY FItemID,FBatchNo,FMTONo,FAuxPropID,FStockID,FStockPlaceID,FKFPeriod,FKFDate
) u1
ON t1.FItemID=u1.FItemID AND t1.FBatchNo=u1.FBatchNo AND t1.FMTONo=u1.FMTONo AND t1.FAuxPropID=u1.FAuxPropID
   AND t1.FStockID=u1.FStockID AND t1.FStockPlaceID=u1.FStockPlaceID 
   AND t1.FKFPeriod=u1.FKFPeriod AND t1.FKFDate=u1.FKFDate

DELETE u1
FROM ICInventory t1 INNER JOIN #TempBill2 u1
ON t1.FItemID=u1.FItemID AND t1.FBatchNo=u1.FBatchNo AND t1.FMTONo=u1.FMTONo AND t1.FAuxPropID=u1.FAuxPropID
   AND t1.FStockID=u1.FStockID AND t1.FStockPlaceID=u1.FStockPlaceID 
   AND t1.FKFPeriod=u1.FKFPeriod AND t1.FKFDate=u1.FKFDate

INSERT INTO ICInventory(FBrNo,FItemID,FBatchNo,FMTONo,FAuxPropID,FStockID,FStockPlaceID,FKFPeriod,FKFDate,FQty,FSecQty)
SELECT '',FItemID,FBatchNo,FMTONo,FAuxPropID,FStockID,FStockPlaceID,FKFPeriod,FKFDate,
       SUM(FQty) AS FQty,SUM(FSecQty) AS FSecQty
FROM #TempBill2
GROUP BY FItemID,FBatchNo,FMTONo,FAuxPropID,FStockID,FStockPlaceID,FKFPeriod,FKFDate


DROP TABLE #TempBill2

go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
SELECT FValue FROM t_SystemProfile WHERE Upper(FCategory)='IC' AND Upper(FKey)='REALTIMECOST'
go
CREATE TABLE #TempLockInfo(FItemID INT,FStockID INT)

go
DELETE FROM #TempLockInfo
INSERT INTO #TempLockInfo(FItemID,FStockID)
SELECT DISTINCT t1.FItemID,t1.FStockID
FROM t_LockStock t1 INNER JOIN ICStockBillEntry u1
ON u1.FItemID=t1.FItemID AND t1.FStockID=u1.FDCStockID
WHERE u1.FInterID=1936
AND t1.FQty > 0

go
SELECT m1.FItemID,m1.FStockID,t3.FName AS FItemName,t3.FNumber AS FItemNumber,ISNULL(t4.FName,'') AS FStockName,ISNULL(t4.FNumber,'') AS FStockNumber
FROM 
(SELECT t1.FItemID,t1.FStockID,SUM(t1.FQty) AS FLockQty 
FROM t_LockStock t1 INNER JOIN #TempLockInfo t2
ON t1.FItemID=t2.FItemID AND t1.FStockID=t2.FStockID
WHERE t1.FQty > 0
GROUP BY t1.FItemID,t1.FStockID) m1
LEFT OUTER JOIN
(SELECT v1.FItemID,v1.FStockID,SUM(v1.FQty) AS FInvQty
FROM ICInventory v1 INNER JOIN #TempLockInfo t2
ON v1.FItemID=t2.FItemID AND v1.FStockID=t2.FStockID
WHERE ISNULL(v1.FMTONo,'') = '' 
GROUP BY v1.FItemID,v1.FStockID) m2 
ON m1.FItemID=m2.FItemID AND m1.FStockID=m2.FStockID
INNER JOIN t_ICItem t3 ON m1.FItemID=t3.FItemID
LEFT OUTER JOIN t_Stock t4 ON m1.FStockID=t4.FItemID
WHERE m1.FLockQty>m2.FInvQty

go
SELECT v1.FItemID,t2.FNumber,t2.FName,v1.FStockID,
SUM(v1.FQty) AS FInvQty
FROM ICInventory v1 INNER JOIN 
#TempLockInfo t1 ON v1.FItemID=t1.FItemID AND v1.FStockID=t1.FStockID
INNER JOIN t_ICItem t2 ON v1.FItemID=t2.FItemID
INNER JOIN t_Stock t3 ON v1.FStockID=t3.FItemID
INNER JOIN ICStockBillEntry u1 ON u1.FItemID=t1.FItemID And u1.FInterID=1936 And u1.FDCStockID = v1.FStockID And u1.FBatchNo=v1.FBatchNo
GROUP BY v1.FItemID,t2.FNumber,t2.FName,v1.FStockID
HAVING SUM(v1.FQty)<0
go
DROP TABLE #TempLockInfo
go
SELECT t1.FName,t1.FNumber FROM ICInventory v1 INNER JOIN t_ICItem t1 ON v1.FItemID=t1.FItemID
INNER JOIN t_Stock ts ON v1.FStockID = ts.FItemID
WHERE ROUND(v1.FQty,t1.FQtyDecimal)<0 AND ts.FUnderStock=0 AND ( (v1.FItemID=579 AND v1.FBatchNo='' AND v1.FMTONo='' AND v1.FStockID=470 AND v1.FStockPlaceID=10 AND v1.FKFDate='' AND v1.FKFPeriod=0) )
go
DROP TABLE #TempBill
go
SELECT 1 FROM ICStockBillEntry v1 INNER JOIN ICMO u1 ON v1.FICMOInterID = u1.FInterID AND u1.FStatus = 3 AND v1.FInterID = 1936 And v1.FSourceTranType <> 2 
go
SELECT ISNULL(FValue,0) FROM t_SystemProfile WHERE FCateGory = 'SH' AND FKey = 'AUTOBACKFLUSH_SH'
go
SELECT TOP 1 * FROM ICOrderBatchTrace 
go
SELECT FComponentSrv FROM t_ThirdPartyComponent WHERE FTypeID=2 AND FTypeDetailID=200002 ORDER BY FIndex
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
select newid(),ISNULL(FValue,0) as FValue FROM t_SystemProfile WHERE FKey='MO_CLOSEOPTION' AND FCategory='SH'
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
SET NOCOUNT ON
CREATE TABLE #SourceBill(FInterID INT)
INSERT INTO #SourceBill(FInterID)
VALUES(1936)
SELECT Count(1) AS FCount--u.FInterID,u.FEntryID
FROM ICStockBillEntry u
INNER JOIN #SourceBill s ON s.FInterID=u.FInterID
LEFT JOIN PPBOMEntry u1 ON u1.FICMOInterID=u.FICMOInterID AND u1.FEntryID=u.FPPBOMEntryID AND u1.FMaterielType=374
WHERE u.FPPBOMEntryID=0 OR u1.FInterID IS NOT NULL--主产品或等级品
DROP TABLE #SourceBill

go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
Update t_BillCodeRule Set FReChar = FReChar Where FBillTypeID = '1002525'
go
Update t_BillCodeBy Set FProjectVal = FProjectVal Where FBillTypeID = '1002525'
go
select a.*,isnull(b.fitemid,0) as fitemclassid,isnull(b.ftable,'') as ftable,isnull(e.ffieldname,'') as FieldName from t_billcoderule a
 left join t_option e on a.fprojectid=e.fprojectid and a.fformatindex=e.fid
 Left OUter join t_checkproject b on a.fbilltype=b.fbilltypeid and a.fprojectval=b.ffield
 where a.fbilltypeid = '1002525' order by a.FClassIndex
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
 Declare @TmpID INT 
 SET @TmpID = (SELECT FID FROM t_BillCodeRule WITH(READUNCOMMITTED) WHERE FBillTypeID = '1002525' And FProjectID = 3)
 Update t_BillCodeRule Set FProjectVal = 41,
 FLength = case when FLength <= IsNull(Len(41),0) then IsNull(Len(41),0)
 else FLength end Where FID = @TmpID 
 Update ICBillNo Set FCurNo = 41 where fbillid = 1002525
go
SELECT FTemplateID FROM ICTransactionType WHERE FID=1002525
go
Select * From t_BillCodeRule Where FBillTypeID = '1002525' Order By FClassIndex
go
Update ICBillNo Set FDesc = 'MCR+000041' Where FBillID = '1002525'
go
SELECT FComponentSrv FROM t_ThirdPartyComponent WHERE FTypeID=4 AND FTypeDetailID=1002525 ORDER BY FIndex
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
   --Declare @FSouceTrantype  as int 
   Declare @bWriteMethod as Int --是否按标准数量
   Declare @dRate as Decimal(23,10) --换算率
   Declare @FWIPQty as Decimal(23,10) --在制品数量
   Declare @FICMOInterID as int 
 SELECT @FICMOInterID = FICMOInterID  FROM ICStockBillEntry  WHERE FInterID = 1936
IF Exists(SELECT 1 FROM tempdb..sysobjects WHERE ID = OBJECT_ID(N'tempdb..#GradeProduct')) 
Drop Table #GradeProduct
 
  CREATE TABLE #GradeProduct(FICMOInterID INT DEFAULT(0), FItemID INT DEFAULT(0), FMaterielType  INT DEFAULT(0), FAuxQtyScrap DECIMAL(23,10))
 INSERT #GradeProduct
 SELECT c.FInterID,p.FItemID, p.FMaterielType, ISNULL(p.FAuxQtyMust/NULLIF(c.FAuxQty,1),0)  FROM ICMO c
 INNER JOIN  PPBOMEntry  p ON c.FInterID = p.FICMOInterID AND p.FMaterielType = 374 AND c.FInterID = @FICMOInterID
Declare @#Data815B10BFA4A84DE2B891F4FE1DC7A0CF table(FICMOinteriD int ,FStockQty Decimal(23,10),FChkPassItem INT, FItemID INT)
Insert into @#Data815B10BFA4A84DE2B891F4FE1DC7A0CF
   SELECT u2.FICMOinteriD,SUM(CAST(ISNULL(u2.FAuxQty,0) as Decimal(23,10))*Cast(tu.FCoefficient as Decimal(23,10))) as FStockQty,u2.FChkPassItem, u2.FItemID FROM ICStockBillEntry u2 
   INNER JOIN t_MeasureUnit tu ON tu.FItemID=u2.FUnitID 
   WHERE (u2.FPPBOMEntryID=0) and u2.FSourceTrantype>0 and  u2.FInterID= 1936
     AND NOT EXISTS(SELECT 1 FROM ICMORptEntry  
                    WHERE FInterID=u2.FSourceInterID AND FEntryID=u2.FSourceEntryID 
                    AND u2.FSourceTrantype =551 AND FMaterielType>0) 
   Group by u2.FICMOInterID,u2.FChkPassItem,tu.FCoefficient,u2.FItemID 
 UNION ALL
   SELECT u2.FICMOinteriD,SUM(CAST(ISNULL(u2.FAuxQty,0) as Decimal(23,10))*Cast(tu.FCoefficient as Decimal(23,10))) as FStockQty,u2.FChkPassItem, u2.FItemID FROM ICStockBillEntry u2 
   INNER JOIN t_MeasureUnit tu ON tu.FItemID=u2.FUnitID 
   INNER JOIN #GradeProduct G ON G.FICMOInterID = U2.FICMOInterID  
   WHERE (U2.FItemID = G.FItemID) and u2.FSourceTrantype>0 and  u2.FInterID= 1936
     AND NOT EXISTS(SELECT 1 FROM ICMORptEntry  
                    WHERE FInterID=u2.FSourceInterID AND FEntryID=u2.FSourceEntryID 
                    AND u2.FSourceTrantype =551 AND FMaterielType>0) 
   Group by u2.FICMOInterID,u2.FChkPassItem,tu.FCoefficient,u2.FItemID 
UPDATE m SET m.FStockQty = m.FStockQty / ISNULL(g.FAuxQtyScrap,1)
FROM @#Data815B10BFA4A84DE2B891F4FE1DC7A0CF m 
INNER JOIN #GradeProduct g ON g.FICMOInterID = m.FICMOinteriD AND m.FItemID = g.FItemID
DROP TABLE #GradeProduct
 Declare @FSourceTrantype as int 
 Declare @FROB as int 
 select @FROB=u1.FROB,@FSourceTrantype=t1.FSourceTrantype  --(select fsourcetrantype from icstockbillentry m1 where m1.finterid=t1.fsourceinterid) end) 
 from ICStockBillEntry t1 join ICStockBill u1 on t1.finterid=u1.finterid where t1.finterid=1936
 if @FROB=1 or (@FROB=-1 And @FSourceTrantype in (551,581))
 Begin 
 IF (Select Count(*) From ICStockBillEntry Where FSourceTrantype =581 And FInterID=1936)>0 
     Update src Set src.FQtyStock = src.FQtyStock+dest.FQty
     ,src.FAuxQtyStock = (src.FQtyStock+dest.FQty)/CAST(t1.FCoefficient as Decimal(23,10))
     From ICOperShift src INNER JOIN 
     (Select u1.FSourceInterID as FSourceInterID,u1.FSourceEntryID,u1.FItemID,SUM(u1.FQty) as FQty
     From  ICStockBillEntry u1 
     Where u1.FSourceTrantype=581 And u1.FInterID=1936
     GROUP BY u1.FSourceInterID,u1.FSourceEntryID,u1.FItemID) dest 
     ON dest.FSourceInterID = src.FInterID
     AND dest.FItemID = src.FItemID 
     INNER JOIN t_MeasureUnit t1 ON src.FUnitID=t1.FItemID
 IF (Select Count(*) From ICStockBillEntry Where FSourceTrantype =551 And FInterID=1936)>0 
     Update src Set src.FQtyStock = src.FQtyStock+dest.FQty
     ,src.FAuxQtyStock = (src.FQtyStock+dest.FQty)/CAST(t1.FCoefficient as Decimal(23,10))
     From ICMORptEntry src INNER JOIN 
     (Select u1.FSourceInterID as FSourceInterID,u1.FSourceEntryID,u1.FItemID,SUM(u1.FQty) as FQty
     From  ICStockBillEntry u1 
     INNER JOIN ICMORptEntry u2 ON u2.FInterID=u1.FSourceInterID AND u2.FEntryID=u1.FSourceEntryID 
     Where u1.FSourceTrantype=551 /*AND u2.FMaterielType=0*/ AND u1.FChkPassItem =1058 And u1.FInterID=1936
     GROUP BY u1.FSourceInterID,u1.FSourceEntryID,u1.FItemID) dest 
     ON dest.FSourceInterID = src.FInterID
     AND dest.FItemID = src.FItemID and dest.FSourceEntryID=src.FEntryID 
     INNER JOIN t_MeasureUnit t1 ON src.FUnitID=t1.FItemID
     Update src Set src.FDiscardStockInQty = src.FDiscardStockInQty+dest.FQty
     ,src.FDiscardStockInAuxQty = (src.FDiscardStockInQty+dest.FQty)/CAST(t1.FCoefficient as Decimal(23,10))
     From ICMORptEntry src INNER JOIN 
     (Select u1.FSourceInterID as FSourceInterID,u1.FSourceEntryID,u1.FItemID,SUM(u1.FQty) as FQty
     From  ICStockBillEntry u1 
     INNER JOIN ICMORptEntry u2 ON u2.FInterID=u1.FSourceInterID AND u2.FEntryID=u1.FSourceEntryID 
     Where u1.FSourceTrantype=551 /*AND u2.FMaterielType=0*/ AND u1.FChkPassItem =1059 And u1.FInterID=1936
     GROUP BY u1.FSourceInterID,u1.FSourceEntryID,u1.FItemID) dest 
     ON dest.FSourceInterID = src.FInterID
     AND dest.FItemID = src.FItemID and dest.FSourceEntryID=src.FEntryID 
     INNER JOIN t_MeasureUnit t1 ON src.FUnitID=t1.FItemID
     Update src Set src.FQtyStock = src.FQtyStock+dest.FQty
     ,src.FAuxQtyStock = (src.FQtyStock+dest.FQty)/CAST(t1.FCoefficient as Decimal(23,10))
     From ICMORptEntry src INNER JOIN 
     QMSourceInfo tmp ON src.FInterID = tmp.FQCReqInterID AND src.FEntryID = FQCReqEntryID
     INNER JOIN ICQCBill tmpHead ON tmpHead.FInterID = tmp.FInterID INNER JOIN 
     (Select u1.FSourceInterID as FSourceInterID,u1.FSourceEntryID,u1.FItemID,SUM(u1.FQty) as FQty
     From  ICStockBillEntry u1 
     Where u1.FSourceTrantype=1001001 AND u1.FChkPassItem =1058 And u1.FInterID=1936
     GROUP BY u1.FSourceInterID,u1.FSourceEntryID,u1.FItemID) dest 
     ON dest.FSourceInterID = tmp.FInterID
     AND dest.FItemID = tmpHead.FItemID and dest.FSourceEntryID=tmp.FDetailID 
     INNER JOIN t_MeasureUnit t1 ON src.FUnitID=t1.FItemID
     Update src Set src.FDiscardStockInQty = src.FDiscardStockInQty+dest.FQty
     ,src.FDiscardStockInAuxQty = (src.FDiscardStockInQty+dest.FQty)/CAST(t1.FCoefficient as Decimal(23,10))
     From ICMORptEntry src INNER JOIN 
     QMSourceInfo tmp ON src.FInterID = tmp.FQCReqInterID AND src.FEntryID = FQCReqEntryID
     INNER JOIN ICQCBill tmpHead ON tmpHead.FInterID = tmp.FInterID INNER JOIN 
     (Select u1.FSourceInterID as FSourceInterID,u1.FSourceEntryID,u1.FItemID,SUM(u1.FQty) as FQty
     From  ICStockBillEntry u1 
     Where u1.FSourceTrantype=1001001 AND u1.FChkPassItem =1059 And u1.FInterID=1936
     GROUP BY u1.FSourceInterID,u1.FSourceEntryID,u1.FItemID) dest 
     ON dest.FSourceInterID = tmp.FInterID
     AND dest.FItemID = tmpHead.FItemID and dest.FSourceEntryID=tmp.FDetailID 
     INNER JOIN t_MeasureUnit t1 ON src.FUnitID=t1.FItemID
 END
 ELSE
 Begin
 IF (Select Count(*) From ICStockBillEntry m1 inner join ICStockBillEntry t1 on m1.finterid=t1.fsourceinterid Where m1.FSourceTrantype =581 And t1.FInterID=1936)>0 
     Update src Set src.FQtyStock = src.FQtyStock+dest.FQty
     ,src.FAuxQtyStock = (src.FQtyStock+dest.FQty)/CAST(t1.FCoefficient as Decimal(23,10))
     From ICOperShift src --INNER JOIN 
      --icstockbillentry m1 on m1.fsourceinterid=src.FInterID 
      INNER JOIN
     (Select m1.FSourceInterID,Dests.FItemID,SUM(Dests.FQty) as FQty From icstockbillentry m1 Inner join      (Select u1.FSourceInterID as FSourceInterID,u1.FSourceEntryID,u1.FItemID,SUM(u1.FQty) as FQty
     From  ICStockBillEntry u1 inner join icstockbillentry t1  on t1.finterid=u1.fsourceinterid AND t1.FEntryID=u1.FSourceEntryID 
     Where t1.FSourceTrantype=581 And  u1.FInterID=1936
     GROUP BY u1.FSourceInterID,u1.FSourceEntryID,u1.FItemID) dests 
     ON dests.FSourceInterID = m1.Finterid and dests.FSourceEntryID=m1.FEntryID Group By m1.FSourceInterID,dests.FItemID) dest
     ON dest.FItemID = src.FItemID AND dest.fsourceinterid=src.FInterID 
     INNER JOIN t_MeasureUnit t1 ON src.FUnitID=t1.FItemID
 IF (Select Count(*) From ICStockBillEntry m1 inner join ICStockBillEntry t1 on m1.finterid=t1.fsourceinterid Where m1.FSourceTrantype =551 And t1.FInterID=1936)>0 
     Update src Set src.FQtyStock = src.FQtyStock+dest.FQty
     ,src.FAuxQtyStock = (src.FQtyStock+dest.FQty)/CAST(t1.FCoefficient as Decimal(23,10))
     From ICMORptEntry src --INNER JOIN 
      --icstockbillentry m1 on m1.fsourceinterid=src.FInterID and m1.FSourceEntryID=src.FEntryID 
      INNER JOIN
     (Select m1.FSourceInterID,m1.FSourceEntryID,Dests.FItemID,SUM(Dests.FQty) as FQty From icstockbillentry m1 Inner join      (Select u1.FSourceInterID as FSourceInterID,u1.FSourceEntryID,u1.FItemID,SUM(u1.FQty) as FQty
     From  ICStockBillEntry u1 inner join icstockbillentry t1  on t1.finterid=u1.fsourceinterid AND t1.FEntryID=u1.FSourceEntryID 
     Where t1.FSourceTrantype=551 AND t1.FChkPassItem = 1058 And  u1.FInterID=1936
     GROUP BY u1.FSourceInterID,u1.FSourceEntryID,u1.FItemID) dests 
     ON dests.FSourceInterID = m1.Finterid and dests.FSourceEntryID=m1.FEntryID Group By m1.FSourceInterID,m1.FSourceEntryID,dests.FItemID) dest
     ON dest.FItemID = src.FItemID AND dest.fsourceinterid=src.FInterID and dest.FSourceEntryID=src.FEntryID 
     INNER JOIN t_MeasureUnit t1 ON src.FUnitID=t1.FItemID
     Update src Set src.FDiscardStockInQty = src.FDiscardStockInQty+dest.FQty
     ,src.FDiscardStockInAuxQty = (src.FDiscardStockInQty+dest.FQty)/CAST(t1.FCoefficient as Decimal(23,10))
     From ICMORptEntry src --INNER JOIN 
      --icstockbillentry m1 on m1.fsourceinterid=src.FInterID and m1.FSourceEntryID=src.FEntryID 
      INNER JOIN
     (Select m1.FSourceInterID,m1.FSourceEntryID,Dests.FItemID,SUM(Dests.FQty) as FQty From icstockbillentry m1 Inner join      (Select u1.FSourceInterID as FSourceInterID,u1.FSourceEntryID,u1.FItemID,SUM(u1.FQty) as FQty
     From  ICStockBillEntry u1 inner join icstockbillentry t1  on t1.finterid=u1.fsourceinterid AND t1.FEntryID=u1.FSourceEntryID
     Where t1.FSourceTrantype=551 AND t1.FChkPassItem = 1059 And  u1.FInterID=1936
     GROUP BY u1.FSourceInterID,u1.FSourceEntryID,u1.FItemID) dests 
     ON dests.FSourceInterID = m1.Finterid and dests.FSourceEntryID=m1.FEntryID Group By m1.FSourceInterID,m1.FSourceEntryID,dests.FItemID) dest
     ON dest.FItemID = src.FItemID AND dest.fsourceinterid=src.FInterID and dest.FSourceEntryID=src.FEntryID 
     INNER JOIN t_MeasureUnit t1 ON src.FUnitID=t1.FItemID
 END 
     Update src Set src.FQtyStock = src.FQtyStock+dest.FQty
     ,src.FAuxQtyStock = (src.FQtyStock+dest.FQty)/CAST(t1.FCoefficient as Decimal(23,10))
     From ICMORptEntry src INNER JOIN 
     QMSourceInfo tmp ON src.FInterID = tmp.FQCReqInterID AND src.FEntryID = FQCReqEntryID
     INNER JOIN ICQCBill tmpHead ON tmpHead.FInterID = tmp.FInterID INNER JOIN 
     (Select m1.FSourceInterID,m1.FSourceEntryID,Dests.FItemID,SUM(Dests.FQty) as FQty From icstockbillentry m1 Inner join 
     (Select u1.FSourceInterID as FSourceInterID,u1.FSourceEntryID,u1.FItemID,SUM(u1.FQty) as FQty
       From  ICStockBillEntry u1 inner join icstockbillentry t1  on t1.finterid=u1.fsourceinterid and t1.fentryid=u1.fsourceentryid
     Where u1.FSourceTrantype=2 AND u1.FChkPassItem =1058 And u1.FInterID=1936
     GROUP BY u1.FSourceInterID,u1.FSourceEntryID,u1.FItemID) dests 
     ON dests.FSourceInterID = m1.Finterid and dests.FSourceEntryID=m1.FEntryID Group By m1.FSourceInterID,m1.FSourceEntryID,dests.FItemID) dest
     ON dest.FSourceInterID = tmp.FInterID
     AND dest.FItemID = tmpHead.FItemID and dest.FSourceEntryID=tmp.FDetailID 
     INNER JOIN t_MeasureUnit t1 ON src.FUnitID=t1.FItemID
     Update src Set src.FDiscardStockInQty = src.FDiscardStockInQty+dest.FQty
     ,src.FDiscardStockInAuxQty = (src.FDiscardStockInQty+dest.FQty)/CAST(t1.FCoefficient as Decimal(23,10))
     From ICMORptEntry src INNER JOIN 
     QMSourceInfo tmp ON src.FInterID = tmp.FQCReqInterID AND src.FEntryID = FQCReqEntryID
     INNER JOIN ICQCBill tmpHead ON tmpHead.FInterID = tmp.FInterID INNER JOIN 
     (Select m1.FSourceInterID,m1.FSourceEntryID,Dests.FItemID,SUM(Dests.FQty) as FQty From icstockbillentry m1 Inner join 
     (Select u1.FSourceInterID as FSourceInterID,u1.FSourceEntryID,u1.FItemID,SUM(u1.FQty) as FQty
       From  ICStockBillEntry u1 inner join icstockbillentry t1  on t1.finterid=u1.fsourceinterid and t1.fentryid=u1.fsourceentryid
     Where u1.FSourceTrantype=2 AND u1.FChkPassItem =1059 And u1.FInterID=1936
     GROUP BY u1.FSourceInterID,u1.FSourceEntryID,u1.FItemID) dests 
     ON dests.FSourceInterID = m1.Finterid and dests.FSourceEntryID=m1.FEntryID Group By m1.FSourceInterID,m1.FSourceEntryID,dests.FItemID) dest
     ON dest.FSourceInterID = tmp.FInterID
     AND dest.FItemID = tmpHead.FItemID and dest.FSourceEntryID=tmp.FDetailID 
     INNER JOIN t_MeasureUnit t1 ON src.FUnitID=t1.FItemID

IF Object_id('TEMPDB..#TEMP_StockQty') IS NOT NULL 
  DROP TABLE #TEMP_StockQty
CREATE TABLE #TEMP_StockQty ( 
  FICMOinteriD INT,
  FStockQty Decimal(23,10), 
  FChkPassItem INT
  ) 
 
 INSERT #TEMP_StockQty
 SELECT   d.FICMOinteriD,sum(d.FStockQty) AS  FStockQty, D.FChkPassItem AS FChkPassItem
 FROM @#Data815B10BFA4A84DE2B891F4FE1DC7A0CF d
 GROUP BY d.FChkPassItem, d.FICMOinterID
 
 IF (select count(1) from #TEMP_StockQty ) >0  
   UPDATE u1 SET
   u1.FStockQty=ISNULL(u1.FStockQty,0)+ m2.FStockQty,
   u1.FAuxStockQty=ISNULL(u1.FAuxStockQty,0)+
   m2.FStockQty/cast(t2.FCoEfficient as float)
   FROM ICMO u1 INNER JOIN #TEMP_StockQty m2 on u1.FInterID=m2.FICMOInterID and m2.FChkPassItem = 1058 
   INNER JOIN t_MeasureUnit t2 ON u1.FUnitID=t2.FMeasureUnitID 
   UPDATE u1 SET
   u1.FDiscardStockInQty=ISNULL(u1.FDiscardStockInQty,0)+ m2.FStockQty,
   u1.FDiscardStockInAuxQty=ISNULL(u1.FDiscardStockInAuxQty,0)+
   m2.FStockQty/cast(t2.FCoEfficient as float)
   FROM ICMO u1 INNER JOIN  #TEMP_StockQty  m2 on u1.FInterID=m2.FICMOInterID and m2.FChkPassItem = 1059 
   INNER JOIN t_MeasureUnit t2 ON u1.FUnitID=t2.FMeasureUnitID 
   DROP TABLE #TEMP_StockQty

   IF OBJECT_ID('tempdb..#tmpPMCIndex','U') IS NOT NULL 
       DROP TABLE #tmpPMCIndex
   SELECT u1.FIndex
              ,CASE when m2.FQty>=(ISNULL(m2.FStockQty,0)+ISNULL(m2.FDiscardStockInQty,0)) THEN m2.FQty-(ISNULL(m2.FStockQty,0)+ISNULL(m2.FDiscardStockInQty,0))  ELSE 0 END AS  FWillInQty
              ,ISNULL(m2.FStockQty,0) AS FStockQty
   INTO #tmpPMCIndex 
   FROM ICPlan_PmcDetail u1 
   INNER JOIN  ICMO  m2 on u1.FRelInterID=m2.FInterID AND u1.FRelTranType=85 AND u1.FRelEntryID=0 AND u1.FBillType=1
   INNER JOIN @#Data815B10BFA4A84DE2B891F4FE1DC7A0CF  m3 on  m2.FInterID=m3.FICMOInterID 
   OPTION(RECOMPILE) 
   CREATE CLUSTERED INDEX PK_#tmpPMCIndex ON #tmpPMCIndex(FIndex)  

   UPDATE u1 
   SET  u1.FWillInQty=ISNULL(u2.FWillInQty,0)
          ,u1.FStockQty=ISNULL(u2.FStockQty,0)
   FROM ICPlan_PmcDetail u1 
   INNER JOIN  #tmpPMCIndex u2 ON u1.FIndex=u2.FIndex 
   DROP TABLE #tmpPMCIndex

Declare @#ICSTOCK815B10BFA4A84DE2B891F4FE1DC7A0CF table (FICMOInterID int ,FPPBOMEntryID int ,FItemID int ,FStockQty decimal(28,10))
Insert into @#ICSTOCK815B10BFA4A84DE2B891F4FE1DC7A0CF   SELECT u2.FICMOInterID,u2.FPPBOMEntryID,u2.FItemID,SUM(ISNULL(u2.FQty,0)) AS FStockQty  FROM ICStockBillEntry  u2 
   WHERE  u2.FSourceTrantype>0 and u2.FPPBOMEntryID>0 and  u2.FInterID= 1936
   GROUP BY u2.FICMOInterID,u2.FPPBOMEntryID,u2.FItemID
 IF (select count(1) from @#ICSTOCK815B10BFA4A84DE2B891F4FE1DC7A0CF ) >0 
BEGIN
   UPDATE u1 SET
   u1.FStockQty=ISNULL(u1.FStockQty,0)+ ISNULL(m2.FStockQty,0) ,
   u1.FAuxStockQty=ISNULL(u1.FAuxStockQty,0)+ISNULL(ROUND(
  ISNULL(cast(m2.FStockQty as float),0) /cast(t2.FCoEfficient as float),t1.FQtyDecimal),0)
   FROM PPBOMEntry u1 INNER JOIN @#ICSTOCK815B10BFA4A84DE2B891F4FE1DC7A0CF
     m2 
   ON u1.FItemID=m2.FItemID AND u1.FEntryID=m2.FPPBOMEntryID AND u1.FICMOInterID=m2.FICMOinterID 
   INNER JOIN t_ICItem t1 ON m2.FItemID=t1.FItemID 
   INNER JOIN t_MeasureUnit t2 ON u1.FUnitID=t2.FMeasureUnitID 
   WHERE u1.FMaterielType IN (372,373,374)  --联副产品等级品件 

   UPDATE u1 
        SET  u1.FWillInQty=CASE WHEN ISNULL(u2.FQtyMust,0)>=ISNULL(u2.FStockQty,0) THEN ISNULL(u2.FQtyMust,0)-ISNULL(u2.FStockQty,0) ELSE 0 END 
              ,u1.FStockQty=ISNULL(u2.FStockQty,0)
   FROM ICPlan_PmcDetail u1 
   INNER JOIN  PPBOMEntry  u2 on  u1.FRelTranType=88 AND u1.FRelInterID=u2.FInterID AND  u1.FRelEntryID=u2.FEntryID AND u1.FBillType=16
   INNER JOIN @#ICSTOCK815B10BFA4A84DE2B891F4FE1DC7A0CF u3 on u1.FParentInterID=u3.FICMOInterID AND u3.FICMOInterID=u1.FParentInterID AND u1.FParentTrantype=85
   WHERE u2.FMaterielType IN (372,373,374)  --联副产品等级品件 
END
SET NOCOUNT ON
DECLARE @DeductPoint AS INT,@DeductMode AS INT
SET @DeductMode=0
SET @DeductPoint=0
--构建临时表 记录源单信息，如入库单、任务单汇报单
CREATE TABLE #SourceBill(
               FInterID INT--源单内码
              ,FEntryID INT DEFAULT -1--源单分录
              ,FItemID INT --物料
              ,FICMOInterID INT--任务单或委外订单的内码
              ,FICMOEntryID INT DEFAULT 0--委外订单的分录
              ,FMOCoefficient DECIMAL(23,10) DEFAULT 1--任务单单位的换算率
              ,FPPBOMEntryID INT DEFAULT 0--投料单的分录
              ,FSourceInterID INT DEFAULT 0--源单内码（蓝字推红字）
              ,FSourceEntryID INT DEFAULT 0--源单分录（蓝字推红字）
              ,FSourceTranType INT DEFAULT 0--源单类型（蓝字推红字）
              ,FQty DECIMAL(23,10)--本次入库数量，如果是等级品需要换算成产成品
              ,FROB INT DEFAULT 1--红蓝字标记
              ,FBillNO NVARCHAR(255)--源单编号
              ,FTranType INT DEFAULT -1--源单类型
              ,FItemConsumeBillNO NVARCHAR(255) DEFAULT ''--材料耗用编号
              ,FDeleted INT DEFAULT 0--删除单据
             )
CREATE TABLE #ItemConsume(
            FInterID INT DEFAULT -1
           ,FEntryID INT DEFAULT -1
           ,FSourceInterID INT--源单内码
           ,FSourceEntryID INT--源单分录
           ,FICMOInterID INT--任务单内码
           ,FICMOEntryID INT DEFAULT 0--委外订单分录
           ,FProductID INT--产品ID
           ,FPPBOMBillNO NVARCHAR(255)--投料单编号
           ,FPPBOMInterID INT--投料单内码
           ,FPPBOMEntryID INT--投料单分录
           ,FItemID INT--原材料分录
           ,FUnitID INT--单位
           ,FQtyConsume DECIMAL(23,10)--材料耗用
           ,FAuxQtyConsume DECIMAL(23,10)--常用单位材料耗用
           ,FAccumulateQtyConsume DECIMAL(23,10)--累计耗用 根据总的任务单入库或汇报信息计算所得
           ,FAccumulateAuxQtyConsume DECIMAL(23,10)--常用单位累计耗用 根据总的任务单入库或汇报信息计算所得
           ,FPPBOMQtyConsume DECIMAL(23,10)--投料单上的累积耗用
           ,FPPBOMAuxQtyConsume DECIMAL(23,10)--投料单上的常用单位累积耗用
           ,FCancellation INT DEFAULT 0--作废单据
           ,FAuxQtyMust DECIMAL(23,10)  --常用单位应发数量
           ,FQtyMust DECIMAL(23,10)  --基本单位应发数量
           ,FOperSN INT DEFAULT(0) --工序号 
           ,FOperID INT DEFAULT(0) --工序 
           ,FProductPropID INT DEFAULT(0) --产品辅助属性
           ,FItemPropID INT DEFAULT(0)) --物料辅助属性
CREATE TABLE #StockBill(
               FInterID INT--入库单内码
              ,FICMOInterID INT--任务单内码
              ,FICMOEntryID INT DEFAULT 0--委外订单分录
              ,FStockQty Decimal(23,10)--本次入库数量
              ,FAccumulateStockQty Decimal(23,10) DEFAULT 0--累计入库数量
              ,FPlanProductQty Decimal(23,10)  DEFAULT 0--预计生产数量数量
              ,FQtyFinish DECIMAL(23,10)--任务单实作数
             )

INSERT INTO #SourceBill(FInterID,FEntryID,FTranType,FDeleted)
VALUES(1936,-1,2,0)
--更新FTranType及FBillNO相关信息
--更新FTranType及FBillNO相关信息
UPDATE t SET FBillNO=v.FBillNO,FTranType=v.FTranType,FROB=v.FRob
FROM #SourceBill t
INNER JOIN ICStockBill v On t.FInterID=v.FInterID
--获取符合条件的分录信息
 update s set s.FItemID = u.FItemID,s.FICMOInterID = u.FICMOInterID,s.FICMOEntryID =0,
s.FPPBOMEntryID = u.FPPBOMEntryID,s.FQty = CASE WHEN u.FPPBOMEntryID=0 THEN u.FQty ELSE u.FQty*ISNULL(tm.FCoefficient,1)/ISNULL(u1.FQtyScrap,1) END ,
s.FSourceTranType = u.FSourceTranType,s.FSourceInterID = u.FSourceInterID,s.FSourceEntryID=u.FSourceEntryID
FROM ICStockBillEntry u
INNER JOIN #SourceBill s ON s.FInterID=u.FInterID AND s.FEntryID = u.FEntryID
INNER JOIN ICMO m ON m.FInterID=u.FICMOInterID
LEFT JOIN t_MeasureUnit tm ON tm.FMeasureUnitID=m.FUnitID
LEFT JOIN PPBOMEntry u1 ON u1.FICMOInterID=u.FICMOInterID AND u1.FEntryID=u.FPPBOMEntryID AND u1.FMaterielType=374--等级品
LEFT JOIN PPBOMEntry u2 ON u2.FICMOInterID=u.FICMOInterID AND u2.FEntryID=u.FPPBOMEntryID AND u2.FMaterielType IN (372,373)--联副产品不考虑
Where s.FEntryID <> -1 And (u.FPPBOMEntryID = 0 Or (u.FPPBOMEntryID > 0 And u1.FInterID Is Not Null)) 
 AND u2.FInterID IS NULL
INSERT INTO #SourceBill(FInterID,FEntryID,FItemID,FICMOInterID,FICMOEntryID,FPPBOMEntryID
                       ,FBillNO,FTranType,FROB,FMOCoefficient
                       ,FQty,FSourceTranType,FSourceInterID,FSourceEntryID,FDeleted)
SELECT u.FInterID,u.FEntryID,u.FItemID,u.FICMOInterID,0,u.FPPBOMEntryID
      ,s.FBillNO,s.FTranType,s.FROB,ISNULL(tm.FCoefficient,1)
      ,CASE WHEN u.FPPBOMEntryID=0 THEN u.FQty ELSE u.FQty*ISNULL(tm.FCoefficient,1)/ISNULL(u1.FQtyScrap,1) END AS FQty,u.FSourceTranType,u.FSourceInterID,u.FSourceEntryID,s.FDeleted
FROM ICStockBillEntry u
INNER JOIN #SourceBill s ON s.FInterID=u.FInterID 
INNER JOIN ICMO m ON m.FInterID=u.FICMOInterID
LEFT JOIN t_MeasureUnit tm ON tm.FMeasureUnitID=m.FUnitID
LEFT JOIN PPBOMEntry u1 ON u1.FICMOInterID=u.FICMOInterID AND u1.FEntryID=u.FPPBOMEntryID AND u1.FMaterielType=374--等级品
LEFT JOIN PPBOMEntry u2 ON u2.FICMOInterID=u.FICMOInterID AND u2.FEntryID=u.FPPBOMEntryID AND u2.FMaterielType IN (372,373)--联副产品不考虑
WHERE s.FEntryID=-1 AND (u.FPPBOMEntryID=0 OR (u.FPPBOMEntryID>0 AND u1.FInterID IS NOT NULL))--主产品或等级品
      AND u2.FInterID IS NULL
DELETE FROM #SourceBill WHERE FEntryID=-1
--更新单据编号
Update s SET FItemConsumeBillNO='MCR000040'
FROM #SourceBill s
INNER JOIN (SELECT TOP 1 FInterID,FEntryID FROM #SourceBill WHERE FItemConsumeBillNO='') st ON st.FInterID=s.FInterID AND st.FEntryID=s.FEntryID

--获取本次各个入库单的累积入库数量，等级品按单位用量换算成产成品
INSERT INTO #StockBill(FInterID,FICMOInterID,FStockQty)
SELECT u.FInterID,u.FICMOInterID,SUM(u1.FQty) AS FStockQty
FROM ICStockBillEntry u
INNER JOIN #SourceBill u1 ON u1.FInterID=u.FInterID AND u.FEntryID=u1.FEntryID
GROUP BY u.FInterID,u.FICMOInterID
--更新任务单的产量信息和已经生产信息的信息(主要处理等级品的问题)
UPDATE d SET FAccumulateStockQty=m.FStockQty+ISNULL(djp.FAccumulateStockQty,0)*ISNULL(tm.FCoefficient,1),FPlanProductQty=m.FQty
FROM #StockBill d
INNER JOIN ICMO m ON m.FInterID=d.FICMOInterID
LEFT JOIN t_MeasureUnit tm ON tm.FMeasureUnitID=m.FUnitID
LEFT JOIN (SELECT FICMOInterID,SUM(FStockQty/FQtyScrap) AS FAccumulateStockQty FROM PPBOMEntry WHERE FMaterielType=374 GROUP BY FICMOInterID) djp ON djp.FICMOInterID=d.FICMOInterID

--获取理论的耗用表
INSERT INTO #ItemConsume(FSourceInterID,FSourceEntryID,FICMOInterID,FICMOEntryID,FProductID,FPPBOMBillNO,FPPBOMInterID,FPPBOMEntryID,FItemID,FUnitID
                        ,FPPBOMQtyConsume,FPPBOMAuxQtyConsume
                        ,FQtyConsume
                        ,FAuxQtyConsume
                        ,FAccumulateQtyConsume
                        ,FAccumulateAuxQtyConsume
                        ,FQtyMust
                        ,FAuxQtyMust
                        ,FOperSN   --工序号
                        ,FOperID --工序代码
                        ,FProductPropID  --产品辅助属性
                        ,FItemPropID  --物料辅助属性
                        )
--产品入库单
SELECT u1.FInterID,u1.FEntryID,u.FICMOInterID,0 AS FICMOEntryID,u1.FItemID,v.FBillNO,u.FInterID,u.FEntryID,u.FItemID,u.FUnitID
       ,u.FQtyConsume,u.FAuxQtyConsume
       --基本单位预计耗用
       ,CASE WHEN @DeductMode=0 THEN ROUND(u.FQtyMust*u1.FQty/st.FPlanProductQty,t.FQtyDecimal+2) 
        WHEN @DeductMode=1 THEN ROUND(u1.FQty*u.FQtyScrap/u1.FMOCoefficient,t.FQtyDecimal+1) 
        ELSE (CASE WHEN (u1.FTranType=2 AND u1.FROB=-1)  --蓝字下推红字,用红字的分摊蓝字耗用
               THEN ROUND(ISNULL(B.FQtyConsume,0)*u1.FQty/ISNULL(B.FStockQty,1),t.FQtyDecimal)
               ELSE u1.FROB*ABS(ROUND((u.FQtyMust-u.FQtyConsume)*
                    (CASE WHEN (st.FPlanProductQty-st.FAccumulateStockQty+st.FStockQty)=0 THEN 1
                          ELSE u1.FQty/(st.FPlanProductQty-st.FAccumulateStockQty+st.FStockQty)
                     END),t.FQtyDecimal))
              END)
        END
       --预计耗用
       ,CASE WHEN @DeductMode=0 THEN ROUND(u.FAuxQtyMust*u1.FQty/st.FPlanProductQty,t.FQtyDecimal+2)
        WHEN @DeductMode=1 THEN ROUND(u1.FQty*u.FAuxQtyScrap/u1.FMOCoefficient,t.FQtyDecimal+1) 
        ELSE (CASE WHEN (u1.FTranType=2 AND u1.FROB=-1)  --蓝字下推红字,用红字的分摊蓝字耗用
               THEN ROUND(ISNULL(B.FQtyConsume,0)*u1.FQty/ISNULL(B.FStockQty,1),t.FQtyDecimal)
               ELSE u1.FROB*ABS(ROUND((u.FQtyMust-u.FQtyConsume)*
                    (CASE WHEN (st.FPlanProductQty-st.FAccumulateStockQty+st.FStockQty)=0 THEN 1
                          ELSE u1.FQty/(st.FPlanProductQty-st.FAccumulateStockQty+st.FStockQty)
                     END)/(CASE WHEN tm.FCoefficient=0 THEN 1 ELSE tm.FCoefficient END),t.FQtyDecimal))
              END)
        END
        --基本单位累计耗用
       ,CASE WHEN @DeductMode=0 THEN ROUND(u.FQtyMust*st.FAccumulateStockQty/st.FPlanProductQty,t.FQtyDecimal) --计划用量
        WHEN @DeductMode=1 THEN ROUND(st.FAccumulateStockQty*u.FQtyScrap/u1.FMOCoefficient,t.FQtyDecimal) --标准用量
        ELSE 0 END--剩余用量
        --累计耗用
       ,CASE WHEN @DeductMode=0 THEN ROUND(u.FAuxQtyMust*st.FAccumulateStockQty/st.FPlanProductQty,t.FQtyDecimal) --计划用量
        WHEN @DeductMode=1 THEN ROUND(st.FAccumulateStockQty*u.FAuxQtyScrap/u1.FMOCoefficient,t.FQtyDecimal)--标准用量
        ELSE 0 END--剩余用量
       --基本单位应发数量=基本单位预计耗用 后面统一更新 3.1
       ,-1 AS FQtyMust
       --应发数量=预计耗用 后面统一更新 3.1
       ,-1 AS FAuxQtyMust
       ,u.FOperSN
       ,u.FOperID,v.FAuxPropID as FProductPropID,u.FAuxPropID as FItemPropID
FROM PPBOMEntry u
INNER JOIN PPBOM v ON v.FInterID=u.FInterID
INNER JOIN t_ICItemBase t ON t.FItemID=u.FItemID--投料单使用物料，为了获取基本计量单位
INNER JOIN t_MeasureUnit tm ON tm.FMeasureUnitID=u.FUnitID--投料单使用的单位
INNER JOIN #StockBill st ON st.FICMOInterID=u.FICMOInterID--获取该入库单的上累计入库信息（主要是为了考虑等级品等信息，所以不直接获取任务单信息）
INNER JOIN #SourceBill u1 ON u1.FICMOInterID=st.FICMOInterID AND u1.FInterID=st.FInterID
LEFT JOIN ICShop_ItemConsume cn ON cn.FIsAutoGen=0 AND cn.FSourceInterID=u1.FInterID AND cn.FSourceEntryID=u1.FEntryID AND cn.FSourceTranType=2--不更新用户手工调整的数据
LEFT JOIN (--获取蓝字单据及当初耗用信息
           SELECT DISTINCT bv.FSourceTranType,sun.FInterID,sun.FEntryID,sun.FQty AS FStockQty,bl.FPPBOMInterID,bl.FPPBOMEntryID,FQtyConsume,FAuxQtyConsume
           FROM ICShop_ItemConsumeEntry bl
           INNER JOIN ICShop_ItemConsume bv ON bv.FInterID=bl.FInterID
           INNER JOIN ICStockBillEntry sun ON sun.FInterID=bv.FSourceInterID AND sun.FEntryID=bv.FSourceEntryID 
           INNER JOIN #SourceBill sb ON sb.FSourceInterID=sun.FInterID AND sb.FSourceEntryID=sun.FEntryID AND sb.FSourceTranType=2 AND sb.FROB=-1--当前红字单据
          ) B ON B.FInterID=u1.FSourceInterID AND B.FEntryID=u1.FSourceEntryID AND B.FSourceTranType=u1.FTranType AND B.FPPBOMInterID=u.FInterID AND B.FPPBOMEntryID=u.FEntryID AND B.FSourceTranType=2
WHERE u.FMaterielType NOT IN (372,373,374,376) AND u.FQtyMust>0 AND cn.FInterID IS NULL
ORDER BY u1.FInterID,u1.FEntryID,u.FInterID,u.FEntryID--按入库（汇报）、分录、投料单、投料单分录排序

--统一更新处3.1
UPDATE #ItemConsume SET FQtyMust=FQtyConsume,FAuxQtyMust=FAuxQtyConsume
IF @@RowCount<>0--没有需要生成的耗用记录
BEGIN
DECLARE @DeviationPermmited AS DECIMAL(23,10)--获取偏差值
DECLARE @PPBOMInterID AS INT,@PPBOMEntryID AS INT,@ICMOInterID AS INT,@ICMOEntryID AS INT,@ProductID AS INT
DECLARE @MaxSize AS INT,@Loop AS INT
DECLARE @SumConsume AS DECIMAL(23,10),@SumAuxConsume AS DECIMAL(23,10),@SumConsume1 AS DECIMAL(23,10),@SumAuxConsume1 AS DECIMAL(23,10)
SELECT @DeviationPermmited=FValue FROM t_SystemProfile WHERE FCategory='SH' AND FKey='BackFlushScale'
--SELECT @DeviationPermmited=CONVERT(DECIMAL(23,10),1.0/POWER(convert(decimal(23,10),10),ISNULL(@DeviationPermmited,0)))
--调整差异 这里使用的变量计算逻辑需要特别注意，请不要随意修改
SELECT IDENTITY(INT,1,1) AS FIndex,FICMOInterID, FICMOEntryID, FPPBOMInterID,FPPBOMEntryID,FProductID,FItemID,SUM(FQtyConsume) AS FQtyConsume,SUM(FAuxQtyConsume) AS FAuxQtyConsume--获取累计预计耗用（一张单据存在多张相同任务单的时候）
INTO #SUMItemConsume
FROM #ItemConsume GROUP BY FICMOInterID, FICMOEntryID, FPPBOMInterID,FPPBOMEntryID,FProductID,FItemID
ORDER BY FProductID,FPPBOMInterID,FPPBOMEntryID
UPDATE u SET FQtyConsume=CASE WHEN ABS(u1.FAccumulateQtyConsume-u1.FPPBOMQtyConsume-u.FQtyConsume)< CONVERT(DECIMAL(23,10),@DeviationPermmited*1.0/POWER(convert(decimal(23,10),10),ISNULL(t.FQtyDecimal,0))) THEN (u1.FAccumulateQtyConsume-u1.FPPBOMQtyConsume) ELSE u.FQtyConsume END
            ,FAuxQtyConsume=CASE WHEN ABS(u1.FAccumulateAuxQtyConsume-u1.FPPBOMAuxQtyConsume-u.FAuxQtyConsume)< CONVERT(DECIMAL(23,10),@DeviationPermmited*1.0/POWER(convert(decimal(23,10),10),ISNULL(t.FQtyDecimal,0))) THEN (u1.FAccumulateAuxQtyConsume-u1.FPPBOMAuxQtyConsume) ELSE u.FAuxQtyConsume END
FROM #SUMItemConsume u
INNER JOIN (
            SELECT DISTINCT FPPBOMInterID,FPPBOMEntryID,FAccumulateQtyConsume,FAccumulateAuxQtyConsume,FPPBOMQtyConsume,FPPBOMAuxQtyConsume FROM #ItemConsume
) u1 ON u1.FPPBOMInterID=u.FPPBOMInterID AND u1.FPPBOMEntryID=u.FPPBOMEntryID
INNER JOIN t_ICItemBase t ON t.FItemID=u.FItemID
SELECT @Loop=1,@MaxSize=COUNT(FPPBOMInterID) FROM #SUMItemConsume
WHILE @Loop<=@MaxSize
BEGIN
    SELECT @PPBOMInterID=FPPBOMInterID,@PPBOMEntryID=FPPBOMEntryID,@ICMOInterID = FICMOInterID, @ICMOEntryID = FICMOEntryID,@SumConsume=FQtyConsume,@SumAuxConsume=FAuxQtyConsume,@ProductID=FProductID FROM #SUMItemConsume WHERE FIndex=@Loop
    UPDATE u SET @SumConsume1=FQtyConsume=CASE WHEN ABS(@SumConsume-u.FQtyConsume)<CONVERT(DECIMAL(23,10),@DeviationPermmited*1.0/POWER(convert(decimal(23,10),10),ISNULL(t.FQtyDecimal,0))) THEN ROUND(@SumConsume,t.FQtyDecimal) ELSE ROUND(u.FQtyConsume,t.FQtyDecimal) END
                ,@SumAuxConsume1=FAuxQtyConsume=CASE WHEN ABS(@SumAuxConsume-u.FAuxQtyConsume)<CONVERT(DECIMAL(23,10),@DeviationPermmited*1.0/POWER(convert(decimal(23,10),10),ISNULL(t.FQtyDecimal,0))) THEN ROUND(@SumAuxConsume,t.FQtyDecimal) ELSE ROUND(u.FAuxQtyConsume,t.FQtyDecimal) END
                ,@SumConsume=@SumConsume-CASE WHEN ABS(@SumConsume-u.FQtyConsume)<CONVERT(DECIMAL(23,10),@DeviationPermmited*1.0/POWER(convert(decimal(23,10),10),ISNULL(t.FQtyDecimal,0))) THEN ROUND(@SumConsume,t.FQtyDecimal) ELSE ROUND(u.FQtyConsume,t.FQtyDecimal) END
                ,@SumAuxConsume=@SumAuxConsume-CASE WHEN ABS(@SumAuxConsume-u.FAuxQtyConsume)<CONVERT(DECIMAL(23,10),@DeviationPermmited*1.0/POWER(convert(decimal(23,10),10),ISNULL(t.FQtyDecimal,0))) THEN ROUND(@SumAuxConsume,t.FQtyDecimal) ELSE ROUND(u.FAuxQtyConsume,t.FQtyDecimal) END
    FROM #ItemConsume u
    INNER JOIN t_ICItemBase t ON t.FItemID=u.FItemID
    WHERE u.FPPBOMInterID=FPPBOMInterID AND u.FPPBOMEntryID=@PPBOMEntryID AND u.FICMOInterID = @ICMOInterID AND u.FICMOEntryID = @ICMOEntryID AND u.FProductID=@ProductID
    SET @Loop=@Loop+1
END
--调整基本单位和常用单位的换算差异 统一按照常用单位换算基本单位的原则
UPDATE d SET FQtyConsume=ROUND(ROUND(d.FAuxQtyConsume,t.FQtyDecimal)*tm.FCoefficient,t.FQtyDecimal)
FROM #ItemConsume d
INNER JOIN PPBOMEntry u ON u.FInterID=d.FPPBOMInterID AND u.FEntryID=d.FPPBOMEntryID
INNER JOIN t_ICItemBase t ON t.FItemID=u.FItemID
INNER JOIN t_MeasureUnit tm ON tm.FMeasureUnitID=u.FUnitID
DROP TABLE #SUMItemConsume

UPDATE #ItemConsume SET FQtyMust=FQtyConsume,FAuxQtyMust=FAuxQtyConsume
--产生耗用记录内码耗用记录
DECLARE @InterID AS INT,@EntryID AS INT,@Increase AS INT
DECLARE @InterID1 AS INT
DECLARE @SourceInterID AS INT,@SourceEntryID INT
SELECT @InterID=1001,@Increase=1
SELECT @Increase=ISNULL(COUNT(1),0) FROM (SELECT DISTINCT FSourceInterID,FSourceEntryID FROM #ItemConsume WHERE FInterID=-1) T--获取没有内码的记录
IF @Increase>0
BEGIN
    EXEC GetICMaxNum 'ICShop_ItemConsume',@InterID OUTPUT,@Increase--获取单据内码
    SELECT  @InterID1=Max(FInterID)  from ICShop_ItemConsume
    set @InterID1=@InterID1+1
    if @InterID1>@InterID
    begin
       set @InterID=@InterID1
        update ICMaxNum set FMaxNum=@InterID where FTableName='ICShop_ItemConsume'
    End
    SELECT TOP 1 @SourceInterID=FSourceInterID,@SourceEntryID=FSourceEntryID FROM #ItemConsume
    UPDATE #ItemConsume SET @InterID=CASE WHEN (@SourceInterID=FSourceInterID AND @SourceEntryID=FSourceEntryID) THEN @InterID ELSE @InterID+1 END,@SourceInterID=FSourceInterID,@SourceEntryID=FSourceEntryID,FInterID=@InterID--记录对应的内码和材料耗用的内码
    SELECT TOP 1 @EntryID=0,@InterID=FInterID FROM #ItemConsume
    UPDATE #ItemConsume SET @EntryID=CASE WHEN @InterID=FInterID THEN @EntryID+1 ELSE 1 END,@InterID=FInterID,FEntryID=@EntryID--记录对应的内码和材料耗用的内码
END

--批量生成材料耗用记录
INSERT INTO ICShop_ItemConsume(FInterID,FClassTypeID,FBillNO,FSourceInterID,FSourceEntryID
                              ,FSourceBillNO,FSourceTranType,FICMOInterID,FICMOEntryID,FItemID
                              ,FPPBOMInterID,FPPBOMBillNO,FPPBOMTranType,FIsAutoGen,FWIPDeductMode
                              ,FBillerID,FDate,FProductAuxPropID)
SELECT DISTINCT u.FInterID,1002525,u1.FItemConsumeBillNO,u.FSourceInterID,u.FSourceEntryID
                ,u1.FBillNO,u1.FTranType,u.FICMOInterID,u.FICMOEntryID,u.FProductID,u.FPPBOMInterID,u.FPPBOMBillNO,88,1,0,16394,CONVERT(NVARCHAR(10),GETDATE(),121),ISNULL(u.FProductPropID,0)
FROM #ItemConsume u
INNER JOIN #SourceBill u1 ON u1.FInterID=u.FSourceInterID AND u1.FEntryID=u.FSourceEntryID
--批量生成材料耗用表体记录
INSERT INTO ICShop_ItemConsumeEntry(FInterID,FIndex,FICMOInterID,FICMOEntryID,FPPBOMInterID,FPPBOMEntryID
                              ,FItemID,FUnitID,FQtyConsume,FAuxQtyConsume,FAuxQtyMust,FQtyMust,FOperSN,FOperID,FAuxPropID)
SELECT  u.FInterID,u.FEntryID,u.FICMOInterID,u.FICMOEntryID,u.FPPBOMInterID,u.FPPBOMEntryID
               ,u.FItemID,p.FUnitID,u.FQtyConsume,u.FAuxQtyConsume,u.FAuxQtyMust,u.FQtyMust,u.FOperSN,u.FOperID,ISNULL(p.FAuxPropID,0)
FROM #ItemConsume u
INNER JOIN #SourceBill u1 ON u1.FInterID=u.FSourceInterID AND u1.FEntryID=u.FSourceEntryID
INNER JOIN PPBOMEntry p ON p.FInterID=u.FPPBOMInterID AND p.FEntryID=u.FPPBOMEntryID
ORDER BY u.FInterID,u.FEntryID

--更新投料单
UPDATE u SET FQtyConsume=u.FQtyConsume+(1*s.FQtyConsume)
            ,FAuxQtyConsume= u.FAuxQtyConsume+(1*s.FAuxQtyConsume) 
            ,FWIPQty=u.FWIPQty-(1*s.FQtyConsume)--更新WIP
            ,FWIPAuxQty=u.FWIPAuxQty-(1*s.FAuxQtyConsume) 
FROM PPBOMEntry u
INNER JOIN (
        SELECT FPPBOMInterID,FPPBOMEntryID,FProductID,SUM(FQtyConsume) AS FQtyConsume,SUM(FAuxQtyConsume) AS FAuxQtyConsume
        FROM #ItemConsume GROUP BY FPPBOMInterID,FPPBOMEntryID,FProductID 
) s ON s.FPPBOMInterID=u.FInterID AND s.FPPBOMEntryID=u.FEntryID

  IF EXISTS (SELECT 1 FROM ppbomentry a INNER  join 
  ( SELECT FPPBOMInterID,FPPBOMEntryID FROM #ItemConsume GROUP BY FPPBOMInterID,FPPBOMEntryID)   s ON s.FPPBOMInterID=a.FInterID AND s.FPPBOMEntryID=a.FEntryID   WHERE a.FWIPQTY<1 and a.FWIPQTY<>0 )
BEGIN
     UPDATE a SET a.FWIPQTY = 0,a.FWIPAuxQTY = 0, a.FQtyConsume = a.FQtyMust ,a.FAuxQtyConsume = a.FAuxQtyMust
               FROM ppbomentry a inner  JOIN t_ICItem b ON b.FItemID = a.fitemid
                      inner join  ( SELECT FPPBOMInterID,FPPBOMEntryID FROM #ItemConsume GROUP BY FPPBOMInterID,FPPBOMEntryID)   s ON s.FPPBOMInterID=a.FInterID AND s.FPPBOMEntryID=a.FEntryID       
     WHERE b.FQtyDecimal>0 and a.FWIPQTY<>0 and abs(a.FWIPQTY) < POWER(CAST(0.1 AS DECIMAL(23,10)),b.FQtyDecimal)
 End
IF EXISTS (SELECT 0  FROM PPBOMEntry u INNER JOIN (
 SELECT FPPBOMInterID,FPPBOMEntryID,SUM(FQtyConsume) AS FQtyConsume,SUM(FAuxQtyConsume) AS FAuxQtyConsume
FROM #ItemConsume GROUP BY FPPBOMInterID,FPPBOMEntryID
 ) s ON s.FPPBOMInterID=u.FInterID AND s.FPPBOMEntryID=u.FEntryID
 Where u.FQtyMust = u.FQtyConsume And u.FAuxQtyMust <> u.FAuxQtyConsume )
BEGIN
UPDATE u set u.FAuxQtyConsume = u.FAuxQtyMust  FROM PPBOMEntry u
 INNER JOIN (
 SELECT FPPBOMInterID,FPPBOMEntryID,SUM(FQtyConsume) AS FQtyConsume,SUM(FAuxQtyConsume) AS FAuxQtyConsume
FROM #ItemConsume GROUP BY FPPBOMInterID,FPPBOMEntryID
 ) s ON s.FPPBOMInterID=u.FInterID AND s.FPPBOMEntryID=u.FEntryID
UPDATE u set u.fwipqty = u.fstockqty - u.fqtyconsume - u.fdiscardqty ,u.fwipauxqty = u.fauxstockqty - u.fauxqtyconsume - u.fdiscardauxqty  FROM PPBOMEntry u
 INNER JOIN (
 SELECT FPPBOMInterID,FPPBOMEntryID,SUM(FQtyConsume) AS FQtyConsume,SUM(FAuxQtyConsume) AS FAuxQtyConsume
FROM #ItemConsume GROUP BY FPPBOMInterID,FPPBOMEntryID
 ) s ON s.FPPBOMInterID=u.FInterID AND s.FPPBOMEntryID=u.FEntryID
End
END
--删除临时表
DROP TABLE #SourceBill
DROP TABLE #ItemConsume
DROP TABLE #StockBill


Declare @#ICMO815B10BFA4A84DE2B891F4FE1DC7A0CF table (FICMOInterID int ,FStatus int)
Insert into @#ICMO815B10BFA4A84DE2B891F4FE1DC7A0CF
 select Distinct FICMOInterID, 0 as FStatus 
 from @#Data815B10BFA4A84DE2B891F4FE1DC7A0CF
UPDATE Temp001 SET FSTATUS=(CASE WHEN ROUND(m1.FAuxStockQty+m1.FDiscardStockInAuxQty+m1.FAuxQtyLost,t1.FQtyDecimal)>=ROUND(m1.FAuxInLowLimitQty,t1.FQtyDecimal)
                            THEN 0 ELSE 1 END)
FROM @#ICMO815B10BFA4A84DE2B891F4FE1DC7A0CF Temp001
INNER JOIN ICMO m1  ON m1.FInterID=Temp001.FICMOInterID
INNER JOIN t_ICItemBase t1 ON m1.FItemID=t1.FItemID
IF EXISTS(SELECT TOP 1 1 FROM PPBOMEntry u1 
          INNER JOIN @#ICMO815B10BFA4A84DE2B891F4FE1DC7A0CF Temp ON u1.FICMOInterID=Temp.FICMOInterID 
          WHERE u1.FMaterielType IN (371)
         )
BEGIN
UPDATE Temp001 SET FStatus=(CASE WHEN FStatus=-1 THEN 0 ELSE FStatus END) +ISNULL(t1.FCount,0)  FROM @#ICMO815B10BFA4A84DE2B891F4FE1DC7A0CF Temp001 
LEFT JOIN (
           SELECT COUNT(1) AS FCount,u1.FICMOInterID 
           FROM PPBOMEntry u1 
           INNER JOIN @#ICMO815B10BFA4A84DE2B891F4FE1DC7A0CF Temp ON u1.FICMOInterID=Temp.FICMOInterID 
           INNER JOIN t_ICItemBase t1 ON u1.FItemID=t1.FItemID
           WHERE u1.FMaterielType IN (371) AND ROUND(u1.FAuxStockQty,t1.FQtyDecimal)<ROUND(u1.FAuxQtyMust,t1.FQtyDecimal)
           GROUP BY u1.FICMOInterID 
          ) t1 ON temp001.FICMOInterID=t1.FICMOInterID
END
DECLARE @StartDate AS DateTime
SELECT @StartDate=FStartDate FROM T_PeriodDate
    WHERE FYear=(SELECT TOP 1 ISNULL(FValue,0) FROM t_SystemProfile WHERE FKey ='CurrentYear' AND FCategory='IC')
      AND FPeriod=(SELECT TOP 1 ISNULL(FValue,0) FROM t_SystemProfile WHERE FKey ='CurrentPeriod' AND FCategory='IC')
Update m1
    SET FStatus=(CASE WHEN Temp001.FStatus=0 THEN 3 ELSE (CASE WHEN FCloseDate>=@StartDate THEN 1 ELSE m1.FStatus END) END)
   ,FCloseDate=(CASE WHEN Temp001.FStatus=0 THEN Convert(varchar(10) ,Getdate(),121) ELSE (CASE WHEN FCloseDate>=@StartDate THEN  Null ELSE m1.FCloseDate END) END)
   ,FCheckerID=(CASE WHEN Temp001.FStatus=0 THEN 16394 ELSE (CASE WHEN FCloseDate>=@StartDate THEN  Null ELSE m1.FCheckerID END) END)
   ,FMrpClosed=(CASE WHEN Temp001.FStatus=0 THEN 1 ELSE (CASE WHEN FCloseDate>=@StartDate THEN 0 ELSE m1.FMrpClosed END) END)
   ,FHandworkClose=(CASE WHEN Temp001.FStatus=0 THEN FHandworkClose ELSE 0 END)
FROM ICMO m1 INNER JOIN @#ICMO815B10BFA4A84DE2B891F4FE1DC7A0CF Temp001 ON m1.FInterID=Temp001.FICMOInterID 

IF EXISTS(SELECT 1 FROM @#ICMO815B10BFA4A84DE2B891F4FE1DC7A0CF t1 INNER JOIN ICMO t2 ON t2.FInterID=t1.FICMOInterID AND t2.FStatus=3)
BEGIN
    Delete t1 FROM ICPlan_PMCDetail t1 
    INNER JOIN @#ICMO815B10BFA4A84DE2B891F4FE1DC7A0CF t2 ON t1.FParentInterID=t2.FICMOInterID  AND  t1.FParentTranType=85 AND t1.FParentEntryID=0 
    INNER JOIN ICMO t3 ON t3.FInterID=t2.FICMOInterID AND t3.FStatus=3
END

IF EXISTS(SELECT 1 FROM @#ICMO815B10BFA4A84DE2B891F4FE1DC7A0CF t1 INNER JOIN ICMO t2 ON t2.FInterID=t1.FICMOInterID AND t2.FStatus<>3)
BEGIN
    INSERT INTO ICPlan_PMCDetail(FItemID,FUnitID,FNeedDate,FSrcTranType,FSrcInterID,FSrcEntryID,FRelTranType,FRelInterID,FRelEntryID, FParentTranType,FParentInterID,FParentEntryID,
    FNeedQty,FStockQty,FWillInQty,FPlanOrderInterID,FBillType,FBomCategory,FBomInterID,FPlanCategory,FAuxPropID,FPlanMode,FMtoNo)
    SELECT  v1.FItemID,v2.FUnitID,v1.FPlanFinishDate,v1.FSourceTranType,v1.FSourceInterId,v1.FSourceEntryID,85,v1.FInterID,0 AS FEntryID
            ,85 AS FParentTranType,v1.FInterID AS FParentInterID,0 AS FParentEntryID
            ,v1.FQty AS FNeedQty,v1.FStockQty+v1.FDiscardStockInQty,v1.FQty-v1.FStockQty-v1.FDiscardStockInQty AS FWillInQty,v1.FPlanOrderInterID,1 AS FBillType
            ,v1.FBomCategory,v1.FBomInterID,v1.FPlanCategory,v1.FAuxPropID,v1.FPlanMode,v1.FMtoNo
    From ICMO v1
    INNER JOIN t_ICItemBase v2 ON v1.FItemID=v2.FItemID
    INNER JOIN @#ICMO815B10BFA4A84DE2B891F4FE1DC7A0CF v3 ON v1.FInterID=v3.FICMOInterID  AND v1.FStatus<>3 
    Where v1.FQty>(v1.FStockQty+v1.FDiscardStockInQty) 
    AND NOT EXISTS(SELECT 1 FROM ICPlan_PMCDetail  WITH(NOLOCK)  WHERE FRelTranType=85 AND FRelInterID=v1.FInterID AND FRelEntryID=0 AND FBillType=1)
    INSERT INTO ICPlan_PMCDetail(FItemID,FUnitID,FNeedDate,FRelTranType,FRelInterID,FRelEntryID,FParentTranType,FParentInterID,FParentEntryID,
    FNeedQty,FStockQty,FWillOutQty,FWillInQty, FBillType,FPlanCategory,FAuxPropID,FPlanMode,FMtoNo)
    SELECT t1.FItemID,t1.FUnitID,t1.FSendItemDate AS FNeedDate,88 AS FTranType,t1.FInterID,t1.FEntryID 
               ,ISNULL(t3.fTranType,0) AS FParentTranType,ISNULL(t2.FICMOInterID,0) AS FParentInterID,0 AS FParentEntryID
               ,t1.FQtyMust+t1.FQtySupply AS FNeedQty,t1.FStockQty,CASE WHEN t1.FMaterielType IN(372,373,374) THEN 0 ELSE t1.FQtyMust+t1.FQtySupply-t1.FStockQty  END FWillOutQty
               ,CASE WHEN t1.FMaterielType IN(372,373,374) THEN  t1.FQtyMust+t1.FQtySupply-t1.FStockQty  ELSE 0 END FWillInQty
               ,CASE WHEN t1.FMaterielType IN(372,373,374) THEN  16 ELSE 20 END FBillType
               ,ISNULL(t3.FPlanCategory,0) AS FPlanCategory,t1.FAuxPropID,t1.FPlanMode,t1.FMtoNo 
    FROM PPBOMEntry t1
    INNER JOIN PPBOM t2 ON t1.FInterID=t2.FInTerID AND t2.FOrderEntryID=0
    INNER JOIN ICMO t3 ON t2.FICMOInterID=t3.FInterID
    INNER JOIN t_MeasureUnit t4 ON t1.FUnitID=t4.FItemID 
    INNER JOIN @#ICMO815B10BFA4A84DE2B891F4FE1DC7A0CF t5 ON t3.FInterID=t5.FICMOInterID  AND t3.FStatus<>3 
    WHERE  t1.FMaterielType<>376  AND t1.FQtyMust+t1.FQtySupply>=t1.FStockQty
        AND NOT EXISTS(SELECT 1 FROM ICPlan_PMCDetail WITH(NOLOCK)  WHERE FRelTranType=88 AND FRelInterID=t1.FInterID AND FRelEntryID=t1.FEntryID)
    ORDER BY t1.FInterID,t1.FEntryID
END

 UPDATE tmpEntry SET tmpEntry.FStatus = (CASE WHEN Temp001.FStatus=0 THEN 3 ELSE (CASE WHEN FCloseDate>=@StartDate THEN 1 ELSE tmpEntry.FStatus END) END)
 FROM SHWorkBillEntry  tmpEntry
 INNER JOIN SHWorkBill tmpBill ON tmpEntry.FInterID = tmpBill.FInterID
 INNER JOIN ICMO m ON m.FInterID = tmpBill.FICMOInterID AND m.FWorktypeID = 57
 INNER JOIN @#ICMO815B10BFA4A84DE2B891F4FE1DC7A0CF Temp001 ON m.FInterID=Temp001.FICMOInterID 

go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
SELECT FKey,FValue FROM t_Systemprofile WHERE FCategory = 'IC' AND FKey IN ('ProductSuitControl', 'ProductSuitControlItem')
go
SELECT m2.FICMOInterID 
FROM ICMO u1 INNER JOIN ICStockBillEntry m2 ON u1.FInterID = m2.FICMOInterID 
WHERE m2.FInterID = 1936
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
SELECT ISNULL(FValue,1) AS FValue from t_Systemprofile
 WHERE FCategory='APS' AND Fkey = 'FAuxQtyFinishOriginate'

go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
SELECT distinct ibe.FICMOInterID FROM ICStockBillEntry ibe
INNER JOIN ICStockBill ib ON ibe.FInterID=ib.FInterID AND ib.FTranType=2
INNER JOIN ICMO i ON i.FInterID=ibe.FICMOInterID AND i.FStatus=3
WHERE ibe.FInterID=1936
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED 
SELECT FCategory,FKey,FValue FROM t_systemprofile 
WHERE (FKey IN ('EnableSupplierCooperation')
     AND FCategory='IC') 

go
SELECT FComponentSrv FROM t_ThirdPartyComponent WHERE FTypeID=2 AND FTypeDetailID=200003 ORDER BY FIndex
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
Select FRoB from icStockBill where FInterID=1936 and  FTranType=2
go
Select count(*)  from icStockBillentry where FSNlistID>0 and  FInterID=1936
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
INSERT INTO t_SuspendWorkPushQueue(FPushTypeID,FBillTypeID,FInterID,FEntryID,FStatus,FExtInfo)
VALUES (30210,85,1936,0,0,'lngCheckSwitch=0|lngProcessStatus=4|bICMOBIll=False')
go
SET TRANSACTION ISOLATION LEVEL READ UnCOMMITTED
go
select FValue from t_SystemProfile where FCategory='IC' and FKey='CreditEnable'
go
select * from ICCreditBill where FSource=0 and FID=2
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
SET TRANSACTION ISOLATION LEVEL  READ UNCOMMITTED  SELECT FIndex,FComponentName,FComponentSrv FROM t_ThirdPartyComponent WHERE FTypeID=0 AND FTypeDetailID=2 AND FComponentName <> 'K3AuditTransBill.cAuditLog' AND FComponentSrv <> 'K3MAuditTransBill.cAudit_Bill'  ORDER BY FIndex 
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
INSERT INTO t_SuspendWorkPushQueue(FPushTypeID,FBillTypeID,FInterID,FEntryID,FStatus,FExtInfo)
VALUES (30211,2,1936,0,0,'')
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
SELECT t1.FClassTypeID,t1.FSerialKey,t1.FValue,t2.FFieldName FROM ICClassSerialSet t1 LEFT JOIN ICClassTableInfo t2 ON t1.FClassTypeID=t2.FClassTypeID AND t1.FValue=t2.Fkey 
go
Create Table #SerialTable(
[FSerialClassID] [int] NOT NULL default(0),
[FSerialID] [int] NOT NULL default(0),
[FItemID] [int] NOT NULL default(0),
[FSerialNum] [nvarchar] (255) NOT NULL default(''),
[F_S001] [nvarchar] (255) NOT NULL default(''),
) ON [PRIMARY]
go
Insert into #SerialTable (FSerialClassID,FSerialID,FItemID,FSerialNum,F_S001) Values(1,0,2578,'a001','')

go
Select count(FSerialClassID) from #SerialTable
go
Update t2 Set t2.F_S001=isnull(t1.F_S001,'')
From icSerial_F1 t1 INNER Join #SerialTable t2 
On t1.FItemID=t2.FItemID and t1.FSerialNum=t2.FSerialNum 
Where t2.F_S001=''


go
Update t2 Set t2.FSerialID=t1.FSerialID 
From icSerial t1 Inner Join #SerialTable t2 
On t1.FItemID=t2.FItemID and t1.FSerialNum=t2.FSerialNum 

go
Select FSerialNum From #SerialTable Where FSerialID=0 
go
Update ICSerialID  set FSerialID=FSerialID+1 where FSerialClassID=1

go
select FSerialID From ICSerialID where FSerialClassID=1
go
Declare @i as int 
Set @i=10
Update #SerialTable set @i=@i+1,FSerialID=@i where FSerialID=0 

go
UPDATE t1 SET t1.FStatus = t1.FStatus FROM ICSerial t1 INNER JOIN #SerialTable t2 
ON t1.FSerialID = t2.FSerialID WHERE t1.FSerialClassID = 1

go
Select Top 10 v1.FSerialNum From #SerialTable v1
Left Join ICSerial u1 on v1.FSerialClassID=u1.FSerialClassID and v1.FSerialID=u1.FSerialID
Where u1.FtranTypeID <>85 and  u1.FValid = 0 And  u1.FSNlistID <> 4

go
select top 10 v1.FSerialnum,u1.FSNListID from #SerialTable v1
left join ICSerialflow u1 on v1.FSerialClassID=u1.FSerialClassID and v1.FSerialID=u1.FSerialID
Where u1.FtranTypeID <>85 And u1.FSNListID = 4 and u1.FLast=0 
go
select v1.FSerialNum,isnull(u1.FStatus ,-1) as FStatus  From #serialtable v1
Left Join ICSerial u1 on v1.FSerialClassID=u1.FSerialClassID and v1.FSerialID=u1.FSerialID
 where u1.FSNListID<>4 order by FStatus desc
go
select FValue  from t_systemprofile where FCategory ='IC' and FKey='UPSTOCKWHENSAVE'
go
Delete t1 from ICSerial t1,#SerialTable t2
Where t1.FSerialClassID = t2.FSerialClassID And t1.FSerialID = t2.FSerialID
Delete t1 from ICSerial_F1 t1,#SerialTable t2
Where t1.FSerialClassID = t2.FSerialClassID And t1.FSerialID = t2.FSerialID
update t0 set t0.FLast=2
 from ICSerialFlow t0
 inner join ICSerialFlow t1 on t1.FSerialClassID = t0.FSerialClassID And t1.FSerialID = t0.FSerialID and t0.FSNListid=t1.FPreSNListid
 inner join #SerialTable t2 on t0.FSerialClassID = t2.FSerialClassID And t0.FSerialID = t2.FSerialID
 Where t1.FLast = 1 and t1.FSNListID=4 and t1.FInterID = 1936
 And t1.FTrantypeID = 2 And t1.FItemID = 2578Delete t1 from ICSerialFlow t1,#SerialTable t2
Where t1.FSerialClassID = t2.FSerialClassID And t1.FSerialID = t2.FSerialID 
 And t1.FLast = 1 and t1.FSNListID=4 and t1.FInterID = 1936
 And t1.FTrantypeID = 2 And t1.FItemID = 2578Update ICSerialFlow Set FLast=1 where FLast=2
go
select Top 10 FSerialNum,count(FSerialNum) as C From  #SerialTable Group by FItemID,FSerialNum Order by C Desc
go
Select Top 10 t1.FSerialNum From #SerialTable t1 Inner Join ICSerial t2 on  t1.FItemID=t2.FItemID and t1.FSerialNum=t2.FSerialNum 
go
Update v1 set v1.FLast=0 from icserialflow v1 
Right join  #SerialTable u1 on v1.FSerialClassID=u1.FSerialClassID and v1.FSerialID=u1.FSerialID 
Where v1.FSNListID<>4
go
Drop Table #SerialTable
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
SELECT ISNULL(FValue,0) FROM t_SystemProfile WHERE FKey = 'CheckSerialAfterSaveBill' AND FCategory = 'IC' 
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
Delete From t_FuncControl Where FID=6988 And FUserID=16394
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
 Select FFuncID,FSubSysID From t_SysFunction Where FNumber = 'Cc0022' 
go
SELECT F.*,S.FSubSysID
FROM t_FuncControl F INNER JOIN t_SysFunction S ON F.FFuncID = S.FFuncID
INNER JOIN t_Mutex A ON F.FFuncID = A.FFuncID
WHERE A.FType =  8
 OR (A.FType = 2 AND A.FForbidden = 2)
 OR (A.FType = 4 AND F.FYear = 2019 AND A.FForbidden = 21)
 OR (A.FType = 9 AND A.FForbidden = 2 AND F.FYear = 2019 AND F.FPeriod = 4)
 OR (A.FType = 10 AND A.FForbidden=20022 AND F.FRowID = 1936 AND F.FBizType='0')
 OR (A.FType = 1 AND A.FForbidden=20022)

go
Select Max(FID) FID from t_FuncControl
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
select count(1) as recordcount  from syscolumns where id=(select id from sysobjects where name='t_log')
go
INSERT INTO t_Log (FDate,FUserID,FFunctionID,FStatement,FDescription,FMachineName,FIPAddress) VALUES (getdate(),16394,'K010000',1,'','DESKTOP-H77T5F3','172.15.250.51')
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
SELECT t.FCategory FROM t_SmeComponents t  WHERE FComponent='BillDataAccess.SysInfo' AND t.FCategory='SPHY'
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
Select FValue from t_SystemProfile where FCategory='BOS' and FKey='AccessDataUsed'
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
select FUserID from t_Group where FUserID = 16394 and FGroupID = 1
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
SET TRANSACTION ISOLATION LEVEL  READ UNCOMMITTED  select sum(t1.FQty),SUM(ISNULL(t1.FSecQty,0)) AS FSecQty from ICInventory t1 INNER join t_IcItem t2 ON t1.FItemID = t2.FItemID 
 INNER JOIN t_Stock ts ON t1.FStockID = ts.FItemID 
 WHERE t1.FStockID=470  AND t1.FItemID=2578
 AND  ((ts.FProperty <> 12 and EXISTS(SELECT 1 FROM t_SystemProfile WHERE FCategory='IC' and FKey='InCludeDefectiveProducts' and fvalue =0)) or (EXISTS(SELECT 1 FROM t_SystemProfile WHERE FCategory='IC' and FKey='InCludeDefectiveProducts' and fvalue =1))) AND t1.FStockPlaceID=10 AND t1.FMtoNo=''
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
SET TRANSACTION ISOLATION LEVEL  READ UNCOMMITTED  SELECT ti.FQtyDecimal,tm.FName AS FUnitName FROM t_ICItemBase ti LEFT JOIN t_MeasureUnit tm ON ti.FUnitID = tm.FMeasureUnitID Where ti.FItemID = 2578
go
SET TRANSACTION ISOLATION LEVEL READ UnCOMMITTED
go
select FCoefficient,FScale  from t_MeasureUnit Where FItemID=261
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
select count(1) as recordcount  from syscolumns where id=(select id from sysobjects where name='t_log')
go
INSERT INTO t_Log (FDate,FUserID,FFunctionID,FStatement,FDescription,FMachineName,FIPAddress) VALUES (getdate(),16394,'K010000',3,'编号为CIN000017的单据保存成功','DESKTOP-H77T5F3','172.15.250.51')
go
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
go
SET NOCOUNT ON
go
 select 1 from ICClassMCTemplate where FClassTypeID=1002 and FIsRun =1 
go
SET TRANSACTION ISOLATION LEVEL READ UnCOMMITTED
go
Select FOptionValue , FMaxCheckLevel ,FCheckCtlLevel FROM  t_MultiCheckOption Where FBillType = 2
go
SELECT * From ICStockBill WHERE FTranType=2 AND FinterID=1936
go
SET TRANSACTION ISOLATION LEVEL READ UnCOMMITTED
go
SET NOCOUNT ON IF EXISTS (SELECT 1 FROM sysColumns WHERE [Name]='FMultiCheckStatus' AND [id]=OBJECT_ID('ICStockBill')) EXEC ('SELECT FMultiCheckStatus FROM ICStockBill WHERE FInterID=1936') ELSE SELECT 0 
go
SET TRANSACTION ISOLATION LEVEL READ UnCOMMITTED
go
SELECT 1 FROM ICStockBillEntry v1 INNER JOIN ICMO u1 ON v1.FICMOInterID = u1.FInterID AND u1.FStatus = 3 AND v1.FInterID = 1936
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
SELECT t1.FSRCIDKey FROM ICClassLink t1 INNER JOIN v_ICBillFlow t2 ON t1.FSourTranTypeID=t2.FSourTranTypeID AND t1.FDestTranTypeID=t2.FDestTranTypeID WHERE t2.FDestTemplateID='A02' AND t2.FFieldName='FSCBillInterID'
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
SELECT 1 FROM ICStockBillEntry WHERE FInterID=1936 AND ISNULL(FSourceInterId,0)<>0
go
SET TRANSACTION ISOLATION LEVEL READ UnCOMMITTED
go
SELECT ICStockBill.FInterID, ICStockBill.Fdate, ICStockBill.FDeptID, t001.FNumber as  FDeptIDNumber, t001.FName as  FDeptIDName, ICStockBill.FBillNo, ICStockBill.FDCStockID, t003.FNumber as  FDCStockIDNumber, t003.FName as  FDCStockIDName, ICStockBill.FCheckerID, t004.FDescription as  FCheckerIDNumber, t004.FName as  FCheckerIDName, ICStockBill.FCheckDate, ICStockBill.FPosterID, t006.FDescription as  FPosterIDNumber, t006.FName as  FPosterIDName, ICStockBill.FFManagerID, t007.FNumber as  FFManagerIDNumber, t007.FName as  FFManagerIDName, ICStockBill.FSManagerID, t008.FNumber as  FSManagerIDNumber, t008.FName as  FSManagerIDName, ICStockBill.FBillerID, t009.FDescription as  FBillerIDNumber, t009.FName as  FBillerIDName, ICStockBill.FMultiCheckDate1, ICStockBill.FMultiCheckDate2, ICStockBill.FMultiCheckDate3, ICStockBill.FMultiCheckDate4, ICStockBill.FMultiCheckDate5, ICStockBill.FMultiCheckDate6, ICStockBill.FVchInterID, ICStockBill.FSelTranType, t017.FName as  FSelTranTypeNumber, t017.FName as  FSelTranTypeName, ICStockBill.FManageType, t019.FNumber as  FManageTypeNumber, t019.FName as  FManageTypeName, ICStockBill.FPrintCount, ICStockBill.FBillReviewer, t021.FDescription as  FBillReviewerNumber, t021.FName as  FBillReviewerName, ICStockBill.FBillReviewDate, ICStockBill.FHeadSelfA0232, ICStockBill.FBrNo, ICStockBill.FTranType, ICStockBill.FCancellation, ICStockBill.FStatus, ICStockBill.FUpStockWhenSave, ICStockBill.FROB, ICStockBill.FHookStatus
 FROM ICStockBill left join t_Department  t001 on ICStockBill.FDeptID= t001.FItemID  AND t001.FItemID<>0  left join t_Stock  t003 on ICStockBill.FDCStockID= t003.FItemID  AND t003.FItemID<>0  left join t_User  t004 on ICStockBill.FCheckerID= t004.FUserID  AND t004.FUserID<>0  left join t_User  t006 on ICStockBill.FPosterID= t006.FUserID  AND t006.FUserID<>0  left join t_Emp  t007 on ICStockBill.FFManagerID= t007.FItemID  AND t007.FItemID<>0  left join t_Emp  t008 on ICStockBill.FSManagerID= t008.FItemID  AND t008.FItemID<>0  left join t_User  t009 on ICStockBill.FBillerID= t009.FUserID  AND t009.FUserID<>0  left join v_ICTransType  t017 on ICStockBill.FSelTranType= t017.FInterID  AND t017.FInterID<>0  left join t_BaseBondedManageType  t019 on ICStockBill.FManageType= t019.FID  AND t019.FID<>0  left join t_User  t021 on ICStockBill.FBillReviewer= t021.FUserID  AND t021.FUserID<>0 
 WHERE ICStockBill.FInterID IN (1936)
go
SET TRANSACTION ISOLATION LEVEL READ UnCOMMITTED
go
 SELECT TOP 1 1 FROM SysObjects WHERE Name='t_SMEComponents' AND XType='U' 
go
select t.FCategory from t_SMEComponents t where FComponent='K3MBillsPackage.clsReadPackage' and t.FCategory='SPHY'
go
SELECT ICStockBillEntry.FInterID,ICStockBillEntry.FEntryID, ICStockBillEntry.FEntryID, ICStockBillEntry.FItemID, t002.FQtyDecimal, t002.FPriceDecimal, t002.FUnitGroupID, t002.FNumber as  FItemIDNumber, t002.FName as  FItemIDName, t002.Fname as FItemName, t002.Fmodel as FItemModel, ICStockBillEntry.FAuxPropID, t005.FNumber as  FAuxPropIDNumber, t005.FName as  FAuxPropIDName, t006.FName as FBaseUnit, ICStockBillEntry.FBatchNo, t002.Ftrack, ICStockBillEntry.FQtyMust, ICStockBillEntry.FQty, ICStockBillEntry.FUnitID, t010.FNumber as  FUnitIDNumber, t010.FName as  FUnitIDName, ICStockBillEntry.FAuxQtyMust, ICStockBillEntry.Fauxqty, t013.FName as FSecUnitID, ICStockBillEntry.FSecCoefficient, ICStockBillEntry.FSecQty, ICStockBillEntry.FAuxPlanPrice, ICStockBillEntry.FPlanAmount, ICStockBillEntry.Fauxprice, ICStockBillEntry.Famount, ICStockBillEntry.Fnote, ICStockBillEntry.FKFDate, ICStockBillEntry.FKFPeriod, ICStockBillEntry.FPeriodDate, ICStockBillEntry.FDCStockID, t024.FNumber as  FDCStockIDNumber, t024.FName as  FDCStockIDName, ICStockBillEntry.FDCSPID, t025.FNumber as  FDCSPIDNumber, t025.FName as  FDCSPIDName, ICStockBillEntry.FSNListID, t002.FIsSNManage as FIsSNManage, ICStockBillEntry.FSourceBillNo, ICStockBillEntry.FSourceTranType, ICStockBillEntry.FSourceInterId, ICStockBillEntry.FSourceEntryID, ICStockBillEntry.FICMOBillNo, ICStockBillEntry.FICMOInterID, ICStockBillEntry.FPPBomEntryID, t002.FAuxClassID as FAuxPropCls, ICStockBillEntry.FPlanMode, t036.FID as  FPlanModeNumber, t036.FName as  FPlanModeName, ICStockBillEntry.FMTONo, ICStockBillEntry.FChkPassItem, t038.FID as  FChkPassItemNumber, t038.FName as  FChkPassItemName, ICStockBillEntry.FReviewBillsQty, ICStockBillEntry.weiwaiqingkuang, ICStockBillEntry.FEntrySelfA0241, ICStockBillEntry.FEntrySelfA0242,ICStockBillEntry.FEntryID AS FInputOrderID, ICStockBillEntry.FEntryID AS FOldEntryID,  ICStockBillEntry.FBrNo
 FROM ICStockBillEntry join t_ICItem  t002 on t002.FItemID = ICStockBillEntry.FItemID AND t002.FItemID <>0  left join t_AuxItem  t005 on t005.FItemID = ICStockBillEntry.FAuxPropID AND t005.FItemID <>0  left join t_MeasureUnit t006 on  t006.FItemID=t002.FUnitID  AND t006.FItemID<>0  left join t_MeasureUnit  t010 on t010.FItemID = ICStockBillEntry.FUnitID AND t010.FItemID <>0  left join t_MeasureUnit t013 on  t013.FItemID=t002.FSecUnitID  AND t013.FItemID<>0  left join t_Stock  t024 on t024.FItemID = ICStockBillEntry.FDCStockID AND t024.FItemID <>0  left join t_StockPlace  t025 on t025.FSPID = ICStockBillEntry.FDCSPID AND t025.FSPID <>0  left join t_SubMessage  t036 on t036.FInterID = ICStockBillEntry.FPlanMode AND t036.FInterID <>0  left join t_SubMessage  t038 on t038.FInterID = ICStockBillEntry.FChkPassItem AND t038.FInterID <>0 
 WHERE ICStockBillEntry.FInterID IN (1936)
 ORDER BY ICStockBillEntry.FEntryID
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
SELECT t.FCategory FROM t_SmeComponents t  WHERE FComponent='BillDataAccess.SysInfo' AND t.FCategory='SPHY'
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
Select FValue from t_SystemProfile where FCategory='BOS' and FKey='AccessDataUsed'
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
select FUserID from t_Group where FUserID = 16394 and FGroupID = 1
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
SET TRANSACTION ISOLATION LEVEL  READ UNCOMMITTED  select sum(t1.FQty),SUM(ISNULL(t1.FSecQty,0)) AS FSecQty from ICInventory t1 INNER join t_IcItem t2 ON t1.FItemID = t2.FItemID 
 INNER JOIN t_Stock ts ON t1.FStockID = ts.FItemID 
 WHERE t1.FStockID=470  AND t1.FItemID=2578
 AND  ((ts.FProperty <> 12 and EXISTS(SELECT 1 FROM t_SystemProfile WHERE FCategory='IC' and FKey='InCludeDefectiveProducts' and fvalue =0)) or (EXISTS(SELECT 1 FROM t_SystemProfile WHERE FCategory='IC' and FKey='InCludeDefectiveProducts' and fvalue =1))) AND t1.FStockPlaceID=10 AND t1.FMtoNo=''
go
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
go
SET TRANSACTION ISOLATION LEVEL  READ UNCOMMITTED  SELECT ti.FQtyDecimal,tm.FName AS FUnitName FROM t_ICItemBase ti LEFT JOIN t_MeasureUnit tm ON ti.FUnitID = tm.FMeasureUnitID Where ti.FItemID = 2578
go
SET TRANSACTION ISOLATION LEVEL READ UnCOMMITTED
go
select FCoefficient,FScale  from t_MeasureUnit Where FItemID=261

go

--insert into ICSerial (FSerialClassID,FItemID,FStockID,FStockPlace,FOutStockID,FOutStockPlace,FAuxPropID,FBatchNO,FKFDate,FKFPeriod,FtranTypeID,FInterID,FSNListID,FSupplyID,FSerialNum,FSerialID,Fstatus,FValid) 
--select v1.FSerialClassID as FSerialClasss,2578,470,10,0,0,0,'','',0,2,1936,4,0,v1.FSerialNum AS FSerialNum,v1.FSerialID AS FSerialID,1,1 From #SerialTable v1 
--Left Join ICSerial u1 on v1.FSerialClassID=u1.FSerialClassID and v1.FSerialID=u1.FSerialID
--go
--Insert Into ICSerial_F1(FSerialClassID,FSerialID,FSerialNum,FItemID,FSNListID,F_S001) 
--select v1.FSerialClassID as FSerialClasss,v1.FSerialID as FSerialID,v1.FSerialNum as FSerialNum,2578,4,v1.F_S001 From #SerialTable v1 
--Left Join ICSerial u1 on v1.FSerialClassID=u1.FSerialClassID and v1.FSerialID=u1.FSerialID
--go
--Insert Into icserialflow(FTranTypeID,FInterID,FItemID,FSNListID,FStatus,FLast,FSerialClassID,FSerialID,FPreTranTypeID,FPreInterID,FPreSNListID)
--Select 2,1936,2578,4,1,1,1,v1.FSerialID,isnull(u1.FTranTypeID,0),isnull(u1.FInterID,0),isnull(u1.FSNListID,0)
--From #SerialTable v1 Left Join icserialflow u1 on v1.FSerialClassID=u1.FSerialClassID and v1.FSerialID=u1.FSerialID 
--Where isnull(u1.FLast,1)=1 



--序列号主表icSerial 



SELECT * FROM dbo.ICSerial    --select FSerialClassID from t_ICItem WHERE FItemID = 2578

--FSerialID:select FSerialID From ICSerialID where FSerialClassID=1
--FStockID:仓库

---------此值存放序号最后状态的仓库，因此若是调拨单，此时 会变成调入的仓库
--FOutStockID:0

---------若是调拨单，此值会变成，调出的仓库的id即原先的FStockID的数据

--FtranTypeID：生成的单据的类型（1：外购入库单 2：产品入库 10：其他入库单 21：销售出库 24：生产领料单 29：其他出库单41：调拨单 ）
--------- 此值会随着 序号所在的单据做变更

--FInterID：生成的单据的FinterID

--FSNListID：select FSerialID From ICSerialID where FSerialClassID=-1

--Fstatus：初始值：0 【说明：单据是保存的状态：0表示预入库；单据是审核的状态 1:表示在库】

---------0：表示产品不在库状态；1：表示此序号是在库状态

--FValid：初始值：0 【说明：单据是保存的状态：0表示预入库；单据是审核的状态 1:表示在库】

---------0：表示对应的单据的状态是保存状态；1：表示对应的单据的状态是审核状态

---------【若做出货后，出货单保存的话此值变为0】

--FSerialDetialID:自增长id

--------- 此值会变化

--FSupplyID：初始值 0


select * From ICSerialID

SELECT * FROM dbo.ICSerial_F1   --序列号规则表


SELECT * FROM dbo.ICSerialFlow
--FLast：初始默认1
---------若是出货单的保存，默认值是1

---------【若做出货后，出货单保存的话此值变为1，原先行数据此值会变成0】


--FPreTranTypeID：初始默认0

---------存放该序号 对应的前一张单据的单据类型


select * from ICSerialClass  --规则定义表
select * from ICSerialID  --序列号的id表

select * from ICSerialGenerate	  --UPDATE ICSerialgenerate SET FHead='a',FTail='',FStart=1,FEnd=10,FStep=1,FLength=3 WHERE FGenerateID=1

select * from ICSerialGroup


--备注：目前初始启用序列号时 都设置了序列号的规则为默认规则
--FSerialClassID =1

--UPDATE dbo.t_ICItem

--SET FSerialClassID =1,FIsSnManage=1

--WHERE t_ICItem.FNumber like 'F01%'