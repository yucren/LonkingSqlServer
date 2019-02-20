  --查看已扫描件

  select mopicklist.fSerialNo,mopicklist.fItemCode,mopicklist.fItemName,mopicklist.fNum,mopicklist.fSteelCode,mopicklist.
  fSupAndFacCode,fScanner,moOrder.fMoDocNo,moOrder.fItemCode,moOrder.fItemName,
  moOrder.fModel,moOrder.fUnit,moOrder.fPlanNum,moOrder.fstatuname,d.fName  
   from LKM_MOPickList mopicklist
    inner join Vw_MDOrder moOrder on mopicklist.fSerialNo =moOrder.flotcode 
	inner join lkm_Materials c on   mopicklist.fItemID =c.fItemID 
     left join LKM_ItemCategory d on c.fMaterial_Class =d.fInterID where mopicklist.fSerialNo ='>LFJ00000TJAB00003<' or mopicklist.fSerialNo ='>LFJ0833NCJBC00005<'
	 
	 
	 where moOrder.fItemName like '%装载机%' and d.fName is null

  select * from lkm_Materials where fItemCode ='10803330060'


    select  distinct a.fItemCode,a.fItemName  
   from LKM_MOPickList a inner join Vw_MDOrder b on a.fSerialNo =b.flotcode inner join lkm_Materials c on 
  a.fItemID =c.fItemID left join LKM_ItemCategory d on c.fMaterial_Class =d.fInterID where b.fItemName like '%装载机%' and d.fName is null

  select * from LKM_MCCRuleSubEntry


  select fInterID,fCode,fName,fXOrP,fClassification  FROM LKM_ItemCategory  where  fInterID in (         select fMatID from LKM_MCCMatEntry         where fMccEntryID = 174          and fMccItemID = 5176)


    select * from LKM_MCCMatEntry         where fMccEntryID = 174          and fMccItemID = 5176

	select * from LKM_MCCItemEntry where fItemID =5176


	select * from lkm_Materials where fItemID =5176
	select * from LKM_MCCPTEntry
	select * from LKM_MCCMatEntry
	select * from LKM_MOPickList
	select * from LKM_MCC


	select * from LKM_MCCItemEntry



	--查询工序关重件


	select ISNULL(commonBill.fName,''),itemcategory.fName, mopicklist.fSerialNo ,mopicklist.fItemCode,mopicklist.fItemName,mopicklist.fNum,
	mopicklist.fIsScan,	mopicklist.	fSupAndFacCode,mopicklist.fScanner,moOrder.fMoDocNo,moOrder.fItemCode,
	moOrder.fItemName,moOrder.fModel,	moOrder.fstatuname from LKM_MOPickList mopicklist
	inner join lkm_Materials materials on materials.fItemCode =mopicklist.fItemCode
    inner join Vw_MDOrder moOrder on mopicklist.fSerialNo =moOrder.flotcode 
	inner join LKM_MCCItemEntry mccItemEntry on mccItemEntry.fItemCode =moOrder.fItemCode
	left join LKM_MCCMatEntry mccmat on  mccmat.fMccItemID =mccItemEntry.fInterID and materials.fMaterial_Class =mccmat.fMatID
    left join LKM_MCCPTEntry mccTentry on mccTentry.fInterID =mccmat.fMccEntryID
	left join lkm_CommonBill commonBill on commonBill.fInterID =mccTentry.fProTecID 
	left join LKM_ItemCategory ItemCategory on ItemCategory.fInterID=materials.fMaterial_Class

	where mopicklist.fSerialNo ='>LFJ0855NLJAB00006<'





	
	inner join LKM_MCC mcc on mccTentry.fConfigID =mcc.fInterID 
	inner join lkm_CommonBill commonBill on commonBill.fInterID =mccTentry.fProTecID 
		
	and mccmat.fMccEntryID = mccTentry.fInterID

	inner join lkm_Materials materials on materials.fMaterial_Class =mccmat.fMatID and materials.fItemCode =mopicklist.fItemCode
	where mopicklist.fSerialNo ='>LFJ00000TJAB00003<' or mopicklist.fSerialNo ='>LFJ0833NCJBC00005<'



	
	select *  from LKM_MOPickList mopicklist
    inner join Vw_MDOrder moOrder on mopicklist.fSerialNo =moOrder.flotcode 
	inner join LKM_MCCItemEntry mccItemEntry on mccItemEntry.fItemCode =moOrder.fItemCode
	inner join LKM_MCCPTEntry mccTentry on mccTentry.fConfigID =mccItemEntry.fConfigID	
	inner join LKM_MCC mcc on mccTentry.fConfigID =mcc.fInterID
	inner join lkm_CommonBill commonBill on commonBill.fInterID =mccTentry.fProTecID 
	inner join LKM_MCCMatEntry mccmat on mccmat.fMccEntryID = mccTentry.fInterID
	inner join lkm_Materials materials on materials.fMaterial_Class =mccmat.fMatID and materials.fItemCode =mopicklist.fItemCode
	where mopicklist.fSerialNo ='>LFJ00000TJAB00003<' or mopicklist.fSerialNo ='>LFJ0833NCJBC00005<'

	

	select  a.fInterID,d.fName,a.fProTecID,b.fName,a.fMemo,materials.fItemCode, materials.fItemName,materials.fModel from 	
	LKM_MCCPTEntry a 
	inner join lkm_CommonBill b on a.fProTecID =b.fInterID
	inner join LKM_MCC c on a.fConfigID =c.fInterID inner join lkm_CommonBill d on c.fCommonID =d.fInterID
	inner join LKM_MCCMatEntry mccmat on mccmat.fMccEntryID = a.fInterID
	inner join lkm_Materials materials on materials.fMaterial_Class =mccmat.fMatID where a.fConfigID =36
	





	go

	
	select * from LKM_MCC --产线配置头
	select * from lkm_CommonBill

	select * from LKM_ItemCategory

	select * from lkm_CommonBill

