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
-- Description:	产品入库单数量不能大于MES已完工数量
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

	SELECT @completeQty = MES完工数量 FROM dbo.MESWorkPinZhuangStatus WHERE FBillNo =@workno
	 IF UPDATE(FQty) AND @transtype=551
   BEGIN

	
IF (@qty > @completeQty)
	BEGIN 
 SET @err =@workno +'任务单关联的入库合计数量'  + CONVERT(NVARCHAR(100),@qty) + '大于MES完工数量' + CONVERT(NVARCHAR(100),@completeQty) +CHAR(13) + '完工单关联的生产任务单合计入库数量不能大于MES完工数量,请先扫描至完工状态'
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


