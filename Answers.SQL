--  Creating database table

CREATE DATABASE Hospital;
USE Hospital_db;

 -- Answer 1
CREATE TABLE Patients (
 patient_id INT PRIMARY KEY AUTO_INCREMENT,
 first_name VARCHAR(150) NOT NULL,
 last_name VARCHAR(150) NOT NULL,
 date_of_birth DATE NOT NULL,
 email_address VARCHAR(150),
 gender VARCHAR(150),
 language VARCHAR(150) NOT NULL
 );
  
  -- Answer 2
 CREATE TABLE Providers (
 providers_id INT PRIMARY KEY AUTO_INCREMENT,
 first_name VARCHAR(150) NOT NULL,
 last_name VARCHAR(150) NOT NULL,
 providers_speciality VARCHAR(150) NOT NULL,
 email_address VARCHAR(150),
 phone_number VARCHAR(150),
 date_joined DATE NOT NULL
);
 
 -- Answer 3
CREATE TABLE Visits (
 visits_id INT PRIMARY KEY AUTO_INCREMENT,
 date_of_visit DATE NOT NULL,
 visits_id VARCHAR(150) NOT NULL,
 date_scheduled DATE NOT NULL,
 visits_department_id INT NOT NULL,
 visits_type VARCHAR(150),
 blood_pressure_systollic INT NULL,
 blood_pressure_diastollic DECIMAL(5,2) NOT NULL,
 pulse DECIMAL(5,2),
 visits_status VARCHAR(150)         
);
 
 -- Answer 4
CREATE TABLE Ed_Visits(
 ed_visits_id INT PRIMARY KEY AUTO_INCREMENT,
 acuity INT NOT NULL,
 visits_id INT NOT NULL,
 patient_id INT NOT NULL,
 reason_for_visits VARCHAR(150) NOT NULL,
 disposition VARCHAR(150) NOT NULL,
 FOREIGN KEY (visits_id) REFERENCES Visits(visits_id), 
 FOREIGN KEY (patient_id) REFERENCES Patients(patient_id)          
);
 
 -- Answer 5
CREATE TABLE Admission (
 admission_id INT PRIMARY KEY AUTO_INCREMENT,
 admission_date DATE NOT NULL,
 discharge_date DATE NOT NULL,
 patient_id INT NOT NULL,
 discharge_disposition VARCHAR(150) NOT NULL,
 service_date DATE NOT NULL,
 primary_diagnosis VARCHAR(150) NOT NULL, 
 FOREIGN KEY (patient_id) REFERENCES Patients(patient_id)          
);
 
 -- Answer 6
CREATE TABLE Discharge (
 discharge_id INT PRIMARY KEY AUTO_INCREMENT,
 discharge_date DATE NOT NULL,
 patient_id VARCHAR(150) NOT NULL,
 discharge_disposition VARCHAR(150) NOT NULL,
 admission_id INT NOT NULL,
 FOREIGN KEY (admission_id) REFERENCES Admission(admission_id), 
 FOREIGN KEY (patient_id) REFERENCES Patient(patient_id)
);
 
