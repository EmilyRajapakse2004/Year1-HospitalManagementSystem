Section 4- Table Creation and Population of Data

#Creating ward table
CREATE TABLE Ward(
Ward_id INT(10) NOT NULL,
Ward_type Varchar(200) NOT NULL,
Number_of_patients INT(200) NOT NULL,
PRIMARY KEY(Ward_id)
);

#Inserting values to ward
INSERT INTO Ward 
(Ward_id, Ward_type, Number_of_patients) 
VALUES 
(1, 'General', 15), 
(2, 'ICU', 5),
(3, 'Pediatrics', 10), 
(4, 'Surgery', 8), 
(5, 'Maternity', 12);

#Creating Out_patient table
CREATE TABLE Out_patient(
Out_patient_id INT(10) NOT NULL,
FirstName VARCHAR(200) NOT NULL,
LastName VARCHAR(200) NOT NULL,
Date_of_birth DateTime(50) ,
AdmissionDateTime DateTime(50),
DischargeDateTime DateTime(50),
Guadian VARCHAR(200) NOT NULL,
PRIMARY KEY(Out_patient_id)
);

#Inserting values to Out_patient
INSERT INTO Out_patient (Out_patient_id, FirstName, LastName, Date_of_birth, AdmissionDateTime, DischargeDateTime, Guardian)
VALUES
(1, 'John', 'Doe', '1985-03-15 00:00:00', '2024-12-01 10:00:00', '2024-12-05 14:00:00', 'Jane Doe'),
(2, 'Emily', 'Smith', '1990-06-22 00:00:00', '2024-12-02 11:30:00', '2024-12-06 09:00:00', 'Mark Smith'),
(3, 'Michael', 'Brown', '1978-11-08 00:00:00', '2024-12-03 15:00:00', NULL, 'Sarah Brown'),
(4, 'Sarah', 'Johnson', '2002-09-30 00:00:00', '2024-12-04 08:00:00', '2024-12-07 16:00:00', 'David Johnson'),
(5, 'David', 'Williams', '1995-01-12 00:00:00', '2024-12-05 10:00:00', NULL, 'Emma Williams');

#Creating Visiting_doctor table
CREATE TABLE Visiting_doctor (
    Doctor_id INT(10) NOT NULL,
    FurstName VARCHAR(200),
    Surname VARCHAR(200),
    Gender VARCHAR(10) NOT NULL,
    Age INT(3) NOT NULL,
    Date_joined DATE NOT NULL,
    Hourly_rate DECIMAL(10, 2) NOT NULL,
    Travel_allowance DECIMAL(10, 2),
    Specialization VARCHAR(200) NOT NULL,
    PRIMARY KEY (Doctor_id)
);

#Inserting values to Visiting_doctor
INSERT INTO Visiting_doctor (Doctor_id, FirstName,Surname, Gender, Age, Date_joined, Hourly_rate, Travel_allowance)
VALUES
(1, 'John','Smith', 'Male', 45, '2015-06-12', 150.00, 20.00,'Cardiology'),
(2, 'Emily', 'Johnson', 'Female', 38, '2018-04-25', 175.00, 25.00,'neurology'),
(3, 'Alex', 'Taylor', 'Male', 50, '2010-09-15', 200.00, 30.00,'Cardiology'),
(4, 'Sarah', 'Peterson', 'Female', 29, '2020-01-20', 120.00, 15.00, 'Pediatric'),
(5, 'Michael', 'Brown', 'Other', 34, '2019-11-10', 180.00, 0.00, 'Orthopaedics');

#Creating Visiting_doctor_telephone table
CREATE TABLE Visiting_doctor_telephone ( 
Doctor_id INT(10) NOT NULL, 
Telephone_number VARCHAR(15) NOT NULL, 
PRIMARY KEY (Doctor_id, Telephone_number), 
FOREIGN KEY (Doctor_id) REFERENCES Visiting_doctor(Doctor_id)
);

#Inserting values to Visiting_doctor_telephone
INSERT INTO Visiting_doctor_telephone (Doctor_id, Telephone_number) 
VALUES 
(1, '0723456789'), (1, '0778765432'), (2, '0112233445'), (3, '0778877665'), (4, '0775667789')
;

#Creating In_house_doctor table
CREATE TABLE In_house_doctor (
    Doctor_id INT(10) NOT NULL,
    FirstName VARCHAR(200),
    Surname VARCHAR(200),
    Gender VARCHAR(10) NOT NULL,
    Age INT(3) NOT NULL,
    Date_joined DATE NOT NULL,
    Department VARCHAR(100) NOT NULL,
    Salary DECIMAL(10, 2) NOT NULL,
    Specialization VARCHAR(200),
    PRIMARY KEY (Doctor_id)
);

