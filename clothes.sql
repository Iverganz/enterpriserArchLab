CREATE DATABASE clothes
  WITH OWNER = postgres
       ENCODING = 'UTF8'
       TABLESPACE = pg_default
       LC_COLLATE = 'Russian_Russia.1251'
       LC_CTYPE = 'Russian_Russia.1251'
       CONNECTION LIMIT = -1;
CREATE TABLE Clothes
(
	id_clothes int  NOT NULL PRIMARY KEY,
	color varchar(20)  NULL ,
	size int  NULL CHECK (size>=38 and size<=70),
	id_type int  NULL ,
	id_sex int  NULL 
);


--ALTER TABLE Clothes
--	ADD CONSTRAINT XPKClothes PRIMARY KEY  CLUSTERED (id_clothes ASC)



CREATE TABLE Sex
(
	id_sex int  NOT NULL PRIMARY KEY,
	sex_name varchar(6)  NULL 
);


--ALTER TABLE Sex
--	ADD CONSTRAINT XPKSex PRIMARY KEY  CLUSTERED (id_sex ASC)



CREATE TABLE Type
(
	id_type int  NOT NULL primary key,
	type_name varchar(20)  NULL 
);
ALTER TABLE Clothes
	ADD CONSTRAINT  BrandType FOREIGN KEY (id_type) REFERENCES Type(id_type)
		ON DELETE CASCADE
		ON UPDATE CASCADE
;

ALTER TABLE Clothes
	ADD CONSTRAINT  SexClothes FOREIGN KEY (id_sex) REFERENCES Sex(id_sex)
		ON DELETE CASCADE
		ON UPDATE CASCADE
;