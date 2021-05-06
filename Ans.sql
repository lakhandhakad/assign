select * from Salespeople;
select *from Customers where RATING=100;
select SNAME,ODATE,O.SNUM, max(AMT) from Orders O,Salespeople S where O.SNUM=S.SNUM group by O.SNUM,ODATE;
Select *from Orders order by  CNUM DESC;
select distinct(O.SNUM),SNAME from Orders O,Salespeople S Where O.SNUM=S.SNUM;
Select CNAME,SNAME from Customers C,Salespeople S where C.SNUM=S.SNUM;
select S.SNAME,count(*) from Salespeople S,Customers C where S.SNUM=C.SNUM group by S.SNUM having count(*)>1;
select O.SNUM,S.SNAME,count(*) from Orders O,Salespeople S where O.SNUM=S.SNUM group by SNUM order by count(*) desc;

select S.SNUM,S.SNAME,S.CITY,C.CNUM,C.CNAME from Salespeople S,Customers C where S.CITY=C.CITY Order by S.SNUM;
select * from Customers where CITY="SanJose" having RATING>200;
select SNAME,COMM from Salespeople where CITY="London";
select O.ONUM,O.AMT,O.ODATE,O.CNUM,O.SNUM from Orders O,Salespeople S where (S.SNAME="Motika" AND S.SNUM=O.SNUM);
select C.CNUM,C.CNAME,C.CITY,C.RATING,C.SNUM,O.ODATE from Customers C,Orders O where (O.ODATE="1990/10/03" AND C.CNUM=O.CNUM);
select sum(AMT),ODATE,max(AMT) from Orders group by ODATE having sum(AMT)>(max(AMT)+2000);
select * from Orders having (select min(AMT) from Orders where ODATE="1990/10/06")<AMT;

select C.CNUM,C.CNAME,S.SNUM from Salespeople S,Customers C where S.SNAME="Serres" having C.CNUM-S.SNUM>1000;

select SNAME,ODATE,O.SNUM, max(AMT) from Orders O,Salespeople S where O.SNUM=S.SNUM AND AMT>5000 group by O.SNUM,ODATE ;
select SNUM,max(AMT),ODATE from Orders where ODATE="1990/10/03" GROUP BY SNUM;

SELECT * FROM Customers WHERE RATING>200;
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
