CREATE DATABASE HotelDB;

GO

USE HotelDB;

GO

-- 1.
CREATE TABLE Guests (
	GuestID INT PRIMARY KEY IDENTITY(1,1),
	FirstName VARCHAR(50) NOT NULL,
	LastName VARCHAR(50) NOT NULL,
	DateOfBirth DATE NOT NULL,
	Gender CHAR(1) NOT NULL,
	Phone VARCHAR(15) NOT NULL UNIQUE,
	Email VARCHAR(50) NOT NULL UNIQUE,
	Address VARCHAR(100) NOT NULL,
	EmergencyContact VARCHAR(50),

	CONSTRAINT CHK_Gender CHECK (Gender IN ('M','F'))
);
GO

-- 3.
CREATE TABLE RoomTypes (
	RoomTypeID INT PRIMARY KEY IDENTITY(1,1),
	RoomTypeName VARCHAR(50) NOT NULL,
	[Description]	TEXT,
	PricePerNight DECIMAL(10, 2) NOT NULL,
	MaxOccupancy INT NOT NULL
);
GO


-- 2.
CREATE TABLE Rooms (
	RoomID INT PRIMARY KEY IDENTITY(1,1),
	RoomNumber VARCHAR(10) NOT NULL,
	RoomTypeID INT,
	[Status] VARCHAR(20),

	CONSTRAINT CHK_RoomStatus  CHECK([Status] IN ('Available', 'Occupied', 'Maintenance')),
	CONSTRAINT FK_Rooms_RoomTypes FOREIGN KEY (RoomTypeID) REFERENCES RoomTypes (RoomTypeID)
);
GO

-- 4.
CREATE TABLE Reservations (
	ReservationID INT PRIMARY KEY IDENTITY(1,1),
	GuestID INT,
	RoomID INT,
	CheckInDate DATE NOT NULL,
	CheckOutDate DATE NOT NULL,
	[Status] VARCHAR(20) NOT NULL,

	CONSTRAINT CHK_ReservationStatus  CHECK(Status IN ('Pending', 'Confirmed', 'Cancelled', 'CheckedOut')),
	CONSTRAINT FK_Reservations_Guests  FOREIGN KEY (GuestID) REFERENCES Guests (GuestID),
	CONSTRAINT FK_Reservations_Rooms  FOREIGN KEY (RoomID) REFERENCES Rooms (RoomID)
);
GO

-- 5.
CREATE TABLE Billing (
	BillingID INT PRIMARY KEY IDENTITY(1,1),
	ReservationID INT,
	ServiceDate DATE NOT NULL,
	[Description] TEXT,
	Amount DECIMAL(10,2) NOT NULL,
	BillingStatus VARCHAR(20) NOT NULL,

	CONSTRAINT CHK_BillingStatus  CHECK(BillingStatus IN ('Unpaid', 'Paid')),
	CONSTRAINT FK_Billing_Reservations FOREIGN KEY (ReservationID) REFERENCES Reservations (ReservationID)
);
GO

-- 6.
CREATE TABLE Payments (
	PaymentID INT PRIMARY KEY IDENTITY(1,1),
	BillingID INT,
	PaymentDate DATE NOT NULL,
	AmountPaid DECIMAL(10,2) NOT NULL,
	PaymentMethod VARCHAR(20) NOT NULL,

	CONSTRAINT CHK_PaymentMethod  CHECK(PaymentMethod IN ('Credit Card', 'Cash', 'Bank Transfer')),
	CONSTRAINT FK_Payments_Billing FOREIGN KEY (BillingID) REFERENCES Billing (BillingID)
);
GO

-- 7.
CREATE TABLE Services (
	ServiceID INT PRIMARY KEY IDENTITY(1,1),
	ServiceName VARCHAR(50) NOT NULL,
	[Description] TEXT,
	Price DECIMAL(10,2) NOT NULL
);
GO

-- 8.
CREATE TABLE ReservationServices (
	ReservationServiceID INT PRIMARY KEY IDENTITY(1,1),
	ReservationID INT,
	ServiceID INT,
	ServiceDate	DATE NOT NULL,
	Quantity INT NOT NULL,
	TotalPrice DECIMAL(10,2) NOT NULL,

	CONSTRAINT FK_ReservationServices_Reservations FOREIGN KEY (ReservationID) REFERENCES Reservations (ReservationID),
	CONSTRAINT FK_ReservationServices_Services FOREIGN KEY (ServiceID) REFERENCES Services (ServiceID)
);