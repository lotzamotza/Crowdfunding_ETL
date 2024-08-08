CREATE TABLE contacts (
  contact_id INT PRIMARY KEY NOT NULL,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  email VARCHAR(50)
);

CREATE TABLE category (
  category_id VARCHAR(30) PRIMARY KEY NOT NULL,
  category VARCHAR(30) NOT NULL
);

CREATE TABLE subcategory (
  subcategory_id VARCHAR(30) PRIMARY KEY NOT NULL,
  subcategory VARCHAR(30) NOT NULL
);

CREATE TABLE crowdfunding (
  cf_id INT PRIMARY KEY NOT NULL,
  contact_id INT NOT NULL,
  FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
  company_name VARCHAR(75),
  blurb VARCHAR(75),
  goal INT,
  pledged INT,
  outcome VARCHAR(10),
  backers_count INT,
  country VARCHAR(2),
  currency VARCHAR(3),
  launched_at INT,
  deadline INT,
  staff_pick VARCHAR(5),
  spotlight VARCHAR(5),
  category VARCHAR(75),
  sub_category VARCHAR(75)
);

CREATE TABLE contact_info (
  contact_info INT,
  first_name VARCHAR(30),
  last_name VARCHAR(30),
  email VARCHAR(100)
);

CREATE TABLE campaign (
  cf_id INT PRIMARY KEY NOT NULL,
  contact_id INT NOT NULL,
  FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
  company_name VARCHAR(75),
  description VARCHAR(75),
  goal FLOAT,
  pledged FLOAT,
  outcome VARCHAR(75),
  backers_count FLOAT,
  country VARCHAR(2),
  currency VARCHAR(3),
  launched_date DATE,
  end_date DATE,
  category_id VARCHAR(30),
  FOREIGN KEY (category_id) REFERENCES category(category_id),
  subcat_id VARCHAR(75),
  FOREIGN KEY (subcat_id) REFERENCES subcategory(subcategory_id)
);


select * from contacts
select * from category
select * from subcategory
select * from campaign
select * from crowdfunding
select * from contact_info
