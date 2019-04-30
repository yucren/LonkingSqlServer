

SELECT * FROM ictransactiontype WHERE fname LIKE '%生产任务单%'  
--先查找事务单据序时簿类别
SELECT * FROM dbo.ICListTemplate WHERE fname LIKE '%生产任务单%'   --90
--SELECT * FROM [192.168.1.22].[test_LonKingMES_FJJX].dbo.LKM_ProductScheduling
-- SELECT fDocNo,COUNT(fStatus)FROM [192.168.1.22].[test_LonKingMES_FJJX].dbo.LKM_ProductScheduling WHERE fStatus =214 GROUP BY fDocNo

--创建要包含要加入字段的视图
  CREATE VIEW dbo.MESWorkPinZhuangStatus 
 as

  SELECT b.FInterID AS 生产任务单号,COUNT(a.fStatus) 已拼装数据 FROM [192.168.1.22].[test_LonKingMES_FJJX].dbo.LKM_ProductScheduling a 
  INNER	JOIN dbo.ICMO  b ON a.fDocNo = b.FBillNo 
   WHERE a.fStatus =214 GROUP BY b.FInterId
--select * from ICTableRelation where ftypeid = 90 AND finterid = 36

--向ICTableRelation插入表格之间的关系
INSERT INTO dbo.ICTableRelation(FTypeID,FTableName,FTableNameAlias,
FFieldName,FTableName11,FTableNameAlias11,FFieldName11,FLogic,FBillID,FFieldID,FMode,FIndex,FCondition,FLeftParentheses,FRightParentheses,FLogicOperator,FISConst,FConstType,FSubFilter)
SELECT
ftypeid,ftablename,FTableNameAlias,'FInterID','MESWorkPinZhuangStatus','v2','生产任务单号','=',fbillid,ffieldid,fmode,findex,'','','','=',0,0,''
FROM dbo.ICTableRelation WHERE ftypeid = 90 AND finterid = 36

--调整
UPDATE dbo.ICTableRelation SET FFieldName ='FInterID'  WHERE FTypeID=90 AND FInterID = 0
--插入序时簿字段
insert ICChatBillTitle (FInterID, FTypeID, FColCaption, FHeadSecond,
FColName, FTableName, FColType, FColWidth, FVisible, FItemClassID,
FVisForQuest,FReturnDataType,FCountPriceType, FCtlIndex, FName,
FTableAlias, FAction, FNeedCount, FIsPrimary,FLogicAction, FStatistical,
FMergeable,FVisForOrder, FColCaption_CHT, FColCaption_EN,FControl,
FMode,FControlType, FPrecisionField, FAlign, FEditable, FFormat,
FFormatType)
Select 500001, 90, '已拼装数量$', '' ,'已拼装数据', 'MESWorkPinZhuangStatus', 2, 1000, 3, -1, 1,
0, 0, 5, '已拼装数据', 'yuchengren', '', 0, 0, '', 1, 0,1, '已拼装数量$', 'pinzhuangNum $',
0, 0, 5, '', 0, 0, '', 0


UPDATE dbo.ICChatBillTitle SET FVisForQuest =1 WHERE FInterID =500001

SELECT * FROM dbo.ICChatBillTitle

SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
select top 40 
t45.FICMOInterID AS FICMOInterID,
t10.FName AS FCustIDName,
v1.FCustID AS FCustID,
t35.FName AS FCostObjIDName,
v1.FCostObjID AS FCostObjID,
t1.Fname AS FTranTypeName,
t7.FTraceTypeID AS FTraceTypeID,
t7.FName AS FWorktypeIDName,
v1.Ftype AS FWorktypeID,
v1.FWorkShop AS FWorkShop,
v1.FItemID AS FItemID,
v1.FStatus AS FStatus,
v1.FTranType AS FTranType,
v1.FInterID AS FInterID,
v1.FBillNo AS FBillNo,
Case v1.FStatus when 0 then '计划' when 3 then '结案' when 5 then '确认' Else '下达' end AS FstatusName,
t8.FName AS FWorkShopName,
t9.FNumber AS FLongNumber,
t9.Fname AS FItemName,
t9.Fmodel AS FItemModel,
v1.FGMPBatchNo AS FGMPBatchNo,
t12.FName AS FUnitIDName,
v1.Fauxqty AS Fauxqty,
v1.FPlanCommitDate AS FPlanBeginDate,
v1.FPlanFinishDate AS FPlanFinishDate,
t7.FName AS FWorkTypeName,
t36.FBomNumber AS FFBomNumber,
t35.FName AS FCostObjName,
(CASE when  t5.FName is NULL THEN '手工录入' WHEN t5.FName='0' THEN '手工录入' ELSE t5.FName END) AS FMRPName,
t37.FPlanOrderNo AS FPlanOrderNumber,
IsNull(T22.FBillNO,'') AS FOrderBillNo,
t10.FName AS FSupplyName,
Case WHEN t9.FProductUnitID=0 THEN '' Else  t50.FName end AS FCUUnitName,
case when v1.FCancellation=1 then 'Y' else '' end AS FCancellation,
CASE  V1.FSuspend WHEN 0 THEN '' ELSE 'Y' END AS FSuspend,
t7.FICMOTypeID AS FICMOTypeID,
t15.FName AS FBaseUnitID,
t20.FBillNo AS FPICMOBillNo,
t9.FQtyDecimal AS FQtyDecimal,
t9.FPriceDecimal AS FPriceDecimal,
case when v1.FHandworkClose=1 then 'Y' else '' end  AS FHandworkClose,
v1.FType AS FICMOType2,
v1.FWorktypeID AS FWorkTypeID2,
t60.FMoStatusName AS FBizStatus,
yuchengren.已拼装数据 AS 已拼装数据 from ICMO v1 INNER JOIN MESWorkPinZhuangStatus yuchengren ON   v1.FBillNo = yuchengren.生产任务单号  AND yuchengren.生产任务单号<>0 
 LEFT OUTER JOIN t_SubMessage t5 ON   v1.FMRP = t5.FInterID  AND t5.FInterID<>0 
 LEFT OUTER JOIN t_WorkType t7 ON   v1.FWorktypeID = t7.FInterID  AND t7.FInterID<>0 
 LEFT OUTER JOIN t_Department t8 ON   v1.FWorkShop = t8.FItemID  AND t8.FItemID<>0 
 INNER JOIN t_ICItem t9 ON   v1.FItemID = t9.FItemID  AND t9.FItemID<>0 
 INNER JOIN t_MeasureUnit t12 ON   v1.FUnitID = t12.FItemID  AND t12.FItemID<>0 
 LEFT OUTER JOIN SEOrder t22 ON   v1.FOrderInterID = t22.FInterID  AND t22.FInterID<>0 
 LEFT OUTER JOIN t_MeasureUnit t15 ON   t9.FUnitID = t15.FMeasureUnitID  AND t15.FMeasureUnitID<>0 
 LEFT OUTER JOIN ICMO t20 ON   v1.FParentInterID = t20.FInterID  AND t20.FInterID<>0 
 LEFT OUTER JOIN CBCostObj t35 ON   v1.FCostObjID = t35.FItemID  AND t35.FItemID<>0 
 LEFT OUTER JOIN ICBom t36 ON   v1.FBomInterID = t36.FInterID  AND t36.FInterID<>0 
 LEFT OUTER JOIN t_MeasureUnit t50 ON   t9.FProductUnitID = t50.FItemID  AND t50.FItemID<>0 
 LEFT OUTER JOIN ICMrpResult t37 ON   v1.FPlanOrderInterID = t37.FPlanOrderInterID  AND t37.FPlanOrderInterID<>0 
 LEFT OUTER JOIN t_Organization t10 ON   v1.FCustID = t10.FItemID  AND t10.FItemID<>0 
 LEFT OUTER JOIN PPBOM t45 ON   v1.FInterID = t45.FICMOInterID  AND t45.FICMOInterID<>0 
 LEFT OUTER JOIN v_ICTransType t1 ON   v1.FTranType = t1.FID  AND t1.FID<>0 
 LEFT OUTER JOIN vw_ICMOStatus t60 ON   v1.FInterID = t60.FInterID  AND t60.FInterID<>0 
 where  (v1.FInterID=2824533) order by  v1.FInterID

 SELECT * FROM ICTableRelation WHERE FTypeID=90 ORDER BY FInterID,FTableNameAlias,FFieldName,FTableNameAlias11,FFieldName11,FIndex


 SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
