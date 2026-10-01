-- Linked tables
CREATE TABLE EmployeeRoles(
  RoleID INT PRIMARY KEY,
  RoleName VARCHAR(50),
  StaffCount INT NOT NULL,
  Tasks VARCHAR(255),
  PerfromanceNeed VARCHAR(100),
  BudgetPerUnit DECIMAL(8,2) NOT NULL 
);

CREATE TABLE workstationBuilds (
    BuildID INT PRIMARY KEY,
    RoleID INT NOT NULL,
    BuildName VARCHAR(100) NOT NULL,
    Source VARCHAR(50),

    CONSTRAINT FK_WorkstationBuilds_Role
    FOREIGN KEY (RoleID)
    REFERENCES EmployeeRoles(RoleID)
    ON UPDATE CASCADE
    ON DELETE CASCADE
); 

-- create BuildItems
CREATE TABLE BuildItems (
    ItemID INT PRIMARY KEY,
  BuildID INTEGER,
  HardwareCategory VARCHAR(50) NOT NULL,
  ItemName VARCHAR(100) NOT NULL,
  Specification VARCHAR(150) NOT NULL,
  Cost DECIMAL(8,2) NOT NULL,
  FOREIGN KEY (BuildID)
  REFERENCES workstationBuilds(BuildID)

ON UPDATE CASCADE
ON DELETE CASCADE
);



CREATE TABLE Recommendations (
 RecommendationID INT PRIMARY KEY,
    RoleID INT,
    Justification TEXT,
    Compromise TEXT,
    Approved BOOLEAN,
    EthicalNotes TEXT,
    FOREIGN KEY(RoleID) 
    REFERENCES EmployeeRoles(RoleID)
 );
 



INSERT INTO EmployeeRoles
(RoleID,RoleName,StaffCount,Tasks,PerfromanceNeed,BudgetPerUnit)

VALUES 
(1, 'Administrative Assistant', 3,'Complete hardware build and justification for 3 basic office workstations', 'Basic office hardware workstation', 850.00),
(2, 'Project Manager', 2,'Complete hardware build and justification for 2 business workstations', 'Business hardware workstation with stronger display/workflow setup', 1250.00),
(3, 'Architect / CAD Designer', 5,'Complete hardware build and justification for 5 CAD workstations', 'CAD hardware workstation with dedicated GPU and suitable display ', 2350.00),
(4, '3D Visualisation Specialist workstation', 3, 'Complete hardware build and justification for 2 high-performance workstations','High-performance rendering/visualisation hardware workstation', 3750);

INSERT INTO Recommendations
 (RecommendationID,RoleID,Justification,Compromise,Approved,EthicalNotes)
 VALUES
 -- example
 (1, 1, 'Good value for the budget','use a cheaper gpu', TRUE,'NO ethical concerns');

INSERT INTO workstationBuilds
(BuildID, RoleID, BuildName, Source)
VALUES
(1, 1, 'High Performance Gaming Workstation', 'Personal Build');


INSERT INTO BuildItems
(ItemID, BuildID, HardwareCategory, ItemName, Specification, Cost)
VALUES
(1, 1, 'Case',
'Lian Li O11 Dynamic Mini V2 ATX Mini Tower Black',
'Tempered Glass Side Panel', 75.00),

(2, 1, 'CPU',
'AMD Ryzen 7 9850X3D',
'AM5, 8 cores, 16 threads', 379.99),

(3, 1, 'Motherboard',
'ASUS TUF GAMING B850-PLUS WIFI',
'Micro ATX, AM5, DDR5', 159.99),

(4, 1, 'GPU',
'ASUS PRIME GeForce RTX 5060 Ti 16GB GDDR7 OC DDR7',
'16GB VRAM', 679.99),

(5, 1, 'RAM',
'Corsair Vengeance RGB 64GB 2x32GB DDR5 6000 CL30 White',
'32GB (2x16GB) DDR5-5600 CL40', 379.99),

(6, 1, 'CPU Cooler',
'be quiet! Pure Rock Slim 2',
'Air cooler, 135mm', 14.99),

(7, 1, 'Storage',
'Western Digital WD Red Pro 26TB 3.5" HDD 7200RPM SATA 6.0 Gb/s',
'1TB M.2-2280 PCIe 3.0 x4 NVMe SSD', 29.72),

(8, 1, 'Power Supply',
'be quiet! Straight Power 12',
'750W, Fully Modular, 80+ Platinum', 19.99),

(9, 1, 'Monitor',
'MSI MAG 272QPW QD-OLED X28',
'26.5 inch, WQHD, 280Hz', 378.95);

Select * From BuildItems;
