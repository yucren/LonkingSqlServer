select b.FAuxQtyInvoice,a.FSelTranType,a.FRelateInvoiceID, * from ICStockBill a left join ICStockBillEntry b on a.FInterID =b.FInterID where 
select finterid,FInvStyle,FBillNo  from  vwicbill_42    where FInterID =40538

select finterid,FInvStyle,FBillNo from vwICBill_42 where Fdate  > '2018-01-01' and  FInterID =40538 order by fdate desc

select * from ICPurchaseEntry where FInterID =40538


select b.FAuxQtyInvoice,a.FSelTranType,a.FRelateInvoiceID, * from ICStockBill a left join ICStockBillEntry b on a.FInterID =b.FInterID where a.fbillno ='WIN115703'


select b.FAuxQtyInvoice,a.FSelTranType,a.FRelateInvoiceID, * from ICStockBill a left join ICStockBillEntry b on a.FInterID =b.FInterID where FTranType =1  and FSelTranType =72 and FAuxQtyInvoice <=0   and a.FRelateInvoiceID !=0