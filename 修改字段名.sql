SELECT * FROM dbo.t_FieldDescription WHERE FDescription ='委外情况'

SELECT * FROM dbo.ICTransactionType
SELECT * FROM dbo.ICTemplate WHERE FID ='A02'

SELECT * FROM dbo.ICTemplateEntry WHERE FID ='A02' AND FCtlOrder =40
UPDATE dbo.ICTemplateEntry SET FFieldName ='weiwaiqingkuang' WHERE FID ='A02' AND FCtlOrder =40



SELECT * FROM dbo.ICChatBillTitle WHERE FColCaption LIKE '委外情况%' 
UPDATE  dbo.ICChatBillTitle SET FName ='weiwaiqingkuang' WHERE FColCaption LIKE '委外情况%' 




SELECT * FROM 



weiwaiqingkuang                                                                 