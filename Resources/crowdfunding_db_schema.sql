CREATE TABLE category (
	category_id varchar(10) not null,
	category varchar(20) not null,
	primary key (category_id)
);

CREATE TABLE subcategory (
	subcategory_id varchar(10) not null,
	subcategory varchar(30) not null,
	primary key (subcategory_id)
);

CREATE TABLE contacts (
	contact_id int not null,
	first_name varchar(30) not null,
	last_name varchar(30) not null,
	email varchar(50) not null,
	primary key (contact_id)
);

CREATE TABLE campaign (
	cf_id int not null,
	contact_id int not null,
	company_name varchar(60) not null,
	description varchar(100) not null,
	goal DOUBLE PRECISION not null,
	pledged DOUBLE PRECISION not null,
	outcome varchar(50) not null,
	backers_count int not null,
	country varchar(50) not null,
	currency varchar(50) not null,
	launched_date date not null,
	end_date date not null,
	category_id varchar(10) not null,
	subcategory_id varchar(10) not null,
	primary key (contact_id),
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id),
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id)
);

Select * from category;
Select * from subcategory;
Select * from contacts;
Select * from campaign;