#Inserting values to In_house_doctor
INSERT INTO In_house_doctor (Doctor_id, FirstName,surname, Gender, Age, Date_joined, Department, Salary)
VALUES
(1, 'Alice', 'Brown', 'Female', 40, '2016-05-10', 'Cardiology', 75000.00,'Cardiology'),
(2, 'Robert', 'Smith', 'Male', 35, '2018-07-15', 'Neurology', 85000.00,'Neurology'),
(3, 'Karen', 'Johnson', 'Female', 45, '2012-10-22', 'Pediatrics', 78000.00,'Cardiology'),
(4, 'Peter', 'Lee', 'Male', 50, '2010-01-05', 'Orthopedics', 92000.00, 'Dermatology'),
(5, 'Elton','Fedrick', 'Other', 32, '2020-03-18', 'Radiology', 68000.00, 'Pediatric');

#Creating In_house_doctor table
CREATE TABLE In_house_doctor_telephone ( 
Doctor_id INT(10) NOT NULL, 
Telephone_number VARCHAR(15) NOT NULL, 
PRIMARY KEY (Doctor_id, Telephone_number), 
FOREIGN KEY (Doctor_id) REFERENCES Visiting_doctor(Doctor_id)
);

#Inserting values to In_house_doctor
INSERT INTO In_house_doctor_telephone (Doctor_id, Telephone_number) 
VALUES 
(1, '0774502162'), (1, '0714526893'), (2, '0754128963'), (3, '0774856791'), (4, '0721457859')
;

#Creating Appointment table
CREATE TABLE Appointment ( 
Appointment_id INT(10) NOT NULL, 
Duration INT(10) NOT NULL, 
Location VARCHAR(100) NOT NULL,
PRIMARY KEY(Appointment_id)
);

#Inserting values to Appointment
INSERT INTO Appointment (Appointment_id, Duration, Location) 
VALUES 
(101, 30, 'Room 1A'), (102, 45, 'Room 2B'), (103, 60, 'Room 3C'), (104, 90, 'Room 4D'), (105, 120, 'Room 5E');

#Creating Appointment_schedule table
CREATE TABLE Appointment_schedule(
Appointment_id INT(6) NOT NULL, 
AppointmentDateTime DATETIME NOT NULL, 
PRIMARY KEY(Appointment_id),
FOREIGN KEY (Appointment_id) REFERENCES Appointment(Appointment_id)
);

#Inserting values to Appointment_schedule
INSERT INTO Appointment_schedule (Appointment_id, AppointmentDateTime) 
VALUES
 (101, '2024-12-15 09:00:00'), (102, '2024-12-15 10:30:00'), (103, '2024-12-16 14:00:00'), (104, '2024-12-17 11:45:00'), (105, '2024-12-18 16:30:00')
;

#Creating Treatment table
CREATE TABLE Treatment (
    Treatment_id INT(6) NOT NULL ,        
    Diagnosed_condition VARCHAR(255) NOT NULL,
    PRIMARY KEY (Treatment_id )
);


#Inserting values to Treatment
INSERT INTO Treatment (Treatment_id, Diagnosed_condition) 
VALUES 
(1, 'Hypertension'), (2, 'Diabetes Type 2'), (3, 'Asthma'), (4, 'Migraine'), (5, 'Arthritis')
;

#Creating Diagnosed_condition table
CREATE TABLE Diagnosed_condition (
    Diagnosed_condition VARCHAR(255) NOT NULL,
    Treatment_type VARCHAR(100) NOT NULL,
    PRIMARY KEY(Diagnosed_condition)
);

#Inserting values to Diagnosed_condition
INSERT INTO Diagnosed_condition (Diagnosed_condition, Treatment_type) 
VALUES
('Hypertension', 'Medication'),
('Diabetes Type 2', 'Lifestyle Management and Medication'),
('Asthma', 'Inhalers and Medication'),
('Migraine', 'Pain Management'),
('Arthritis', 'Physical Therapy and Medication')
;


#Creating Treatment_type table
CREATE TABLE Treatment_type (
    Treatment_type VARCHAR(100) NOT NULL,
    Medications VARCHAR(255) NOT NULL,          
    Dosage VARCHAR(100) NOT NULL,
    PRIMARY KEY(Treatment_type)
);

