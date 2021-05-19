/*Listing out all the column of Salespeople */	select * from Salespeople;
/*Listing out the customers whose rating is 100*/	select CNAME,RATING from Customers where RATING=100;
/*selecting the largest order for each salespeople on each date*/	select SNAME,ODATE,max(AMT) from Orders O,Salespeople S where O.SNUM=S.SNUM group by O.SNUM,ODATE;
/*Traversing the orders table in descending order in respect to the cnum*/	Select  * from Orders order by  CNUM DESC;
/*Listing out the salespeople who currently have orders in Orders table*/	select distinct(O.SNUM),SNAME from Orders O,Salespeople S Where O.SNUM=S.SNUM;
/*selecting salespeople with their customers whome they are serving*/	Select CNAME,SNAME from Customers C,Salespeople S where C.SNUM=S.SNUM;
/*Selecting names and numbers of salespeople who have more than one customers*/	select S.SNAME,S.SNUM,count(*) As No_Of_CUST from Salespeople S,Customers C where S.SNUM=C.SNUM group by S.SNUM having count(*)>1;
/* Counting the orders for each salespeople and ordering them in descending order*/	select S.SNAME,count(*) from Orders O,Salespeople S where O.SNUM=S.SNUM group by O.SNUM order by count(*) desc;
/*Traversing the customers table if and only if there exist a customer who resides in Sanjose*/	select * from Customers where exists(select count(CNUM) from Customers where CITY="Sanjose");
/*Matching Salespeople with customers according to city they live in*/	select S.SNAME,S.CITY,C.CNAME from Salespeople S,Customers C where S.CITY=C.CITY Order by S.SNAME;
select CNAME,RATING,CITY from Customers where CITY="SanJose" having RATING>200;
select SNAME,COMM from Salespeople where CITY="London";
select ONUM,AMT,ODATE from Orders  where SNUM=(select SNUM from Salespeople where SNAME="Motika");
select C.CNAME,O.ODATE As Ordered_On from Customers C,Orders O where (O.ODATE="1990/10/03" AND C.CNUM=O.CNUM);
select sum(AMT),ODATE from Orders group by ODATE having sum(AMT)>(max(AMT)+2000);
select ONUM,AMT,ODATE from Orders having (select min(AMT) from Orders where ODATE="1990/10/06")<AMT;

select C.CNUM,C.CNAME,S.SNUM from Salespeople S,Customers C where S.SNAME="Serres" having C.CNUM-S.SNUM=1000;

select SNUM,ODATE,max(AMT) from Orders group by SNUM,ODATE having max(AMT)>3000;
select SNUM,max(AMT) As Largest_Order,ODATE As Order_date from Orders where ODATE="1990/10/03" GROUP BY SNUM;

SELECT CNAME,RATING FROM Customers WHERE RATING>200;
SELECT COUNT(DISTINCT(SNUM)) NO_OF_SALESPEOPLE FROM Orders ;
SELECT C.CNAME,S.SNAME,S.COMM FROM Customers C,Salespeople S WHERE S.COMM>12 AND C.SNUM=S.SNUM;
SELECT COUNT(C.SNUM) NO_OF_CUSTOMERS,S.SNUM,S.SNAME,S.CITY FROM Salespeople S,Customers C WHERE  C.SNUM=S.SNUM GROUP BY C.SNUM HAVING COUNT(C.SNUM)>1;
SELECT DISTINCT  S.SNUM,S.SNAME,S.CITY FROM Salespeople S,Customers C WHERE C.CITY=S.CITY AND S.SNUM=C.SNUM;
SELECT *FROM Salespeople WHERE SNAME LIKE "P%%%L%";
select * from Orders where CNUM=(select CNUM from Customers where CNAME"Cisneros");

select * from Salespeople order by SNUM;select * from Salespeople order by SNAME;select * from Salespeople order by COMM;select * from Salespeople order by CITY;
select * from Customers where CNAME between "A%" AND "G%";

select * from Orders where AMT>(select avg(AMT) from Orders where ODATE="1990/10/04" group by ODATE);

select sum(AMT),ODATE from Orders group by ODATE order by sum(AMT) DESC;
select RATING,CNAME from Customers where CITY="Sanjose";
select * from Orders where AMT<(select max(O.AMT) from Orders O,Customers C where C.CNUM=O.CNUM AND C.CITY="Sanjose");

elect distinct MAX(RATING),CITY from Customers group by CITY;

select COunt(CNUM) from Customers where RATING>(select AVG(RATING) from Customers where CITY="Sanjose");
select * from Salespeople where CITY="Barcelona" or CITY="London";
select S.SNAME,C.SNUM,count(C.SNUM) No_Of_Customers from Customers C,Salespeople S where S.SNUM=C.SNUM group by SNUM having count(C.SNUM)=1;

select * from Orders where AMT>1000;
select O.ONUM,O.AMT,O.ODATE,C.CNUM,C.CNAME,C.CITY from Orders O,Customers C where O.CNUM=C.CNUM;
select * from Customers where RATING>=(select min(RATING) from Customers where SNUM=(select SNUM from Salespeople where SNAME="serres"));
select * from Orders where ODATE="1990/10/03" OR ODATE="1990/10/04";
select * from Customers where RATING>(select max(RATING) from Customers where CITY="ROME");
select * from Customers where RATING>100 or CITY="ROME";
select * from Customers where SNUM=1001;
select SNUM,sum(AMT) from Orders group by SNUM having sum(AMT)>(Select max(AMT) from Orders);


select SNAME,COMM from Salespeople;
select CNAME,CITY from Customers where RATING=(Select RATING from Customers where CNAME="Hoffman" );

