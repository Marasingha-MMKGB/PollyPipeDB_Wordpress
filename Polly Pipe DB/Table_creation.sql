CREATE DATABASE PollyPipeDB;
USE PollyPipeDB;

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(255),
    Email VARCHAR(255),
    Category VARCHAR(255)
);

CREATE TABLE CustomerTelephoneNumbers (
    CustomerID INT,
    TelephoneNumber VARCHAR(15),
    PRIMARY KEY (CustomerID, TelephoneNumber),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

CREATE TABLE Installations (
    InstallationID INT PRIMARY KEY,
    NameOfPlace VARCHAR(255),
    PlaceAddress VARCHAR(255),
    Type VARCHAR(255),
    CustomerID INT,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);


CREATE TABLE Workers (
    WorkerID INT PRIMARY KEY,
    FirstName VARCHAR(255),
    LastName VARCHAR(255),
    Category VARCHAR(255),
    Email VARCHAR(255),
    TelephoneNumber VARCHAR(15),
    ItemNumber INT,
    WorkNumber INT,
    WorkPlaceNumber INT
   
);

CREATE TABLE Stores (
    ItemID INT PRIMARY KEY,
    IssuedDate DATE,
    ResponsiblePerson VARCHAR(255),
    ItemPrice DECIMAL(10, 2)
);


CREATE TABLE Supplies (
    ItemNumber INT PRIMARY KEY,
    PricePerUnit DECIMAL(10, 2),
    Quantity INT,
    TotalPrice DECIMAL(10, 2) AS (PricePerUnit * Quantity) STORED,
    Purpose VARCHAR(255),
    StoreID INT
    
);

CREATE TABLE Payments (
    BillNumber INT PRIMARY KEY,
    BuyerName VARCHAR(255),
    Category VARCHAR(255),
    DatePay DATE,
    CustomerID INT
);

CREATE TABLE InstallationWorkers (
    InstallationID INT,
    WorkerID INT,
    PRIMARY KEY (InstallationID, WorkerID)
);

CREATE TABLE WorkerStores (
    WorkerID INT,
    ItemID INT,
    PRIMARY KEY (WorkerID, ItemID)
);

-- Bellow here shows the relationships

ALTER TABLE CustomerTelephoneNumbers
ADD CONSTRAINT FK_CustomerTelephones_Customers
FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID);

ALTER TABLE Installations
ADD CONSTRAINT FK_Installations_Customers
FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID);

ALTER TABLE Workers
ADD CONSTRAINT FK_Workers_Supplies
FOREIGN KEY (ItemNumber) REFERENCES Supplies(ItemNumber),
ADD CONSTRAINT FK_Workers_Installations
FOREIGN KEY (WorkNumber) REFERENCES Installations(InstallationID);

ALTER TABLE Supplies
ADD CONSTRAINT FK_Supplies_Stores
FOREIGN KEY (StoreID) REFERENCES Stores(ItemID);

ALTER TABLE Payments
ADD CONSTRAINT FK_Payments_Customers
FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID);

ALTER TABLE InstallationWorkers
ADD CONSTRAINT FK_InstallationWorkers_Installations
FOREIGN KEY (InstallationID) REFERENCES Installations(InstallationID),
ADD CONSTRAINT FK_InstallationWorkers_Workers
FOREIGN KEY (WorkerID) REFERENCES Workers(WorkerID);

ALTER TABLE WorkerStores
ADD CONSTRAINT FK_WorkerStores_Workers
FOREIGN KEY (WorkerID) REFERENCES Workers(WorkerID),
ADD CONSTRAINT FK_WorkerStores_Stores
FOREIGN KEY (ItemID) REFERENCES Stores(ItemID);