#Inserting values to Treatment_type
INSERT INTO Treatment_type (Treatment_type, Medications, Dosage) 
VALUES
('Medication', 'Amlodipine', '5mg once daily'),
('Lifestyle Management and Medication', 'Metformin', '500mg twice daily'),
('Inhalers and Medication', 'Salbutamol', '2 puffs as needed'),
('Pain Management', 'Ibuprofen', '200mg every 6 hours as needed'),
('Physical Therapy and Medication', 'Paracetamol', '500mg every 4-6 hours')
;


#Creating Room table
CREATE TABLE Room (
Room_id INT(10) NOT NULL, 
Room_type VARCHAR(50) NOT NULL, 
Ward_id INT(10) NOT NULL,
PRIMARY KEY (Room_id) ,
FOREIGN KEY (Ward_id) REFERENCES Ward(Ward_id)
 );

#Inserting values to Room
INSERT INTO Room (Room_id, Room_type, Ward_id) 
VALUES
(1, 'Standard', 1),
(2, 'Deluxe', 2),
(3, 'Standard', 3),
(4, 'Suite', 4),
(5, 'Deluxe', 5)
;

#Creating Ward_allocation table
CREATE TABLE Ward_allocation (
    Ward_id INT(10) NOT NULL, 
    Floor INT NOT NULL,
    PRIMARY KEY(Ward_id)         
);

#Inserting values to Ward_allocation
INSERT INTO Ward_allocation (Ward_id, Floor) 
VALUES 
(1, 01), 
(2, 02), 
(3, 02), 
(4, 03), 
(5, 04)
;

#Creating In_patient table
CREATE TABLE In_patient ( 
In_patient_id INT(10) NOT NULL, 
FirstName VARCHAR(50) NOT NULL, 
LastName VARCHAR(50) NOT NULL, 
Date_of_birth DATE NOT NULL, 
Guardian VARCHAR(50) NOT NULL,
PRIMARY KEY(In_patient_id)
);

#Inserting values to In_patient
INSERT INTO In_patient (In_patient_id, FirstName, LastName, Date_of_birth, Guardian) VALUES 
(1, 'John', 'Walker', '1990-05-15', 'Jane Walker'), 
(2, 'Emily', 'White', '2005-08-22', 'Robert White'), 
(3, 'Michael', 'Richards', '1988-12-11', 'Sarah Richards'), 
(4, 'Sophia', 'Taylor', '2010-03-29', 'William Taylor'), 
(5, 'Daniel', 'Clark', '2000-07-17', 'Ann clark')
;

#Creating In_patient_admission_details table
CREATE TABLE In_patient_admission_details (
    In_patient_id INT(10) NOT NULL,
    AdmissionDateTime DATETIME NOT NULL,
    DischargeDateTime DATETIME,
    Room_id INT(10) NOT NULL,
    PRIMARY KEY (In_patient_id),
    FOREIGN KEY (Room_id) REFERENCES Room(Room_id)
);

#Inserting values to In_patient_admission_details
INSERT INTO In_patient_admission_details (In_patient_id, AdmissionDateTime, DischargeDateTime, Room_id) 
VALUES 
(101, '2024-12-01 10:00:00', '2024-12-05 14:00:00', 1), 
(102, '2024-12-02 09:30:00', '2024-12-06 15:30:00', 2), 
(103, '2024-12-03 11:00:00', NULL, 3),  
(104, '2024-12-04 08:15:00', '2024-12-07 13:00:00', 4), 
(105, '2024-12-05 10:45:00', '2024-12-10 12:00:00', 5);

#Create Payment table
CREATE TABLE Payment (
    Payment_id INT(11) NOT NULL, 
    Payment_method VARCHAR(50) NOT NULL,      
    Amount DECIMAL(10, 2) NOT NULL,         
    Out_patient_id INT(11),                       
    In_patient_id INT(11),                        
    CONSTRAINT check_patient CHECK (
        (Out_patient_id IS NOT NULL AND In_patient_id IS NULL) OR
        (In_patient_id IS NOT NULL AND Out_patient_id IS NULL)
    ), 
    FOREIGN KEY (Out_patient_id) REFERENCES Out_patient(Out_patient_id), 
    FOREIGN KEY (In_patient_id) REFERENCES In_patient(In_patient_id)
);

#Inserting values to Payment
INSERT INTO Payment (Payment_method, Amount, Out_patient_id, In_patient_id)
VALUES 
('Cash', 500.00, NULL, 1), 
('Credit Card', 1200.00, 2, NULL), 
('Insurance', 750.50, NULL,2), 
('Cash', 300.00, 3, NULL), 
('Online Transfer', 1000.00, NULL, 3);


