
create table users (User_id int primary key, User_name varchar (100), Email varchar (254));

create table role (Role_ID INT PRIMARY KEY,RoleName VARCHAR(50));

create table status (Status_id int primary key, Status_name varchar (100));

CREATE TABLE Account (
    Account_ID INT PRIMARY KEY,
    User_ID INT,
    Status_ID INT,
    FOREIGN KEY (User_ID) REFERENCES Users(User_ID),
    FOREIGN KEY (Status_ID) REFERENCES Status(Status_ID)
);

INSERT INTO Users (User_ID, user_Name, Email) VALUES (1, 'Alice', 'alice@example.com');
INSERT INTO Users (User_ID, user_Name, Email) VALUES (2, 'Bob', 'bob@example.com');

INSERT INTO Role (Role_ID , RoleName) VALUES (1, 'Admin');
INSERT INTO Role (Role_ID , RoleName) VALUES (2, 'User');

INSERT INTO Status (Status_id , Status_name ) VALUES (1, 'Active');
INSERT INTO Status (Status_id , Status_name ) VALUES (2, 'Inactive');

INSERT INTO Account (Account_ID , User_ID , Status_ID ) VALUES (1, 1, 1);
INSERT INTO Account (Account_ID , User_ID , Status_ID ) VALUES (2, 2, 2);


DELETE FROM Account;
DELETE FROM Users;
DELETE FROM Role;
DELETE FROM Status;
