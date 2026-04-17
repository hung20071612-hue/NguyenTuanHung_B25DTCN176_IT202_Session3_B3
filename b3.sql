CREATE DATABASE BRUH;
USE BRUH;
CREATE TABLE CUSTOMERS (
    CustomerID INT PRIMARY KEY AUTO_INCREMENT,
    FullName VARCHAR(100),
    Email VARCHAR(100),
    City VARCHAR(50),
    LastPurchaseDate DATE,          
    Status VARCHAR(20),            
    Gender VARCHAR(10),
    DateOfBirth DATE,
    Points INT,
    Address VARCHAR(255)
);

INSERT INTO CUSTOMERS (FullName, Email, City, LastPurchaseDate, Status)
VALUES
    ('Nguyễn Văn A', 'anv@gmail.com', 'Hà Nội', '2025-05-20', 'Active'),     -- Khách hàng tiềm năng (hơn 6 tháng)
    ('Trần Thị B', 'btt@gmail.com', 'Hà Nội', '2026-02-10', 'Active'),       -- Mới mua (gần đây)
    ('Lê Văn C', NULL, 'Hà Nội', '2025-01-15', 'Active'),                    -- Lỗi: Không có Email
    ('Phạm Minh D', 'dpm@gmail.com', 'Hà Nội', '2024-12-01', 'Locked'),      -- Lỗi: Tài khoản bị khóa
    ('Hoàng An E', 'eha@gmail.com', 'TP HCM', '2025-03-01', 'Active');   

SELECT FullName, Email FROM CUSTOMERS
WHERE Status = 'Active' and Email IS NOT NULL;