#Create Doctor_in_patient table
CREATE TABLE Doctor_in_patient (
    Doctor_id INT(10) NOT NULL,
    In_patient_id INT(10) NOT NULL,
    PRIMARY KEY (Doctor_id, In_patient_id),
    FOREIGN KEY (Doctor_id) REFERENCES In_house_doctor(Doctor_id), 
    FOREIGN KEY (Doctor_id) REFERENCES In_house_doctor(Doctor_id),  
    FOREIGN KEY (In_patient_id) REFERENCES In_patient(In_patient_id) 
);

#Inserting values to Doctor_in_patient
INSERT INTO Doctor_in_patient (Doctor_id, In_patient_id) 
VALUES 
(1, 1), 
(2, 2), 
(1, 3), 
(3, 4), 
(2, 5);


#Create Doctor_treatment table
CREATE TABLE Doctor_treatment ( 
Doctor_id INT(10) NOT NULL, 
Treatment_id INT(6) NOT NULL, 
PRIMARY KEY (Doctor_id, Treatment_id), 
FOREIGN KEY (Doctor_id) REFERENCES In_house_doctor(Doctor_id),
FOREIGN KEY (Doctor_id) REFERENCES Visiting_doctor(Doctor_id), 
FOREIGN KEY (Treatment_id) REFERENCES Treatment(Treatment_id) 
);

#Inserting values to Doctor_treatment
INSERT INTO Doctor_treatment (Doctor_id, Treatment_id) 
VALUES 
(1, 1), 
(2, 2), 
(1, 3),  
(3, 1), 
(2, 4)
;


#Create In_patient_treatment table
CREATE TABLE In_patient_treatment (
    In_patient_id INT(10) NOT NULL,
    Treatment_id INT(6) NOT NULL,
    PRIMARY KEY (In_patient_id, Treatment_id),
    FOREIGN KEY (In_patient_id) REFERENCES In_patient(In_patient_id), 
    FOREIGN KEY (Treatment_id) REFERENCES Treatment(Treatment_id)
);

#Inserting values to In_patient_treatment
INSERT INTO In_patient_treatment (In_patient_id, Treatment_id) 
VALUES 
(1, 1), 
(2, 2), 
(3, 3), 
(4, 1), 
(5, 4);

#Create Shedule table
CREATE TABLE Schedule ( 
Doctor_id INT(10) NOT NULL, 
Out_patient_id INT(10) NOT NULL, 
Appointment_id INT(11) NOT NULL, 
PRIMARY KEY (Doctor_id, Out_patient_id, Appointment_id), 
FOREIGN KEY (Doctor_id) REFERENCES In_house_doctor(Doctor_id),
FOREIGN KEY (Doctor_id) REFERENCES Visiting_doctor(Doctor_id),
FOREIGN KEY (Out_patient_id) REFERENCES Out_patient(Out_patient_id), 
FOREIGN KEY (Appointment_id) REFERENCES Appointment(Appointment_id)  
);

#Inserting values to Shedule
INSERT INTO Schedule (Doctor_id, Out_patient_id, Appointment_id) 
VALUES 
(1, 1, 101),
(2, 2, 102), 
(3, 3, 103), 
(1, 4, 104), 
(2, 5, 105);


#Data manipulation with sql

#Question1
SELECT Doctor_name, Specialization
FROM (
    SELECT Doctor_name, Specialization, Date_joined
    FROM In_house_doctor
    WHERE Specialization IN ('Cardiology', 'Neurology') AND Date_joined < '2022-01-01'
    
    UNION ALL
    
    SELECT Doctor_name, Specialization, Date_joined
    FROM Visiting_doctor
    WHERE Specialization IN ('Cardiology', 'Neurology') AND Date_joined < '2022-01-01'
) AS doctors
ORDER BY Date_joined DESC;

#Question2
SELECT w.Ward_type, w.Number_of_patients - COUNT(r.Room_id) AS Remaining_Patient_Availability
FROM Ward w
JOIN Room r ON w.Ward_id = r.Ward_id
WHERE r.Room_type = 'Deluxe'
GROUP BY w.Ward_id, w.Ward_type, w.Number_of_patients
HAVING w.Number_of_patients > 5;

#Question3
SELECT SUM(p.Amount) AS Total_Cash_Received
FROM Payment p
JOIN Schedule s ON p.Out_patient_id = s.Out_patient_id
JOIN Appointment_schedule ap ON s.Appointment_id = ap.Appointment_id
JOIN In_house_doctor d ON s.Doctor_id = d.Doctor_id
WHERE d.Specialization = 'Pediatric'
  AND d.Surname IN ('Peterson', 'Fedrick')
  AND p.Payment_method = 'Cash'
  AND ap.AppointmentDateTime >= DATE_SUB(CURDATE(), INTERVAL 10 DAY);



























