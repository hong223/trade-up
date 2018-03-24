DROP TABLE IF EXISTS `employee`;
DROP TABLE IF EXISTS `project`;
DROP TABLE IF EXISTS `available_day`;
DROP TABLE IF EXISTS `non_productive_day`;
DROP TABLE IF EXISTS `employee_ad`;
DROP TABLE IF EXISTS `employee_normal_work_days`;
DROP TABLE IF EXISTS `project_npd`;
DROP TABLE IF EXISTS `public_holiday`;


CREATE TABLE employee (
  employee_id   INT NOT NULL AUTO_INCREMENT,
  employee_name text,
  country    text,
  PRIMARY KEY (employee_id)
);
CREATE TABLE project(
  project_id    INT NOT NULL AUTO_INCREMENT,
  name          text,
  state         VARCHAR(100),
  PRIMARY KEY (project_id)
);

CREATE TABLE available_day(
  ad_id        INT NOT NULL AUTO_INCREMENT,
  day         DATE,
  PRIMARY KEY (ad_id)
);

CREATE TABLE non_productive_day(
  npd_id        INT NOT NULL AUTO_INCREMENT,
  title         text,
  start_day         DATE,
  end_day           DATE,
  category      text,
  details       VARCHAR(10000),
  PRIMARY KEY (npd_id)
);

#employee seperated define available day
CREATE TABLE employee_ad (
  employee_ad_id INT NOT NULL AUTO_INCREMENT,
  employee_id     INT NOT NULL,
  ad_id          INT NOT NULL,
  PRIMARY KEY (employee_ad_id),
  FOREIGN KEY (employee_id) REFERENCES employee (employee_id),
  FOREIGN KEY (ad_id) REFERENCES available_day (ad_id) on delete cascade
);

#used for repeat every mon/tue/wed/thu/fri/sat/sun
CREATE TABLE employee_normal_work_days (
  employee_id   INT NOT NULL,
  monday        BOOLEAN DEFAULT TRUE,
  tuesday       BOOLEAN DEFAULT TRUE,
  wednesday     BOOLEAN DEFAULT TRUE,
  thursday      BOOLEAN DEFAULT TRUE,
  friday        BOOLEAN DEFAULT TRUE,
  saturday      BOOLEAN DEFAULT FALSE,
  sunday        BOOLEAN DEFAULT FALSE,
  PRIMARY KEY (employee_id),
  FOREIGN KEY (employee_id) REFERENCES employee (employee_id)
);

#could be public holiday or project self define non working day
CREATE TABLE project_npd (
  project_npd_id  INT NOT NULL AUTO_INCREMENT,
  project_id      INT NOT NULL,
  npd_id          INT NOT NULL,
  PRIMARY KEY (project_npd_id),
  FOREIGN KEY (project_id) REFERENCES project (project_id),
  FOREIGN KEY (npd_id) REFERENCES non_productive_day (npd_id) on delete cascade
);

CREATE TABLE public_holiday(
  id    BIGINT NOT NULL AUTO_INCREMENT,
  name              text,
  start_day         DATE,
  end_day           DATE,
  country           text,
  region            text,
  description       text,
  PRIMARY KEY (id)
);


