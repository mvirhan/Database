--****PLEASE ENTER YOUR DETAILS BELOW****
--T4-rm-alter.sql

--Student ID: 32096771
--Student Name: Muhammad Virhan
--Unit Code: FIT9132
--Applied Class No:

/* Comments for your marker:




*/

--4(a)

ALTER TABLE entry ADD (
    elapsed_time NUMBER(4, 2)
);

COMMENT ON COLUMN entry.elapsed_time IS
    'finish time minus start time';

COMMIT;
--4(b)
           
--4(c)
DROP TABLE official CASCADE CONSTRAINTS;

create table official(
official_id NUMBER(4),
official_role VARCHAR2(50),
comp_no NUMBER(5)
);

COMMENT ON COLUMN official.official_id IS
    'unique identifier for official';
    
COMMENT ON COLUMN official.official_role IS
    'role name for official';
    
ALTER TABLE official ADD CONSTRAINT official_pk PRIMARY KEY ( official_id );

ALTER TABLE official
    ADD CONSTRAINT competitor_official FOREIGN KEY ( comp_no )
        REFERENCES competitor ( comp_no );
        
ALTER TABLE official ADD CONSTRAINT official_nk UNIQUE ( official_role, comp_no );

ALTER TABLE carnival ADD (
    official_id NUMBER(4)
);

ALTER TABLE official
    ADD CONSTRAINT official_carnival FOREIGN KEY ( official_id )
        REFERENCES official ( official_id );
commit;

        


    


    
