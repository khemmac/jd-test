CREATE TABLE products (
  id               INT           NOT NULL,
  name    VARCHAR(300)  NULL,
  slug              VARCHAR(300)  NULL,
  CONSTRAINT products_pk PRIMARY KEY (id)
);

CREATE TABLE orders (
  id               INT           NOT NULL,
  customerid    INT  NOT NULL,
  paymentType              VARCHAR(300)  NULL,
  CONSTRAINT orders_pk PRIMARY KEY (id)
);

CREATE TABLE orderdetails (
  id               INT           NOT NULL,
  orderid    INT  NULL,
  productid    INT  NOT NULL,
  unitPrice    INT  NOT NULL,
  quantity              INT  NOT NULL,
  CONSTRAINT orderdetails_pk PRIMARY KEY (id)
);

create table customer (
  id               INT           NOT NULL,
  name    VARCHAR(300) NOT NULL,
  email    VARCHAR(300) NOT NULL,
  CONSTRAINT customer_pk PRIMARY KEY (id)
);

insert into products (id, name, slug) values (1, 'ลำโพง', 'marshall');
insert into products (id, name, slug) values (2, 'นาฬิกา', 'fitbit');
insert into products (id, name, slug) values (3, 'เมาส์', 'steelseries');
insert into products (id, name, slug) values (4, 'Intel', 'intel');

insert into orders(id, customerid, paymenttype) values (1,1,'CreditCard');
insert into orders(id, customerid, paymenttype) values (2,2,'COD');
insert into orders(id, customerid, paymenttype) values (3,1,'CreditCard');
insert into orders(id, customerid, paymenttype) values (4,3,'PromptPay');
insert into orders(id, customerid, paymenttype) values (5,2,'PromptPay');

insert into orderdetails (id, orderid, productid, unitprice, quantity) values (1,1,1,17990,1);
insert into orderdetails (id, orderid, productid, unitprice, quantity) values (2,1,3,1490,2);
insert into orderdetails (id, orderid, productid, unitprice, quantity) values (3,2,3,1190,1);
insert into orderdetails (id, orderid, productid, unitprice, quantity) values (4,3,2,4690,1);
insert into orderdetails (id, orderid, productid, unitprice, quantity) values (5,4,3,990,3);
insert into orderdetails (id, orderid, productid, unitprice, quantity) values (6,5,1,17990,1);
insert into orderdetails (id, orderid, productid, unitprice, quantity) values (7,5,2,4690,1);
insert into orderdetails (id, orderid, productid, unitprice, quantity) values (8,5,3,1190,1);

insert into customer(id, name, email) values (1, 'Poom', 'poom@mercular.com');
insert into customer(id, name, email) values (2, 'Woragun', 'woragun@mercular.com');
insert into customer(id, name, email) values (3, 'Thesis', 'thesis@mercular.com');

