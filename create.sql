create table Salespeople(SNUM int,SNAME varchar(20),CITY varchar(20),COMM int,Primary key(SNUM));
create table Customers(CNUM int,CNAME varchar(20),CITY varchar(20),RATING int,SNUM int,Primary key(CNUM),foreign key(SNUM) references Salespeople(SNUM));
 create table Orders(ONUM int,AMT float,ODATE date,CNUM int,SNUM int,Primary key(ONUM),foreign key(CNUM) references Customers(CNUM),foreign key(SNUM) references Salespeople(SNUM));

