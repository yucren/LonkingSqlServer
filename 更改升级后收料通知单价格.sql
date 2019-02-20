begin transaction
go
begin try
update  POInStockEntry  set FPrice= bb.FTaxPrice ,FAuxPrice =bb.FAuxTaxPrice ,FAmount = ROUND(FQty * FPrice,2)  from(
select a.FInterID,a.FEntryID, a.FTaxPrice, a.FAuxTaxPrice , b.FSourceEntryID,b.FSourceInterId from POInStockEntry b 
inner join POInStock c on b.FInterID =c.FInterID
inner join POOrderEntry a on a.FInterID =b.FSourceInterId and b.FOrderEntryID = a.FEntryID
 where b.FConCommitQty =0 and b.FPrice !=a.FTaxPrice and a.FTaxPrice !=0 and b.FPrice !=0 and c.FBillNo like 'do%'
 and c.FDate >=(Select crdate From Master..SysDataBases Where DbId=(Select Dbid From Master..SysProcesses Where Spid = @@spid))
 order by c.FDate desc)  bb where POInStockEntry.FInterID =bb.FInterID and POInStockEntry.FEntryID =bb.FEntryID
  end try
 begin catch
 rollback
 end catch 
 go





select b.AM c.FBillNo, c.FBillNo 收料单号,c.FDate 收料单日期,case c.FCurrencyID when 1  then '人民币' else '其他' end  as 币别, 
b.FPrice 收料单价格,b.FAuxPrice,  a.FAuxTaxPrice 采购订单价格, b.FSourceEntryID,b.FSourceInterId, * from POInStockEntry b 
inner join POInStock c on b.FInterID =c.FInterID
inner join POOrderEntry a on a.FInterID =b.FSourceInterId and b.FOrderEntryID = a.FEntryID
 where b.FCommitQty =0 and b.FPrice !=a.FAuxTaxPrice and c.FBillNo like 'DO%' 
 and c.FDate >=(select modify_date from sys.tables where name='POInStockEntry' )
 order by c.FDate desc
 go

 commit









select b.AM c.FBillNo, c.FBillNo 收料单号,c.FDate 收料单日期,case c.FCurrencyID when 1  then '人民币' else '其他' end  as 币别, 
b.FPrice 收料单价格,b.FAuxPrice,  a.FAuxTaxPrice 采购订单价格, b.FSourceEntryID,b.FSourceInterId, * from POInStockEntry b 
inner join POInStock c on b.FInterID =c.FInterID
inner join POOrderEntry a on a.FInterID =b.FSourceInterId and b.FOrderEntryID = a.FEntryID
 where b.FCommitQty =0 and b.FPrice !=a.FAuxTaxPrice and c.FBillNo like 'DO%' 
 and c.FDate >=(select modify_date from sys.tables where name='POInStockEntry' )
 order by c.FDate desc


select modify_date from sys.tables where name='POInStockEntry' 



 Select crdate From Master..SysDataBases Where DbId=(Select Dbid From Master..SysProcesses Where Spid = @@spid) --获取数据库创建日期
