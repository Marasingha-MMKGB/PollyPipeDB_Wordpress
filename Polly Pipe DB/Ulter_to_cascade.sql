USE PollyPipeDB;
--
ALTER TABLE CustomerTelephoneNumbers
DROP CONSTRAINT FK_CustomerTelephones_Customers;

ALTER TABLE CustomerTelephoneNumbers
ADD CONSTRAINT FK_CustomerTelephones_Customers
FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
ON DELETE CASCADE
ON UPDATE CASCADE;


-- 
ALTER TABLE Installations
DROP CONSTRAINT FK_Installations_Customers;

ALTER TABLE Installations
ADD CONSTRAINT FK_Installations_Customers
FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
ON DELETE CASCADE
ON UPDATE CASCADE;

--
ALTER TABLE Workers
DROP CONSTRAINT FK_Workers_Supplies,
DROP CONSTRAINT FK_Workers_Installations;

ALTER TABLE Workers
ADD CONSTRAINT FK_Workers_Supplies
FOREIGN KEY (ItemNumber) REFERENCES Supplies(ItemNumber)
ON DELETE CASCADE
ON UPDATE CASCADE,
ADD CONSTRAINT FK_Workers_Installations
FOREIGN KEY (WorkNumber) REFERENCES Installations(InstallationID)
ON DELETE CASCADE
ON UPDATE CASCADE;

--


ALTER TABLE Supplies
DROP CONSTRAINT FK_Supplies_Stores;

ALTER TABLE Supplies
ADD CONSTRAINT FK_Supplies_Stores
FOREIGN KEY (StoreID) REFERENCES Stores(ItemID)
ON DELETE CASCADE
ON UPDATE CASCADE;

--

ALTER TABLE Payments
DROP CONSTRAINT FK_Payments_Customers;

ALTER TABLE Payments
ADD CONSTRAINT FK_Payments_Customers
FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
ON DELETE CASCADE
ON UPDATE CASCADE;

--


ALTER TABLE InstallationWorkers
DROP CONSTRAINT FK_InstallationWorkers_Installations,
DROP CONSTRAINT FK_InstallationWorkers_Workers;

ALTER TABLE InstallationWorkers
ADD CONSTRAINT FK_InstallationWorkers_Installations
FOREIGN KEY (InstallationID) REFERENCES Installations(InstallationID)
ON DELETE CASCADE
ON UPDATE CASCADE,
ADD CONSTRAINT FK_InstallationWorkers_Workers
FOREIGN KEY (WorkerID) REFERENCES Workers(WorkerID)
ON DELETE CASCADE
ON UPDATE CASCADE;

--

ALTER TABLE WorkerStores
DROP CONSTRAINT FK_WorkerStores_Workers,
DROP CONSTRAINT FK_WorkerStores_Stores;

-- cascade












ALTER TABLE WorkerStores
ADD CONSTRAINT FK_WorkerStores_Workers
FOREIGN KEY (WorkerID) REFERENCES Workers(WorkerID)
ON DELETE CASCADE
ON UPDATE CASCADE,
ADD CONSTRAINT FK_WorkerStores_Stores
FOREIGN KEY (ItemID) REFERENCES Stores(ItemID)
ON DELETE CASCADE
ON UPDATE CASCADE;