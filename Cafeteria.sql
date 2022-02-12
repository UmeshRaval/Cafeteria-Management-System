CREATE TABLE employee(
 eid INT PRIMARY KEY,
 f_name VARCHAR(100) NOT NULL,
 m_name VARCHAR(100) NOT NULL,
 l_name VARCHAR(100) NOT NULL,
 h_number INT NOT NULL,
 street VARCHAR(100) NOT NULL,
 city VARCHAR(100) NOT NULL,
 salary INT NOT NULL,
 gender CHAR(10),
 dob DATE NOT NULL,
 s_name VARCHAR(100) NOT NULL,
 s_id INT NOT NULL
);
INSERT INTO employee VALUES (101,'John','Claude','Van Damme',51,'5th Street','New York',7000,'Male','1996-12-02','Greg',103);

CREATE TABLE phone(
  eid INT references employee(eid),
  mobile_number BIGINT UNIQUE,
  home_number BIGINT
);
INSERT INTO phone VALUES (101,9004219147,1203489561);

CREATE TABLE customer(
  c_name VARCHAR(100) NOT NULL,
  c_id INT PRIMARY KEY,
  contact BIGINT NOT NULL,
  points INT
);
INSERT INTO customer VALUES ('Frank',246,9137630297,10);

CREATE TABLE bill(
  bill_number BIGINT PRIMARY KEY,
  amount INT NOT NULL,
  contact BIGINT,
  ca_id INT
);
INSERT INTO bill VALUES (5515185347,780,9137630297,101);

CREATE TABLE pays(
  bill_number BIGINT references bill(bill_number),
  c_id INT PRIMARY KEY
);
INSERT INTO pays VALUES (5515185347,246);