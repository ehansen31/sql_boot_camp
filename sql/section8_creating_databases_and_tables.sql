CREATE TABLE account(
	user_id serial PRIMARY KEY,
	username VARCHAR(50) UNIQUE NOT NULL,
	password VARCHAR(50) NOT NULL,
	email VARCHAR(355) UNIQUE NOT NULL,
	created_on TIMESTAMP NOT NULL,
	last_login TIMESTAMP
);

CREATE TABLE role(
	role_id serial PRIMARY KEY,
	role_name VARCHAR(255) UNIQUE NOT NULL
);

CREATE TABLE account_role(
	user_id integer NOT NULL,
	role_id integer NOT NULL,
	grant_date timestamp without time zone,
	PRIMARY KEY(user_id, role_id),
	
  CONSTRAINT account_role_role_id_fkey FOREIGN KEY (role_id)
      REFERENCES role (role_id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT account_role_user_id_fkey FOREIGN KEY (user_id)
      REFERENCES account (user_id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
);

CREATE TABLE leads(
	id bigserial PRIMARY KEY,
	first_name VARCHAR(255),
	last_name VARCHAR(255),
	email VARCHAR(255) UNIQUE NOT NULL,
	engagement_minutes BIGINT
);

CREATE TABLE link(
	ID serial PRIMARY KEY,
	url VARCHAR(255) NOT NULL,
	name VARCHAR(255) NOT NULL,
	description VARCHAR(255),
	rel VARCHAR(50)
);

INSERT INTO link(url,name)
VALUES('www.google.com', 'Google');

SELECT * FROM link;

INSERT INTO link(url,name)
VALUES('www.amazon.com', 'Amazon'), ('www.bing.com','Bing');

UPDATE link
SET name='Gargle'
WHERE id =1;

DELETE FROM link
WHERE name ILike('b%');

DROP TABLE IF EXISTS link;

CREATE TABLE LINK(
link_id serial PRIMARY KEY,
title VARCHAR(513) NOT NULL,
url VARCHAR(1024) NOT NULL UNIQUE);

ALTER TABLE link DROP COLUMN active;

ALTER TABLE link RENAME title TO new_title_name;

CREATE TABLE test_two(
	id bigserial PRIMARY KEY
);

DROP TABLE test_two;

CREATE TABLE new_users(
id serial PRIMARY KEY,
first_name VARCHAR(50),
birth_date DATE CHECK(birth_date > '1900-01-01'),
join_date DATE CHECK(join_date > birth_date),
salary integer CHECK(salary>0)
);




































































































































































