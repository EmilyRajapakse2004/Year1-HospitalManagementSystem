# Hospital Management System (HMS) - Golden Valley Hospital

## Description
This repository contains the complete implementation of a **Hospital Management System (HMS)** developed for Golden Valley Hospital (GVH) as part of the RDBMS assessment. The system demonstrates the design and development of a relational database management system (RDBMS) using **MySQL** with **phpMyAdmin** interface.  

The system includes:
- Conceptual Data Model (Extended ERD)
- Logical Data Model (Relational Schema)
- Physical Data Model implemented via SQL
- Data Normalization up to 3NF
- Table creation, sample data population, and data manipulation queries
- Report documentation justifying design decisions

This project focuses on managing **in-patients, out-patients, doctors, wards, rooms, treatments, appointments, and payments** with a well-structured relational database.

---

## Learning Outcomes
By completing this project, students develop the following skills:

1. Describe web application architectures and organisation of relational databases.
2. Analyse case studies and identify database requirements.
3. Apply conceptual database design to create Extended ERDs.
4. Convert conceptual ERDs into relational schemas with integrity constraints.
5. Implement and manipulate databases using SQL.
6. Apply normalization principles to reduce redundancy and maintain data integrity.
7. Use SQL queries to extract meaningful information for hospital management tasks.

---

## Case Study Overview: Golden Valley Hospital (GVH)
Golden Valley Hospital is a premier healthcare institution with the following requirements:

- **In-patients:** Assigned to rooms in wards with admission/discharge dates and guardian details.
- **Rooms & Wards:** Each room and ward has a unique identifier, type, and capacity.
- **Doctors:** Profiles include specialization, classification (resident/consultant), and joining date.
- **Medical Care:** Tracks treatments including diagnosis, treatment type, medication, and dosage.
- **Out-patients:** Can schedule appointments with doctors.
- **Payments:** Patients can pay via cash, card, or insurance. All transactions are recorded.

---

## Project Structure

### 1. Conceptual Data Model (Extended ERD)
- Includes entities, relationships, attributes, and multiplicities.
- Accounts for all given requirements and additional necessary attributes.
- Screenshot evidence provided in the report PDF.

**Entities include:**
- Patients (In-patient & Out-patient)
- Doctors
- Wards
- Rooms
- Treatments
- Appointments
- Payments

---

### 2. Logical Data Model (Relational Schema)
- Converts ERD into tables with primary keys, foreign keys, and other attributes.
- Maintains relationships and integrity constraints.
- Diagram included in the report.

---

### 3. Data Normalization (up to 3NF)
- All relations normalized to **Third Normal Form (3NF)**.
- Functional dependencies identified and resolved.
- Redundancy minimized, anomalies prevented.
- Detailed explanation in the report.

---

### 4. Table Creation and Population
- SQL queries used to create tables in **MySQL**.
- Each table includes proper data types, sizes, constraints, and meaningful sample data.
- **Sample Data:** At least 5 records per table.
- Screenshots included as evidence.

**Key tables:**
- `Patients`
- `Doctors`
- `Wards`
- `Rooms`
- `Appointments`
- `Treatments`
- `Payments`

---

### 5. Data Manipulation Queries
- Queries designed to extract specific information:

**Examples:**
1. Names and specializations of resident Cardiologists and Neurologists who joined before 2022, ordered by joining date.
2. Wards with deluxe rooms with remaining patient availability for wards accommodating more than 5 patients.
3. Total cash payment received for out-patient appointments conducted by Paediatricians with surnames 'Peterson' and 'Fedrick' in the last 10 days.

- SQL queries and screenshots included in the report.

---

## File Structure
HMS-GoldenValley/

│

├── SQL_Scripts/

│ ├── Table_Creation.sql

│ ├── Sample_Data_Population.sql

│ └── Data_Manipulation_Queries.sql

│

├── Report/

│ └── HMS_Report.pdf

│

└── README.md


---

## Technologies Used
- **Database:** MySQL
- **Interface:** phpMyAdmin
- **Query Language:** SQL (DDL, DML)
- **ERD Design:** Drawn using appropriate modeling tools
- **Normalization:** Up to 3NF

---

## Screenshots & Evidence
All SQL queries execution and table population screenshots are included in the report PDF.  
Evidence includes:
- Table structure with data types and constraints
- Sample data entries
- Output of data manipulation queries

---

## References
- Elmasri, R., & Navathe, S. (2017). *Fundamentals of Database Systems*. 7th Edition. Pearson.
- MySQL Documentation: [https://dev.mysql.com/doc/](https://dev.mysql.com/doc/)
- phpMyAdmin Documentation: [https://www.phpmyadmin.net/docs/](https://www.phpmyadmin.net/docs/)
- RGU & IIT Module Descriptor (Moodle Study Area)
- Additional tutorials and resources referenced in the report

---

## Author
**Student Name:** Lidiya Rajapakse 

**IIT Student ID:** 20240892  
**Module :** Database 

---

## Notes
- All SQL scripts are error-free and tested.
- The database design is optimized for hospital management and adheres to normalization principles.
- Screenshots and validation evidence provided in the report PDF.
