CREATE DATABASE Accounts;
USE Accounts;

CREATE TABLE payment(
Customer_id integer primary key,
P_id varchar(20) unique,
Amount double,
Order_id varchar(20) NOT NULL
);

describe Table payment;

INSERT INTO payment VALUES
(101,'2420800Pq23',60000,"24189QWR"),
(102,"2420778PR23",50000,"24189QWR"),
(103,"2420831Pq23",50000,"24189QWR"),
(104,"2420812Pq23",50000,"24189QWR"),
(105,"2420897Pa23",50000,"24189QWR"),
(106,"2420900Pm23",50000,"24189QWR"),
(107,"2420123Pp23",50000,"24189QWR")
;

SELECT* FROM payment;

ALTER TABLE payment
RENAME COLUMN Customer_id To C_id;

describe TABLE payment;


ALTER TABLE payment
RENAME COLUMN P_id TO Product_id;

ALTER TABLE payment
RENAME COLUMN Amount to Cost;

ALTER TABLE payment
RENAME COLUMN Order_id to O_id;

ALTER TABLE payment
ADD Annual_Cost double;

UPDATE payment
SET Annual_Cost=Cost*12
Where C_id IS NOT NULL;

SELECT * FROM payment;


-- order_pick table
CREATE TABLE order_pick (
    c_id INT NOT NULL,
    o_id INT NOT NULL,
    PRIMARY KEY (c_id, o_id)
);

SELECT * FROM payment;
SELECT * FROM order_pick;
