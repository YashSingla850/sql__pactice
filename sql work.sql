drop database yash;
show databases;
create database yash;
-- to use the database that u created; 
use yash;
-- ////////////////// 
 
select database();
drop database yash; 
show databases;
create database Yash;
create database singla;
--   stuff with tables 
-- creating table


-- create table table_name
-- (
-- -- column_name data_type ,
-- );
-- ////////////////////////// 

  create table  dog 
 (
       name varchar(20),
       age int
 ) ;
show databases ;
--  how do we know that the table is created4
-- show Tables;
-- show columns from <table_name>; 
    -- or
-- desc<table_name>; 

  
show tables; 
show columns from dog;

  
 
 -- delete table
 -- drop table <table_name>;
 -- //////////////////////////////// 
 drop table dog;
 show tables;
 
 -- insert data
 -- insert into table_name(attribute1(name) , atribute2(age)----- so on);
 --  values('hana',7, ----);
 -- ////////////////////////////// 
 
 
 insert into dog (name , age)
 values ("hana" , 5);
  insert into dog (name , age)
 values("vasu" , 10);
    -- or 
    insert into dog (name , age)
 values("dhruv" , 15),("ravi" ,10);
 
 -- how to view data
 --  select * from <table_name>;
   select * from dog;
 
 
 -- ///////////////////////////////////////// 
 -- activity to work on ///////////////////// 
 create table people(
 first_name varchar(20),
 last_name varchar(20),
 age int
 );   
 
 desc people;
 insert into people(first_name, last_name , age)
 values("yash", "singla", 21),("vasu", "yadav" , 21), ("ritik" , "jha" , 22),("sourav","jha" ,21);
 select * from people;
 drop table people;
 -- ////////////////////////////////////////////////////////
  -- primary key ////////////////////////////
  -- ///////////////////////
  -- how to assign primary key
  create table person 
  ( person_id int Not null,
  name varchar(20),
  last_name varchar(20),
  age int, 
  primary key(person_id)
  );
 desc person; 
 drop table person;
 insert into person(person_id , name , last_name, age)
 values(1, "yash", "singla", 21),(2 , "vasu", "yadav" , 21), (3 ,"ritik" , "jha" , 22),(4, "sourav","jha" ,21);
 insert into person(person_id , name , last_name, age)
 values(1,"prashant","jadav",25);

 
 select * from person;
 
 
  -- auto increment ///////////////////////
 create table person 
  ( person_id int Not null auto_increment,
  name varchar(20),
  last_name varchar(20),
  age int, 
  primary key(person_id)
  );
  desc person;
  insert into person(  name , last_name, age)
 values( "yash", "singla", 21),( "vasu", "yadav" , 21), ("ritik" , "jha" , 22),( "sourav","jha" ,21); 
  insert into person(  name , last_name, age)
  values("pradeep", "sisodia" ,20) ,("pawan" ,"sharma" ,22), ("aadi" , "jha" ,20);
  insert into person(  name , last_name, age)
  values("pradeep", "sisodia" ,8) ,("pawan" ,"sharma" ,9), ("aadi" , "jha" ,10);
 select * from person;
 
 
 -- //////////////////////////// 
  -- ///////////////////////CRUD//////////////////
  -- create , read  , update , delete
--   how to read the data ;
--             select * from table_name;
--  star is used to dive all the column in the table
-- select expression -:
-- select first_name from person;
      select age , last_name from person;
    -- //////////////////////////   
-- the where clause
-- ///////////////////
select   * from person where age >= 8;
select   * from person where age = person_id;
select   * from person where last_name = jha;
select   age , last_name from person where age >= 10;


-- aliases
--  google it when need it 
-- ///////////////////////////////////
 --  update
 -- how to alter the data
 -- command
 --  update person set age ="10"
 -- where age = "8";
 
 update person set last_name = "jhaa"
 where last_name = "jha";
 select * from person;
  