select 
t45.FICMOInterID AS FICMOInterID,
t10.FName AS FCustIDName,
v1.FCustID AS FCustID,
t35.FName AS FCostObjIDName,
v1.FCostObjID AS FCostObjID,
t1.Fname AS FTranTypeName,
t7.FTraceTypeID AS FTraceTypeID,
t7.FName AS FWorktypeIDName,
v1.Ftype AS FWorktypeID,
v1.FWorkShop AS FWorkShop,
v1.FItemID AS FItemID,
v1.FStatus AS FStatus,
v1.FTranType AS FTranType,
v1.FInterID AS FInterID,
v1.FBillNo AS FBillNo,
Case v1.FStatus when 0 then '计划' when 3 then '结案' when 5 then '确认' Else '下达' end AS FstatusName,
t8.FName AS FWorkShopName,
t9.FNumber AS FLongNumber,
t9.Fname AS FItemName,
t9.Fmodel AS FItemModel,
v1.FGMPBatchNo AS FGMPBatchNo,
t12.FName AS FUnitIDName,
v1.Fauxqty AS Fauxqty,
v1.FPlanCommitDate AS FPlanBeginDate,
v1.FPlanFinishDate AS FPlanFinishDate,
t7.FName AS FWorkTypeName,
t36.FBomNumber AS FFBomNumber,
t35.FName AS FCostObjName,
(CASE when  t5.FName is NULL THEN '手工录入' WHEN t5.FName='0' THEN '手工录入' ELSE t5.FName END) AS FMRPName,
t37.FPlanOrderNo AS FPlanOrderNumber,
IsNull(T22.FBillNO,'') AS FOrderBillNo,
t10.FName AS FSupplyName,
Case WHEN t9.FProductUnitID=0 THEN '' Else  t50.FName end AS FCUUnitName,
case when v1.FCancellation=1 then 'Y' else '' end AS FCancellation,
CASE  V1.FSuspend WHEN 0 THEN '' ELSE 'Y' END AS FSuspend,
t7.FICMOTypeID AS FICMOTypeID,
t15.FName AS FBaseUnitID,
t20.FBillNo AS FPICMOBillNo,
t9.FQtyDecimal AS FQtyDecimal,
t9.FPriceDecimal AS FPriceDecimal,
case when v1.FHandworkClose=1 then 'Y' else '' end  AS FHandworkClose,
v1.FType AS FICMOType2,
v1.FWorktypeID AS FWorkTypeID2,
t60.FMoStatusName AS FBizStatus,
yuchengren.已拼装数据 AS 已拼装数据 from ICMO v1 LEFT OUTER JOIN MESWorkPinZhuangStatus yuchengren ON   v1.FInterID = yuchengren.生产任务单号  AND yuchengren.生产任务单号<>0 
 LEFT OUTER JOIN t_SubMessage t5 ON   v1.FMRP = t5.FInterID  AND t5.FInterID<>0 
 LEFT OUTER JOIN t_WorkType t7 ON   v1.FWorktypeID = t7.FInterID  AND t7.FInterID<>0 
 LEFT OUTER JOIN t_Department t8 ON   v1.FWorkShop = t8.FItemID  AND t8.FItemID<>0 
 INNER JOIN t_ICItem t9 ON   v1.FItemID = t9.FItemID  AND t9.FItemID<>0 
 INNER JOIN t_MeasureUnit t12 ON   v1.FUnitID = t12.FItemID  AND t12.FItemID<>0 
 LEFT OUTER JOIN SEOrder t22 ON   v1.FOrderInterID = t22.FInterID  AND t22.FInterID<>0 
 LEFT OUTER JOIN t_MeasureUnit t15 ON   t9.FUnitID = t15.FMeasureUnitID  AND t15.FMeasureUnitID<>0 
 LEFT OUTER JOIN ICMO t20 ON   v1.FParentInterID = t20.FInterID  AND t20.FInterID<>0 
 LEFT OUTER JOIN CBCostObj t35 ON   v1.FCostObjID = t35.FItemID  AND t35.FItemID<>0 
 LEFT OUTER JOIN ICBom t36 ON   v1.FBomInterID = t36.FInterID  AND t36.FInterID<>0 
 LEFT OUTER JOIN t_MeasureUnit t50 ON   t9.FProductUnitID = t50.FItemID  AND t50.FItemID<>0 
 LEFT OUTER JOIN ICMrpResult t37 ON   v1.FPlanOrderInterID = t37.FPlanOrderInterID  AND t37.FPlanOrderInterID<>0 
 LEFT OUTER JOIN t_Organization t10 ON   v1.FCustID = t10.FItemID  AND t10.FItemID<>0 
 LEFT OUTER JOIN PPBOM t45 ON   v1.FInterID = t45.FICMOInterID  AND t45.FICMOInterID<>0 
 LEFT OUTER JOIN v_ICTransType t1 ON   v1.FTranType = t1.FID  AND t1.FID<>0 
 LEFT OUTER JOIN vw_ICMOStatus t60 ON   v1.FInterID = t60.FInterID  AND t60.FInterID<>0 
WHERE yuchengren.已拼装数据 IS NOT NULL  order by  v1.FInterID