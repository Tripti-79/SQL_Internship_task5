create table customer(customer_id number(10)primary key,first_name varchar(10),last_name VARCHAR(10),mobile varchar(10)unique) ; 

create table orders(order_id varchar(10)PRIMARY key,customer_id number(10)) ;

select * from CUSTOMER ;
 
select * from orders ; 

select c.CUSTOMER_ID,(c.first_name||' '||c.last_name)"Name",o.ORDER_ID from customer c INNER join orders o on c.CUSTOMER_ID=o.CUSTOMER_ID order by c.CUSTOMER_ID ; 

select c.CUSTOMER_ID,(c.first_name||' '||c.last_name)"Name",o.ORDER_ID from customer c left join orders o on c.CUSTOMER_ID=o.CUSTOMER_ID order by c.CUSTOMER_ID ; 

select c.CUSTOMER_ID,(c.first_name||' '||c.last_name)"Name",o.ORDER_ID from customer c right join orders o on c.CUSTOMER_ID=o.CUSTOMER_ID order by c.CUSTOMER_ID ; 

select c.CUSTOMER_ID,(c.first_name||' '||c.last_name)"Name",o.ORDER_ID from customer c full join orders o on c.CUSTOMER_ID=o.CUSTOMER_ID order by c.CUSTOMER_ID ; 