-- ///////////////////////////   
 -- delete 
 --  command
 -- delete from person where name ="sourav" 
 
 delete from person where name ="sourav" ;
 select * from person;
 
 
 --  EXCERSICE
  create table shirts
  (
  shirt_id int not null auto_increment,
  article varchar(30),
  color varchar(30),
  shirt_size varchar(30),
  last_worn int,
  primary key (shirt_id)
  );
  desc shirts;
  drop table shirts;
  INSERT INTO shirts(article, color, shirt_size, last_worn) VALUES
('t-shirt', 'white', 'S', 10),
('t-shirt', 'green', 'S', 200),
('polo shirt', 'black', 'M', 10),
('tank top', 'blue', 'S', 50),
('t-shirt', 'pink', 'S', 0),
('polo shirt', 'red', 'M', 5),
('tank top', 'white', 'S', 200),
('tank top', 'blue', 'M', 15);

-- task 
insert into shirts(article , color , shirt_size ,last_worn)
values( "polo shirt" , "purple" ,"m" ,50);
select * from shirts;
 select article , color from shirts;
 select article ,color , shirt_size , last_worn from  shirts where shirt_size = "m";
  update shirts  set shirt_size ="L"
  where article = "polo shirt";
 select * from shirts;
 update shirts set last_worn = 0
 where last_worn =15;
 update shirts set color = "off white" ,shirt_size = "xs"
 where color = "white" ;
 delete from shirts where last_worn = 200;
  delete from shirts where article = "tank top";
  delete from shirts  where shirt_id <9;
  -- or 
  delete from shirts;
  
  drop table shirts;
  show tables;
 
 
 
 -- ////////////////////////////////////////////
 -- STRING FUNCTIONS 
  -- 
 -- running sql files
  

CREATE TABLE books 
	(
		book_id INT NOT NULL AUTO_INCREMENT,
		title VARCHAR(100),
		author_fname VARCHAR(100),
		author_lname VARCHAR(100),
		released_year INT,
		stock_quantity INT,
		pages INT,
		PRIMARY KEY(book_id)
	);
desc books;
INSERT INTO books (title, author_fname, author_lname, released_year, stock_quantity, pages)
VALUES
('The Namesake', 'Jhumpa', 'Lahiri', 2003, 32, 291),
('Norse Mythology', 'Neil', 'Gaiman',2016, 43, 304),
('American Gods', 'Neil', 'Gaiman', 2001, 12, 465),
('Interpreter of Maladies', 'Jhumpa', 'Lahiri', 1996, 97, 198),
('A Hologram for the King: A Novel', 'Dave', 'Eggers', 2012, 154, 352),
('The Circle', 'Dave', 'Eggers', 2013, 26, 504),
('The Amazing Adventures of Kavalier & Clay', 'Michael', 'Chabon', 2000, 68, 634),
('Just Kids', 'Patti', 'Smith', 2010, 55, 304),
('A Heartbreaking Work of Staggering Genius', 'Dave', 'Eggers', 2001, 104, 437),
('Coraline', 'Neil', 'Gaiman', 2003, 100, 208),
('What We Talk About When We Talk About Love: Stories', 'Raymond', 'Carver', 1981, 23, 176),
("Where I'm Calling From: Selected Stories", 'Raymond', 'Carver', 1989, 12, 526),
('White Noise', 'Don', 'DeLillo', 1985, 49, 320),
('Cannery Row', 'John', 'Steinbeck', 1945, 95, 181),
('Oblivion: Stories', 'David', 'Foster Wallace', 2004, 172, 329),
('Consider the Lobster', 'David', 'Foster Wallace', 2005, 92, 343);
select * from books;
--  ////////////////////////////////////
-- STRING FUNCTION
-- 1 . concat -> combine data for cleaner output
  -- concat(x,y,z)
  
  select concat  (author_fname , " " , author_lname)  from books;
--  to change top heading
select concat  (author_fname , " " , author_lname) as full_name  from books;
 
