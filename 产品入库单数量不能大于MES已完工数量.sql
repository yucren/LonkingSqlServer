USE AIS20181119_20191119
GO

/****** Object:  Trigger [dbo].[mesCompleteQtyControl]    Script Date: 2019-04-30 16:19:26 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		yuchengren
-- Create date: 20190430
-- Description:	��Ʒ��ⵥ�������ܴ���MES���깤����
-- =============================================
ALTER TRIGGER [dbo].[mesCompleteQtyControl] 
   ON  [dbo].[ICStockBillEntry] 
   AFTER INSERT,UPDATE
AS 
BEGIN
   
  
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	DECLARE @err NVARCHAR(100)
	DECLARE @qty INT	
	DECLARE @sourceid INT
	DECLARE @sourceEntry INT
	DECLARE @workno NVARCHAR(50)
	DECLARE @completeQty INT
	DECLARE @transtype INT	

	SELECT @transtype =Inserted.FSourceTranType, @sourceid = Inserted.FSourceInterId,@sourceEntry =Inserted.FSourceEntryID FROM Inserted

	SELECT @workno = FSourceBillNo FROM dbo.ICMORptEntry WHERE FInterID =@sourceid AND FEntryID =@sourceEntry

	SELECT @qty= SUM(FQty) FROM dbo.ICStockBillEntry WHERE FSourceInterId =@sourceid  AND FSourceTranType = 551

	SELECT @completeQty = MES�깤���� FROM dbo.MESWorkPinZhuangStatus WHERE FBillNo =@workno
	 IF UPDATE(FQty) AND @transtype=551
   BEGIN

	
IF (@qty > @completeQty)
	BEGIN 
 SET @err =@workno +'���񵥹��������ϼ�����'  + CONVERT(NVARCHAR(100),@qty) + '����MES�깤����' + CONVERT(NVARCHAR(100),@completeQty) +CHAR(13) + '�깤���������������񵥺ϼ�����������ܴ���MES�깤����,����ɨ�����깤״̬'
   --SET @err =@workno
  RAISERROR (@err,  -- Message text.
                16, -- Severity.
               1     -- State.
               );
ROLLBACK
END


    -- Insert statements for trigger here

END
END	
GO


