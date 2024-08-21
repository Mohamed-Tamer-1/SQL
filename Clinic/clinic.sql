USE clinic

DROP TABLE IF EXISTS patient;
CREATE TABLE patient(
    patient_id INT IDENTITY PRIMARY KEY,
    patient_name VARCHAR(50) NOT NULL,
    age INT NOT NULL,
    contact_details VARCHAR(255) NOT NULL,
    insurance_provider VARCHAR(50),
    medical_history TEXT
);
INSERT INTO patient
VALUES ('Ahmed', 65, '0101254865', 'Mostafa Mohamed', null);

DROP TABLE IF EXISTS doctor;
CREATE TABLE doctor(
    doctor_id INT IDENTITY PRIMARY KEY,
    doctor_name VARCHAR(50) NOT NULL,
    age INT,
    specialization VARCHAR(255) NOT NULL,
    contact_details VARCHAR(255) NOT NULL
);
INSERT INTO doctor
VALUES ('Mohamed', 45, 'orthopedist' , '011154465');

DROP TABLE IF EXISTS appointment;
CREATE TABLE appointment(
    appointment_id INT IDENTITY PRIMARY KEY,
    doctor_id INT,
    patient_id INT,
    appointment_date DATE,
    appointment_time TIME,
    reason_for_visit TEXT,
    FOREIGN KEY (doctor_id) REFERENCES doctor(doctor_id),
    FOREIGN KEY (patient_id) REFERENCES patient(patient_id)
);
INSERT INTO appointment
VALUES (1, 1, '2024-08-01', '10:00:00', 'Osteoporosis')

DROP TABLE IF EXISTS prescriptions;
CREATE TABLE prescriptions(
    prescription_id INT IDENTITY PRIMARY KEY,
    appointment_id INT,
    medication_details TEXT,
    dosage TEXT,
    doctor_instructions TEXT,
    FOREIGN KEY (appointment_id) REFERENCES appointment(appointment_id)
);
INSERT INTO Prescriptions
VALUES (1, 'Aspirin', '1 tablet daily', 'Take with food.')
 SELECT * FROM patient
 SELECT * FROM doctor
 SELECT * FROM appointment
 SELECT * FROM prescriptions