select author_fname as first , author_lname as last, 
concat(author_fname ," " , author_lname) as full 
from books;
 
 
 --  concat _ws -> concat with separator
 
 
 -- substring -> work with parts of strings
  -- select substring()
  select substring("hello world" , 1,8);
  select substring("hello world" , -6) as mini;
 
 select 
 concat
 ( 
 substring(title , 1 , 10),
 "..."
 )  as s_name
 from books;
  
  -- replace 
  
  
--  select replace('hello wrpsd' , 'hello world') as n_name;
select replace('hello wrpsd' , 'wrpsd' ,'world') as n_name;




-- reverse
select reverse("hello world"); 
  
  
  -- char_length-> coiunts character length
  select char_length("yash");

 -- CHALLENGE 
 -- ///////////////////////////////////// 
 select 
    upper 
    (
     reverse
     (
     "why does my cat look at me with such hatred"
     )
) as uppercase;
--  ///////////////////////////////////////////////
select 
replace 
(
concat("i" ," " , "like" ," " ,"cats")," ","_"
);

-- //////////////////////////////////////////// 
select replace(title ," " ,"->")as title
from books;


-- ///////////////////////////////////////////////////////  
select author_lname as forward ,reverse(author_lname) as backward
from books;



-- /////////////////////////////////////////// 
select upper
( concat
  (
author_fname, " " , author_lname
  ) 
) as "full name in caps"
from books;



-- //////////////////////////////////////////////////// 
select concat 
(
title , "was released in" , released_year
) as title
from books;


-- ////////////////////////////////////////////// 
select title , char_length(title)as "character count"
from books;

-- /////////////////////////////////////// 
select concat
(
substring(title ,1,10) ,
"..."
) 
as "short title",
upper
(
concat
   (
author_fname ,",", author_lname
    )
)as author,
concat
(
stock_quantity ," ","in stock"
)as quantity
 from books;
 

-- refining our selection
-- adding books to our books table
INSERT INTO books
    (title, author_fname, author_lname, released_year, stock_quantity, pages)
    VALUES ('10% Happier', 'Dan', 'Harris', 2014, 29, 256), 
           ('fake_book', 'Freida', 'Harris', 2001, 287, 428),
           ('Lincoln In The Bardo', 'George', 'Saunders', 2017, 1000, 367);
 select * from books;


-- ///////////////////////////
-- distinct -> to give distinct element if there is duplicate
select distinct author_lname from books;

  -- /////////////////////////////////
  -- order by -> sorting our result
  select author_fname from books order by released_year;
  
-- ////////////////////////////////////////////////////////////


-- limit -> to get what is required from table
select title from books limit 2; 

-- /////////////////////////////////////

-- like -> better searching
select title , author_fname from books
   where 
        author_fname  like '%da%' 
   ;

-- % sign is for anything before da and anything after da
 
--  if we remove % from front it says that da from start and anything after that 
select title , author_fname from books
   where 
        author_fname  like 'da%' 
   ;
   
   
   use yash;
   
   --  aggregate function
    -- count
    select count(*) from books;
    select count(distinct(author_fname)) as author from books;
    
    select count(
      distinct
       concat(
             author_fname , " " , author_lname
             )  
			-- author_fname , author_lname
		)  as author 
       
        from books;
-- ////////////////////////////////////////////
 
   -- how many title contain the;
   
   select  count(title) from books 
   where 
   title like '%the%';
   
   -- ///////////////////////////////////////
   
-- group by  
select title , author_lname from books
  group by author_lname;
  -- count how many books each author has
  select author_lname , count(*)
  from books group by  author_lname;
  
--    ////////////////////////////////////////////
  -- min and max
  
  -- min-:
  select min(released_year)
from books;  

--  max-:
select max(pages)
from books;

select max(pages),title 
from books;
-- in the down solution when we find the max pages books it give first book of database
--  to solve that there is a term called subquary
-- in subquary  it run one query inside the other one
   select * from books
   where pages = (select max(pages)
                       from books);
                       
