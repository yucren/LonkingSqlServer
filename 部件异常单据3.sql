select b.FAuxQtyInvoice,a.FSelTranType, * from ICStockBill a left join ICStockBillEntry b on a.FInterID =b.FInterID where FTranType =1 and a.FDate > '2018-01-01' and FSelTranType =72 and FAuxQtyInvoice >0  and a.FBillNo ='WIN126498'

select b.FAuxQtyInvoice,a.FSelTranType,a.FRelateInvoiceID, * from ICStockBill a left join ICStockBillEntry b on a.FInterID =b.FInterID where  a.FBillNo ='WIN127899'


select * from vwICBill_42 where Fdate  > '2018-01-01' order by fdate desc

select fsourcebillno, * from icpurchaseentry where fsourceinterid  =925019


select * from t_Log where FDescription like '%WIN127899%'
select * from t_LogBack  where FDescription like '%WIN127899%'

select * from  vwicbill_42 where FInterID =40538

select * from ICPurchaseEntry where FInterID =40538

select FSourceBillNo,FSourceInterId,FSourceEntryID, * from ICPurchaseEntry where FSourceInterId in(920137,924090,925019,933978,935742,937750,938430,938431,938433,938684,938808,939001,939750,940462,942629,946650,947433,948125,948378,949187,957386,957387,957388)