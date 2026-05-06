USE LoanSystem;
INSERT INTO Client (FullName, Address, Phone, Email)
VALUES ('Alice Mekonnen', 'Addis Ababa', '0912345678', 'alice@example.com');
USE LoanSystem;
SELECT c.FullName, l.LoanAmount, l.Duration
FROM Client c
JOIN Loan l ON c.ClientID = l.ClientID;
USE LoanSystem;
INSERT INTO LoanOfficer (FullName, PhoneNumber, Email)
VALUES ('Samuel Tesfaye', '0923456789', 'samuel@ethio.org');
USE LoanSystem;
INSERT INTO Loan (ClientID, OfficerID, LoanAmount, InterestRate, Duration)
VALUES (1, 1, 5000, 12.5, 12);
USE LoanSystem;
SELECT * FROM Client;
SELECT LoanID, LoanAmount, InterestRate FROM Loan WHERE LoanAmount > 1000;
USE LoanSystem;
UPDATE Repayment SET Status = 'Paid' WHERE RepaymentID = 1;
UPDATE Client SET Phone = '0911223344' WHERE ClientID = 1;
USE LoanSystem;
DELETE FROM Loan WHERE LoanID = 1;
USE LoanSystem;
SELECT OfficerID, COUNT(*) AS TotalLoans
FROM Loan
GROUP BY OfficerID;
USE LoanSystem;
INSERT INTO SavingAccount (ClientID, Balance, AccountNumber, OpenDate) 
VALUES (1, 5000.00, 'EML-SAV-2026-001', '2026-01-15');
USE LoanSystem;
SELECT ClientID, SUM(Balance) AS TotalBalance
FROM SavingAccount
GROUP BY ClientID;