-- use of min and max with group by 
select author_fname , author_lname ,min(released_year) from books
group by author_fname, author_lname;

-- /////////////////////////////////////////////////////////
      
-- sum -:
 select sum(pages) from books;
  
 -- group by with sum 
 select author_fname , sum(pages) from books
group by author_fname ,author_lname;


-- ///////////////////////////////////////////

-- average 

select avg(released_year) from books;

-- avg with group by
select author_fname , avg(pages) from books
group by author_fname,author_lname; 
   
   
   -- challenges
   
   select max(book_id)
from books;
   -- how many books were released in each year 
   select released_year , count(released_year) from books
   group by released_year;
   
   
   --  total number of books in stock
   select sum(stock_quantity)
from books;
      
--  average released year for each author
select author_fname ,avg(released_year)
from books
             group by author_fname , author_lname; 
             
             
--  full name of author wrote longest books
select  concat
(
author_fname,
" ",
author_lname
 
           ) as "author name" , max(pages) as "max pages"
           
              from books
where pages = (select max(pages)
                        from books);

   
   --   print the given data
   
   select  released_year as year ,
      count(released_year) as books,
        avg(pages) as "avg pages" 
   from books
    group by released_year 
    order by released_year asc;
 
   
   
select * from books;
	desc books;
     
 
-- ///////////////////////////////////////////////////////////////////////////////////////////////////////
 

  -- datatype ->
   -- char 
   --  day()
   -- formating dates
    --  dayName()
    -- dayofweek()
    --  dayofyear()
  
 -- ////////////////////////////////////////////////////////////////// 
  --  relationship and joins
  --  RELATION SHIP BASIC
  --  1. ONE TO ONE RELATIONSHIP
  --  2. MANY TO ONE RELATION SHIP
  --   3. MANY TO MANY RELATION SHIP 
  
  --  //////////////////////////////////////////////////////////////////
  -- one to many-> the most common relation
  use singla;
  show tables;
  desc table customers;
CREATE TABLE customers(
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    email VARCHAR(100)
);
CREATE TABLE orders(
    id INT AUTO_INCREMENT PRIMARY KEY,
    order_date DATE,
    amount DECIMAL(8,2),
    customer_id INT,
    FOREIGN KEY(customer_id) REFERENCES customers(id)
);
-- Inserting some customers and orders

INSERT INTO customers (first_name, last_name, email) 
VALUES ('Boy', 'George', 'george@gmail.com'),
       ('George', 'Michael', 'gm@gmail.com'),
       ('David', 'Bowie', 'david@gmail.com'),
       ('Blue', 'Steele', 'blue@gmail.com'),
       ('Bette', 'Davis', 'bette@aol.com');
       
INSERT INTO orders (order_date, amount, customer_id)
VALUES ('2016/02/10', 99.99, 1),
       ('2017/11/11', 35.50, 1),
       ('2014/12/12', 800.67, 2),
       ('2015/01/03', 12.50, 2),
       ('1999/04/11', 450.25, 5);
       
       -- to show what forign key do->
       INSERT INTO orders (order_date, amount, customer_id)
VALUES ('2016/02/10', 99.99, 10);
--  we got an error because in customer the maximum id is 5 so we cannnot order something with a customer id of 10 
  select * from orders; 
  
  
  -- how to do thing with both table
  
   -- JOINTS->
   
  -- how  to find what boy jost order
    --   DO THINGS WITH SUBARRAY
  select *from orders
  where customer_id =
	(        select id from customers
			where last_name = 'george'
            );



--  this just multiply each other like cartesian product
            
    select * from customers ,orders;        
   -- ////////////////////////////////////////////////////// 
   --  IMPLICIT JOINT ->
   
   
   select * from customers , orders 
   where customers.id = customer_id;
   
   -- EXPLICT INNER JOIN
   select *from customers
   join orders
             on customers.id = orders.customer_id; 
             
             
             

   
   
   
  
  
  
  
  
  
  
  
  
  
  
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
    

