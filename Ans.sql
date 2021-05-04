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
