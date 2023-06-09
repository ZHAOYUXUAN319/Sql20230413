³Òe[u

CREATE TABLE patients (
  patient_id int PRIMARY KEY,
  patient_name VARCHAR(255) NOT NULL,
  gender VARCHAR(10) NOT NULL,
  date_of_birth VARCHAR(10) NOT NULL,
  address VARCHAR(255) NOT NULL,
  phone_number VARCHAR(20) NOT NULL
);

COMMENT ON COLUMN patients.patient_id IS '³Ò ID';
COMMENT ON COLUMN patients.patient_name IS '³Ò¼';
COMMENT ON COLUMN patients.gender IS '«?';
COMMENT ON COLUMN patients.date_of_birth IS '¶Nú';
COMMENT ON COLUMN patients.address IS 'Z';
COMMENT ON COLUMN patients.phone_number IS 'dbÔ';


ãte[u

CREATE TABLE doctors (
  doctor_id int PRIMARY KEY,
  doctor_name VARCHAR(255) NOT NULL,
  gender VARCHAR(10) NOT NULL,
  department_id INT NOT NULL,
  salary INT NOT NULL
);

COMMENT ON COLUMN doctors.doctor_id IS 'ã¶ID';
COMMENT ON COLUMN doctors.doctor_name IS 'ã¶¼';
COMMENT ON COLUMN doctors.gender IS '«Ê';
COMMENT ON COLUMN doctors.department_id IS '®fÃÈID';
COMMENT ON COLUMN doctors.salary IS '^';


fÃÈe[u
select * from departments
CREATE TABLE departments (
  department_id int PRIMARY KEY,
  department_name VARCHAR(255) NOT NULL,
  description VARCHAR(255) NOT NULL
);

COMMENT ON COLUMN departments.department_id IS 'fÃÈID';
COMMENT ON COLUMN departments.department_name IS 'fÃÈ¼';
COMMENT ON COLUMN departments.description IS 'fÃÈ`e';


fÃÊe[u,
select * from examinations
CREATE TABLE examinations (
  examination_id int PRIMARY KEY,
  patient_id INT NOT NULL,
  doctor_id INT NOT NULL,
  department_id INT NOT NULL,
  examination_date DATE NOT NULL,
  diagnosis VARCHAR(255) NOT NULL,
  treatment VARCHAR(255) NOT NULL
);


COMMENT ON COLUMN examinations.examination_id IS '¸ID';
COMMENT ON COLUMN examinations.patient_id IS '³ÒID';
COMMENT ON COLUMN examinations.doctor_id IS 'ãtID';
COMMENT ON COLUMN examinations.department_id IS '®ÈºID';
COMMENT ON COLUMN examinations.examination_date IS '¸ú';
COMMENT ON COLUMN examinations.diagnosis IS 'ff';
COMMENT ON COLUMN examinations.treatment IS '¡Ã';

