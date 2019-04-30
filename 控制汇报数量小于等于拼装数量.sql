USE [AIS20181119_20191119]
GO

/****** Object:  Trigger [dbo].[pinzhuangControl]    Script Date: 2019-04-30 16:55:25 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		yuchengren
-- Create date: 20190430
-- Description:	���ƻ㱨����С�ڵ���ƴװ����
-- =============================================
CREATE TRIGGER [dbo].[pinzhuangControl] 
   ON  [dbo].[ICMORptEntry]
   AFTER INSERT,UPDATE
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for trigger here
	IF	UPDATE(FQtyFinish)
	BEGIN  	
	DECLARE @err NVARCHAR(100)
	DECLARE @qty INT
	DECLARE @sourceNo NVARCHAR(50)
	DECLARE @pinQty INT	
	SELECT @sourceNo =Inserted.FSourceBillNo FROM Inserted
	SELECT @qty=  SUM(FQtyFinish)  FROM dbo.ICMORptEntry  WHERE FSourceBillNo =@sourceNo
	SELECT @pinQty= ��ƴװ���� FROM dbo.MESWorkPinZhuangStatus WHERE FBillNo =@sourceNo
	
	IF @Qty > @pinQty
	BEGIN
	SET @err =@sourceNo+ ':�ϼƻ���������' + CONVERT(NVARCHAR(50),@qty) + ',��ƴװ����:' + @pinQty + CHAR(13) +  '�㱨���������������񵥺ϼ����ƻ㱨�������ܴ���MESƴװ����,����ɨ��ƴװ' 
  RAISERROR (@err ,  -- Message text.
                16, -- Severity.
               1     -- State.
               );
ROLLBACK
END
END



END
GO

ALTER TABLE [dbo].[ICMORptEntry] ENABLE TRIGGER [pinzhuangControl]
GO


