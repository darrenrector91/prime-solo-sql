CREATE TABLE accounts (
    user_id serial PRIMARY KEY,
    username character varying(12),
    city character varying(128),
    transactions_completed integer,
    transactions_attempted integer,
    account_balance numeric(12,2)
);

INSERT INTO accounts (username, city, transactions_completed, transactions_attempted, account_balance) VALUES ('shawn', 'chicago', 5, 10, 355.80),
('cherise', 'minneapolis', 9, 9, 4000.00),
('larry', 'minneapolis', 3, 4, 77.01),
('dallas', 'new york', 6, 12, 0.99),
('anthony', 'chicago', 0, 0, 0.00),
('travis', 'miami', 1, 100, 500000.34),
('davey', 'chicago', 9, 99, 98.04),
('ora', 'phoenix', 88, 90, 3.33),
('grace', 'miami', 7, 9100, 34.78),
('hope', 'phoenix', 4, 10, 50.17);

select * from accounts;

--1
select *
from accounts
where city = 'chicago';

--2
select *
from accounts 
where username LIKE'%a%';

--3
UPDATE accounts
SET "account_balance" = '10.00'
WHERE transactions_attempted = 0 AND account_balance = 0.00;

--4
select *
from accounts
where transactions_attempted >= 9;

--5
select username, account_balance
from accounts
order by account_balance
desc limit 3;

--6
select username, account_balance
from accounts
order by account_balance
limit 3;

--7
select *
from accounts
where account_balance > 100.00;

--8
INSERT INTO accounts (username, city, transactions_completed, transactions_attempted, account_balance) VALUES ('darren', 'chicago', 50, 50, 3350.00);

--9
delete from accounts
where city = 'miami' OR city = 'phoenix' AND 
transactions_completed < 5;

