CREATE DATABASE LoanSystem;
USE EthioMicroLend;
CREATE TABLE Client (
  ClientID INT PRIMARY KEY AUTO_INCREMENT,
  FullName VARCHAR(100) NOT NULL,
  Address VARCHAR(200),
  Phone VARCHAR(20) UNIQUE,
  Email VARCHAR(100) UNIQUE
);
USE LoanSystem;
CREATE TABLE LoanOfficer (
  OfficerID INT PRIMARY KEY AUTO_INCREMENT,
  FullName VARCHAR(100),
  PhoneNumber VARCHAR(20),
  Email VARCHAR(100)
);
USE LoanSystem;
CREATE TABLE Loan (
  LoanID INT PRIMARY KEY AUTO_INCREMENT,
  ClientID INT,
  OfficerID INT,
  LoanAmount DECIMAL(10,2),
  InterestRate DECIMAL(5,2),
  Duration INT,
  FOREIGN KEY (ClientID) REFERENCES Client(ClientID),
  FOREIGN KEY (OfficerID) REFERENCES LoanOfficer(OfficerID)
);
USE LoanSystem;
CREATE TABLE Repayment (
  RepaymentID INT PRIMARY KEY AUTO_INCREMENT,
  LoanID INT,
  DueDate DATE,
  AmountPaid DECIMAL(10,2),
  AmountDue DECIMAL(10,2),
  Status ENUM('Pending','Paid','Overdue'),
  FOREIGN KEY (LoanID) REFERENCES Loan(LoanID)
);
USE LoanSystem;
CREATE TABLE SavingAccount (
  SavingsID INT PRIMARY KEY AUTO_INCREMENT,
  ClientID INT,
  Balance DECIMAL(10,2),
  AccountNumber VARCHAR(20) UNIQUE,
  OpenDate DATE,
  FOREIGN KEY (ClientID) REFERENCES Client(ClientID)
);
USE LoanSystem;
CREATE TABLE Transaction (
  TransactionID INT PRIMARY KEY,
  TransactionType ENUM('Deposit','Withdrawal','Repayment','Loan Disbursement'),
  TransactionDate DATE,
  Amount DECIMAL(10,2),
  LoanID INT,
  SavingsID INT,
  FOREIGN KEY (LoanID) REFERENCES Loan(LoanID),
  FOREIGN KEY (SavingsID) REFERENCES SavingAccount(SavingsID)
);

