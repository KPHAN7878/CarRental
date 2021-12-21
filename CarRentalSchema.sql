CREATE TABLE CUSTOMERS
(
    custID INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    CustomerName TEXT NOT NULL,
    Phone TEXT NOT NULL
);

CREATE TABLE VEHICLE
(
    VehicleID TEXT PRIMARY KEY NOT NULL,
    VehicleDescription TEXT NOT NULL,
    VehicleYear INTEGER NOT NULL,
    VehicleType INTEGER NOT NULL,
    Category INTEGER NOT NULL

);

CREATE TABLE RENTAL 
(
    custID INTEGER NOT NULL,
    VehicleID TEXT NOT NULL,
    StartDate TEXT NOT NULL,
    OrderDate TEXT NOT NULL,
    RentalType INTEGER NOT NULL,
    Qty INTEGER NOT NULL,
    ReturnDate TEXT,
    TotalAmount INTEGER NOT NULL,
    PaymentDate TEXT,

    FOREIGN KEY(custID) REFERENCES CUSTOMERS (custID) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY(VehicleID) REFERENCES VEHICLE (VehicleID) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE RATE
(
    VehicleType INTEGER NOT NULL,
    Category INTEGER NOT NULL,
    Weekly INTEGER NOT NULL,
    Daily INTEGER NOT NULL

);