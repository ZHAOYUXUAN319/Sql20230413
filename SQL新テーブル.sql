患者テーブル

CREATE TABLE patients (
  patient_id int PRIMARY KEY,
  patient_name VARCHAR(255) NOT NULL,
  gender VARCHAR(10) NOT NULL,
  date_of_birth VARCHAR(10) NOT NULL,
  address VARCHAR(255) NOT NULL,
  phone_number VARCHAR(20) NOT NULL
);

COMMENT ON COLUMN patients.patient_id IS '患者 ID';
COMMENT ON COLUMN patients.patient_name IS '患者名';
COMMENT ON COLUMN patients.gender IS '性?';
COMMENT ON COLUMN patients.date_of_birth IS '生年月日';
COMMENT ON COLUMN patients.address IS '住所';
COMMENT ON COLUMN patients.phone_number IS '電話番号';


医師テーブル

CREATE TABLE doctors (
  doctor_id int PRIMARY KEY,
  doctor_name VARCHAR(255) NOT NULL,
  gender VARCHAR(10) NOT NULL,
  department_id INT NOT NULL,
  salary INT NOT NULL
);

COMMENT ON COLUMN doctors.doctor_id IS '医生ID';
COMMENT ON COLUMN doctors.doctor_name IS '医生名';
COMMENT ON COLUMN doctors.gender IS '性別';
COMMENT ON COLUMN doctors.department_id IS '所属診療科ID';
COMMENT ON COLUMN doctors.salary IS '給与';


診療科テーブル
select * from departments
CREATE TABLE departments (
  department_id int PRIMARY KEY,
  department_name VARCHAR(255) NOT NULL,
  description VARCHAR(255) NOT NULL
);

COMMENT ON COLUMN departments.department_id IS '診療科ID';
COMMENT ON COLUMN departments.department_name IS '診療科名';
COMMENT ON COLUMN departments.description IS '診療科形容';


診療結果テーブル,次数
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


COMMENT ON COLUMN examinations.examination_id IS '検査ID';
COMMENT ON COLUMN examinations.patient_id IS '患者ID';
COMMENT ON COLUMN examinations.doctor_id IS '医師ID';
COMMENT ON COLUMN examinations.department_id IS '所属科室ID';
COMMENT ON COLUMN examinations.examination_date IS '検査日';
COMMENT ON COLUMN examinations.diagnosis IS '診断';
COMMENT ON COLUMN examinations.treatment IS '治療';

