CREATE TABLE employee (
  employee_id   INT NOT NULL AUTO_INCREMENT,
  employee_name VARCHAR(1000),
  PRIMARY KEY (employee_id)
);
CREATE TABLE project(
  project_id    INT NOT NULL AUTO_INCREMENT,
  name          VARCHAR(1000),
  country    VARCHAR(1000),
  state         VARCHAR(100),
  PRIMARY KEY (project_id)
);

CREATE TABLE non_productive_day(
  npd_id        INT NOT NULL AUTO_INCREMENT,
  title         VARCHAR(1000),
  start         DATE,
  end           DATE,
  reason      VARCHAR(1000),
  PRIMARY KEY (npd_id)
);

#employee seperated define unavailable day
CREATE TABLE employee_npd (
  employee_npd_id INT NOT NULL AUTO_INCREMENT,
  employee_id     INT NOT NULL,
  npd_id          INT NOT NULL,
  PRIMARY KEY (employee_npd_id),
  FOREIGN KEY (employee_id) REFERENCES employee (employee_id),
  FOREIGN KEY (npd_id) REFERENCES non_productive_day (npd_id) on delete cascade
);

#used for repeat every mon/tue/wed/thu/fri/sat/sun
CREATE TABLE employee_normal_unavailable_days (
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

CREATE TABLE public_holiday(
  id    BIGINT NOT NULL AUTO_INCREMENT,
  name			VARCHAR(1000),
  start         DATE,
  end           DATE,
  country		VARCHAR(1000),
  region		VARCHAR(1000),
  PRIMARY KEY (id)
);

#public holiday of project
CREATE TABLE project_npd (
  project_npd_id  BIGINT NOT NULL AUTO_INCREMENT,
  project_id      INT NOT NULL,
  id          BIGINT NOT NULL,
  PRIMARY KEY (project_npd_id),
  FOREIGN KEY (project_id) REFERENCES project (project_id),
  FOREIGN KEY (id) REFERENCES public_holiday (id)
);