use test_LonKingMES_FJJX
	go
	

	execute sp_help 'LKM_ItemCategory'

	 select* FROM lkm_CommonBill where fClass!=2 and fstatus=0

	 select fInterID,fConfigID,fItemID,fItemCode,fItemName  FROM LKM_MCCItemEntry  where  fConfigID=36



	    select ISNULL(commonBill.fName,'') as 工序,itemcategory.fName,itemcategory.fXOrP ,  ISNULL( mccmat.fCount,1) as 汇总数量, mopicklist.fSerialNo ,mopicklist.fItemCode,mopicklist.fItemName,mopicklist.fNum,
	mopicklist.fIsScan,	mopicklist.	fSupAndFacCode,mopicklist.fScanner,moOrder.fMoDocNo,moOrder.fItemCode,
	moOrder.fItemName,moOrder.fModel,	moOrder.fstatuname from LKM_MOPickList mopicklist
	inner join lkm_Materials materials on materials.fItemCode =mopicklist.fItemCode
    inner join Vw_MDOrder moOrder on mopicklist.fSerialNo =moOrder.flotcode 
	inner join LKM_MCCItemEntry mccItemEntry on mccItemEntry.fItemCode =moOrder.fItemCode
	left join LKM_MCCMatEntry mccmat on  mccmat.fMccItemID =mccItemEntry.fInterID and materials.fMaterial_Class =mccmat.fMatID
    left join LKM_MCCPTEntry mccTentry on mccTentry.fInterID =mccmat.fMccEntryID
	left join lkm_CommonBill commonBill on commonBill.fInterID =mccTentry.fProTecID 
	left join LKM_ItemCategory ItemCategory on ItemCategory.fInterID=materials.fMaterial_Class
	where mopicklist.fSerialNo = '>LFJ0855NLJAB00006<' and mopicklist.fItemName like '%%'  order by commonBill.fName 


	
	select ISNULL(commonBill.fName,'') as 工序 ,itemcategory.fName as 物料类别, sum( mopicklist.fNum) as 汇总数量,
	ISNULL(mccmat.fCount,1) as 实际数量
	from LKM_MOPickList mopicklist
	inner join lkm_Materials materials on materials.fItemCode =mopicklist.fItemCode
    inner join Vw_MDOrder moOrder on mopicklist.fSerialNo =moOrder.flotcode 
	inner join LKM_MCCItemEntry mccItemEntry on mccItemEntry.fItemCode =moOrder.fItemCode
	left join LKM_MCCMatEntry mccmat on  mccmat.fMccItemID =mccItemEntry.fInterID and materials.fMaterial_Class =mccmat.fMatID
    left join LKM_MCCPTEntry mccTentry on mccTentry.fInterID =mccmat.fMccEntryID
	left join lkm_CommonBill commonBill on commonBill.fInterID =mccTentry.fProTecID 
	left join LKM_ItemCategory ItemCategory on ItemCategory.fInterID=materials.fMaterial_Class	
	where mopicklist.fSerialNo ='>LFJ0833NCJBC00005<' 
	 group by commonBill.fName,itemcategory.fName,mccmat.fCount  having  sum( mopicklist.fNum) !=ISNULL(mccmat.fCount,1)  order by commonBill.fName desc,itemcategory.fName 


	 select fAttribute from lkm_Materials where fItemName like '%装载机%'


	 select * from LKM_ItemCategory
	 select * from lkm_srm_sm_relation

