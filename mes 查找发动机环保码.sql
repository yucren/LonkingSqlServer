select a.fdocno,a.fstatus,a.fstatuName,c.fName,a.finterid,b.fpersons,b.fPsnItemInfo,d.fMoType,a.fLotCode,e.fTon as fStructType,isnull(b.fStructPin,0) as fStructPin 
,isnull(a.fEngineEPCode,'') as fEngineEPCode
,isnull(a.fMacEPCode,'') as fMacEPCode
,isnull(e.fModel,'') as fModel
,isnull(e.fItemName,'') as fItemName
,isnull(a.fEngineFluid,'') as fEngineFluid
from [LKM_ProductScheduling] a 
left join LKM_MCCPTEntry b on a.fStatus=b.fInterID
left join lkm_CommonBill c on b.fProTecID=c.fInterID
left join LKM_MO d on a.fMoID=d.FinterID 
left join lkm_Materials e on d.fItemID=e.fItemID
where a.fstatus<>1 and flotcode='>LFJ0855NLJAC00007<'


select * from LKM_MCCPTEntry








select * from LKM_ProductScheduling

select * from lkm_Materials where fItemCode ='10805528845'