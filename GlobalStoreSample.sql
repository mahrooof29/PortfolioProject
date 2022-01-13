select count(*)
from SuperStore..[GlobalSuperStoreOrders]

select *
from SuperStore..[GlobalSuperStoreOrders]
order by 1

select * from SuperStore..[GlobalSuperStoreOrders]
where [Ship Date]<[Order Date]

select distinct [Ship Mode] from SuperStore..[GlobalSuperStoreOrders] 

select DATEDIFF(DAY, [Order Date], [Ship Date]) as NumOfDays, *
from SuperStore..[GlobalSuperStoreOrders]
where [Ship Mode]='Second Class'

select min(a.NumOfDays), max(a.NumOfDays) from
(select DATED IFF(DAY, [Order Date], [Ship Date]) as NumOfDays, *
from SuperStore..[GlobalSuperStoreOrders]
where [Ship Mode]='Second Class') a

select [Customer ID], [Order ID], count(*)
from SuperStore..[GlobalSuperStoreOrders]
group by [Customer ID], [Order ID]
order by [Customer ID]

select * from SuperStore..[GlobalSuperStoreOrders]
where [Order ID]='CA-2011-128055'




