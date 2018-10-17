CREATE TABLE bank.accounts
(
    account_number int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    account_type varchar(50),
    date_created date,
    balance int(20),
    customer_id int(20),
    CONSTRAINT accounts_ibfk_1 FOREIGN KEY (customer_id) REFERENCES bank.customers (customer_number)
);
CREATE INDEX customer_id ON bank.accounts (customer_id);
CREATE TABLE bank.customers
(
    customer_number int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    fullname varchar(255),
    address varchar(255),
    email varchar(100),
    phone varchar(50)
);
INSERT INTO bank.customers (customer_number, fullname, address, email, phone) VALUES (1, 'phuc', 'hanoi', 'xyz@abc.com', '986825095');
INSERT INTO bank.customers (customer_number, fullname, address, email, phone) VALUES (2, 'anh', 'vinhphuc', 'xyzcc@abcff.com', '986821996');
CREATE TABLE bank.transactions
(
    tran_number int(20) PRIMARY KEY NOT NULL,
    account_number int(20),
    transaction_date date,
    amounts int(20),
    description varchar(255),
    CONSTRAINT transactions_ibfk_1 FOREIGN KEY (account_number) REFERENCES bank.accounts (account_number)
);
CREATE INDEX account_number ON bank.transactions (account_number);