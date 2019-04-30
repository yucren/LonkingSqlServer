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
-- Description:	控制汇报数量小于等于拼装数量
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
	SELECT @pinQty= 已拼装数据 FROM dbo.MESWorkPinZhuangStatus WHERE FBillNo =@sourceNo
	
	IF @Qty > @pinQty
	BEGIN
	SET @err =@sourceNo+ ':合计汇总数量：' + CONVERT(NVARCHAR(50),@qty) + ',已拼装数量:' + @pinQty + CHAR(13) +  '汇报单关联的生产任务单合计下推汇报数量不能大于MES拼装数量,请先扫描拼装' 
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


