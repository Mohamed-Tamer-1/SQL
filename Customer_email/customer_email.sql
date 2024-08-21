DROP TABLE IF EXISTS customer_emails;
CREATE TABLE customer_emails (
    customer_id int IDENTITY,
    email_address VARCHAR(50)
);

ALTER TABLE customer_emails ADD domain_name text;

INSERT INTO customer_emails (email_address, domain_name)
VALUES ('mohamed@gmail.com','com'), ('youssef@gmail.eg','eg'), ('ahmed@gmail.org','org');

SELECT * FROM customer_emails;