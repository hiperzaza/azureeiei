# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V9.0.0                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          ae.dez                                          #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database creation script                        #
# Created on:            2015-11-28 16:43                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Add tables                                                             #
# ---------------------------------------------------------------------- #

# ---------------------------------------------------------------------- #
# Add table "Customer"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `Customer` (
    `CustomerID` VARCHAR(40) NOT NULL,
    `CusName` VARCHAR(40),
    CONSTRAINT `PK_Customer` PRIMARY KEY (`CustomerID`)
);

# ---------------------------------------------------------------------- #
# Add table "Product"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `Product` (
    `ProductID` VARCHAR(40) NOT NULL,
    `OderID` VARCHAR(40),
    `DepartmentID` VARCHAR(40),
    `Product Name` VARCHAR(40),
    `Price` VARCHAR(40),
    CONSTRAINT `PK_Product` PRIMARY KEY (`ProductID`)
);

# ---------------------------------------------------------------------- #
# Add table "Order"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `Order` (
    `OderID` VARCHAR(40) NOT NULL,
    `ProductID` VARCHAR(40),
    `CustomerID` VARCHAR(40),
    `StoreID` VARCHAR(40),
    `Sales Amount` VARCHAR(40),
    `Date` VARCHAR(40),
    `Time` VARCHAR(40),
    CONSTRAINT `PK_Order` PRIMARY KEY (`OderID`)
);

# ---------------------------------------------------------------------- #
# Add table "Store"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `Store` (
    `StoreID` VARCHAR(40) NOT NULL,
    `EmployeeID` VARCHAR(40),
    `Store Name` VARCHAR(40),
    CONSTRAINT `PK_Store` PRIMARY KEY (`StoreID`)
);

# ---------------------------------------------------------------------- #
# Add table "Employee"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `Employee` (
    `EmployeeID` VARCHAR(40) NOT NULL,
    `StoreID` VARCHAR(40),
    `EmpName` VARCHAR(40),
    CONSTRAINT `PK_Employee` PRIMARY KEY (`EmployeeID`)
);

# ---------------------------------------------------------------------- #
# Add foreign key constraints                                            #
# ---------------------------------------------------------------------- #

ALTER TABLE `Product` ADD CONSTRAINT `Order_Product` 
    FOREIGN KEY (`OderID`) REFERENCES `Order` (`OderID`);

ALTER TABLE `Order` ADD CONSTRAINT `Store_Order` 
    FOREIGN KEY (`StoreID`) REFERENCES `Store` (`StoreID`);

ALTER TABLE `Order` ADD CONSTRAINT `Customer_Order` 
    FOREIGN KEY (`CustomerID`) REFERENCES `Customer` (`CustomerID`);

ALTER TABLE `Store` ADD CONSTRAINT `Employee_Store` 
    FOREIGN KEY (`EmployeeID`) REFERENCES `Employee` (`EmployeeID`);

ALTER TABLE `Employee` ADD CONSTRAINT `Store_Employee` 
    FOREIGN KEY (`StoreID`) REFERENCES `Store` (`StoreID`);
