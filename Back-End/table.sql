-- Create table User
create table user (
    id int primary key AUTO_INCREMENT,
    name varchar(255),
    contactNumber varchar(20),
    email varchar(255),
    password varchar(255),
    status varchar(20),
    deleted varchar(20),
    role varchar(20),
    UNIQUE (email)
);

insert into user(name, contactNumber, email, password, status,deleted, role) values('Admin', '0867954826', 'admin@gmail.com', 'admin', 'true','false','admin');

-- Create table Category
create table category (
    id int NOT NULL AUTO_INCREMENT,
    name varchar(255),
    deleted char(10),
    primary key(id)
);

-- Create table Category for Sales
create table categorySale (
    id int NOT NULL AUTO_INCREMENT,
    name varchar(255),
    deleted char(10),
    primary key(id)
);

-- Create table Product
create table product(
    id int NOT NULL AUTO_INCREMENT,
    categoryId integer NOT NULL,
    name varchar(255) NOT NULL,
    description varchar(255),
    file_src longtext,
    price integer,
    status varchar(20),
    deleted varchar(20),
    primary key(id)
);

-- Create table Product for Sales
create table productSale (
    id int NOT NULL AUTO_INCREMENT,
    categorySaleId integer,
    name varchar(255),
    description varchar(255),
    price integer,
    sale integer,
    hot integer,
    quantity integer,
    image longtext,
    status varchar(20),
    deleted int,
    primary key(id)
);

-- Create table Bill
create table bill(
    id int NOT NULL AUTO_INCREMENT,
    uuid varchar(200),
    name varchar(255),
    email varchar(255),
    contactNumber varchar(20),
    paymentMethod varchar(50),
    total int,
    productDetails JSON DEFAULT NULL,
    createdBy varchar(255),
    craetedAt DATETIME,
    deleted varchar(10),
    primary key(id)
);

create table contact (
    id int NOT NULL AUTO_INCREMENT,
    name varchar(255),
    contactNumber varchar(20),
    email varchar(255),
    message varchar(255),
    deleted varchar(10),
    status int,
    craetedAt DATETIME,
    primary key(id)
)