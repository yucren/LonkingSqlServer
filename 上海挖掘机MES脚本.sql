   select ISNULL(commonBill.fName,'') as 工序,itemcategory.fName, mccmat.fCount, mopicklist.fSerialNo ,mopicklist.fItemCode,mopicklist.fItemName,mopicklist.fNum,
	mopicklist.fIsScan,	mopicklist.	fSupAndFacCode,mopicklist.fScanner,moOrder.fMoDocNo,moOrder.fItemCode,
	moOrder.fItemName,moOrder.fModel,	moOrder.fstatuname from LKM_MOPickList mopicklist
	inner join lkm_Materials materials on materials.fItemCode =mopicklist.fItemCode
    inner join Vw_MDOrder moOrder on mopicklist.fSerialNo =moOrder.flotcode 
	inner join LKM_MCCItemEntry mccItemEntry on mccItemEntry.fItemCode =moOrder.fItemCode
	left join LKM_MCCMatEntry mccmat on  mccmat.fMccItemID =mccItemEntry.fInterID and materials.fMaterial_Class =mccmat.fMatID
    left join LKM_MCCPTEntry mccTentry on mccTentry.fInterID =mccmat.fMccEntryID
	left join lkm_CommonBill commonBill on commonBill.fInterID =mccTentry.fProTecID 
	left join LKM_ItemCategory ItemCategory on ItemCategory.fInterID=materials.fMaterial_Class
	where mopicklist.fSerialNo ='>LSW0060DJJ0005018<'  and commonBill.fName like '%平台整理%'  order by commonBill.fName  



	select * from sys.sysprocesses where open_tran >0

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
	where mopicklist.fSerialNo ='>LSW0060DPJ0003668<' 
	 group by commonBill.fName,itemcategory.fName,mccmat.fCount  having  sum( mopicklist.fNum) !=ISNULL(mccmat.fCount,1)  order by commonBill.fName desc,itemcategory.fName 



	 select count(*) from LKM_MOPickList 


	 	 select *  from vw_MacCheck_ForBill where  flotcode ='>LSW0225EKJ0005068<'

		 select *  from vw_MacCheck_ForBill  order by fManuDate desc


		 update  lkm_Materials set fSaleModel ='',fMaterial_Class = null, fIsKeyPart =0 where fInterID =2551

		 select * from lkm_Materials where fInterID =2551


	 
	 

	 
	

		 select fSteelCode from LKM_MOPickList
