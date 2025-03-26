--Constraints
--Creating a table with NOT NULL constraint: XXNYB_CONSTRAINTS_TEST
--NOT NULL

CREATE TABLE xxnyb_constraints_test (
    sno             NUMBER,
    constraint_name VARCHAR2(50) NOT NULL,
    comments        VARCHAR2(500)
);

INSERT INTO xxnyb_constraints_test VALUES ( 1,
                                            'Not Null',
                                            'It should not allow NULL values' );
commit;


INSERT INTO xxnyb_constraints_test (
    sno,
    comments
) VALUES ( 2,
           'No comments' );
           
           
--UNIQUE
--Add UNIQUE constraint on sno column from XXNYB_CONSTRAINTS_TEST

ALTER TABLE XXNYB_CONSTRAINTS_TEST
MODIFY sno number UNIQUE;

desc XXNYB_CONSTRAINTS_TEST;

INSERT INTO xxnyb_constraints_test VALUES ( 2,
                                            'Unique',
                                            'It wont allow Duplicate values' );
                                            
select * from XXNYB_CONSTRAINTS_TEST; 

INSERT INTO xxnyb_constraints_test VALUES ( 2,
                                            'Duplicate Unique',
                                            'No Comments' );
                                            
ROLLBACK;                                            
                                            
ALTER TABLE XXNYB_CONSTRAINTS_TEST
DROP constraint SYS_C008486;


--PRIMARY KEY
--Create Primary Key constraint on SNO column: XXNYB_CONSTRAINTS_TEST

ALTER TABLE xxnyb_constraints_test ADD CONSTRAINT sno_pk PRIMARY KEY ( sno );