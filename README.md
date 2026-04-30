# Ethio-MicroLend Digital Loan Management System

Project Overview
This project is developed as part of the Database Group Project (SWEG2108) at the College of Engineering, Department of Software Engineering, AASTU.  
It focuses on digitalizing the Ethio-MicroLend Microfinance and Loan Management Organization, which supports low-income communities, small business owners, and rural families by providing micro-loans, savings options, and financial literacy programs.

The system replaces manual, paper-based processes with a centralized database solution using MySQL and MongoDB, ensuring efficiency, transparency, and scalability.

Group Members
- Ivana Yared — ETS 0771/17  
- Jije Israel — ETS 0775/17  
- Hanan Fedlu — ETS 0696/17  
- Ineb Hussen — ETS 0765/17  
- Hammere Shimelse — ETS 0687/17  
- Helen Tesfaye — ETS 0721/17  

Instructor: Yaynshet M.


Objectives
- Digitize Client Records – Replace paper forms with a secure database.  
- Integrate Loan & Savings Data – Link loan and savings accounts for accurate tracking.  
- Automate Loan Processing – Streamline approvals, disbursements, and repayment schedules.  
- Enhance Repayment Monitoring – Alerts for overdue accounts to reduce defaults.  
- Generate Accurate Reports – Automated financial summaries for management and compliance.  
- Support Scalability – Handle growing client bases and transactions.  
- Utilize MySQL & MongoDB – Structured + unstructured data management.  
- Improve Transparency & Accountability – Ensure reliable, accessible information for staff and clients.  


Methodology & Tools
- Database Design: ER Diagram, Logical Schema, Normalization up to BCNF.  
- Implementation:  
  - MySQL → Structured financial data (clients, loans, repayments, savings).  
  - MongoDB → Semi/unstructured data (scanned applications, feedback, training materials).  
- Collaboration Tools: Google Docs, GitHub, Telegram.  
- Testing: Sample data insertion, queries, reports, bug tracking, and improvements.


Database Schema (BCNF)
- Client(ClientID, FullName, Address, Phone, Email)  
- Loan(LoanID, ClientID, OfficerID, LoanAmount, InterestRate, Duration)  
- Repayment(RepaymentID, LoanID, DueDate, AmountPaid, AmountDue, Status)  
- SavingAccount(SavingsID, ClientID, Balance, AccountNumber, OpenDate)  
- Transaction(TransactionID, TransactionType, TransactionDate, Amount, LoanID, SavingsID)  
- LoanOfficer(OfficerID, FullName, PhoneNumber, Email)  

---

Inputs, Outputs & Reports
 Inputs (Forms)
- Client Registration  
- Loan Application  
- Repayment  
- Savings Account  
- Transaction  
- Loan Officer  

 Outputs
- Client Profile  
- Loan Status  
- Repayment Summary  
- Savings Account Details  
- Transaction History  
- Officer Assignment  

 Reports
- Client Report  
- Loan Portfolio Report  
- Repayment Report  
- Savings Report  
- Transaction Report  
- Officer Performance Report  


Benefits
- Eliminates inefficiencies of manual systems.  
- Faster loan approvals and repayment monitoring.  
- Transparency and accountability for staff and clients.  
- Automated notifications to reduce defaults.  
- Scalable for future growth and innovation.  


