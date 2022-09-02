--****PLEASE ENTER YOUR DETAILS BELOW****
--T2-rm-insert.sql

--Student ID: 32096771
--Student Name: Muhammad Virhan
--Unit Code: FIT9132
--Applied Class No: 

/* Comments for your marker:




*/

DROP TABLE competitor CASCADE CONSTRAINTS;

DROP TABLE emercontact CASCADE CONSTRAINTS;

DROP TABLE team CASCADE CONSTRAINTS;

DROP TABLE entry CASCADE CONSTRAINTS;

-- Task 2 Load the EMERCONTACT, COMPETITOR, ENTRY and TEAM tables with your own
-- test data following the data requirements expressed in the brief

-- =======================================
-- EMERCONTACT
-- =======================================
CREATE TABLE emercontact (
    ec_phone CHAR(10) NOT NULL,
    ec_fname VARCHAR2(30),
    ec_lname VARCHAR2(30)
);

COMMENT ON COLUMN emercontact.ec_phone IS
    'Emergency contact’s phone number (unique identifier)';

COMMENT ON COLUMN emercontact.ec_fname IS
    'Emergency contact’s first name';

COMMENT ON COLUMN emercontact.ec_lname IS
    'Emergency contact’s last name';

ALTER TABLE emercontact ADD CONSTRAINT emercontact_pk PRIMARY KEY ( ec_phone );

COMMIT;
-- =======================================
-- COMPETITOR
-- =======================================
CREATE TABLE competitor (
    comp_no              NUMBER(5) NOT NULL,
    comp_fname           VARCHAR2(30),
    comp_lname           VARCHAR2(30),
    comp_gender          CHAR(1) NOT NULL,
    comp_dob             DATE NOT NULL,
    comp_email           VARCHAR2(50) NOT NULL,
    comp_unistatus       CHAR(1) NOT NULL,
    comp_phone           CHAR(10) NOT NULL,
    comp_ec_relationship CHAR(1) NOT NULL,
    ec_phone             CHAR(10) NOT NULL
);

ALTER TABLE competitor ADD CONSTRAINT competitor_pk PRIMARY KEY ( comp_no );


ALTER TABLE competitor
    ADD CONSTRAINT chk_comp_gender CHECK ( comp_gender IN ( 'M', 'F', 'U' ) );

ALTER TABLE competitor
    ADD CONSTRAINT chk_comp_unistatus CHECK ( comp_unistatus IN ( 'Y', 'N' ) );

ALTER TABLE competitor
    ADD CONSTRAINT chk_comp_ec_relationship CHECK ( comp_ec_relationship IN ( 'P', 'G',
    'T', 'F' ) );

COMMIT;

COMMENT ON COLUMN competitor.comp_no IS
    'Unique identifier for a competitor';

COMMENT ON COLUMN competitor.comp_fname IS
    'Competitor’s first name';

COMMENT ON COLUMN competitor.comp_lname IS
    'Competitor’s last name';

COMMENT ON COLUMN competitor.comp_gender IS
    'Competitor’s gender (‘M’ for male, ‘F’ for female, or ‘U’ for
‘Undisclosed’)';

COMMENT ON COLUMN competitor.comp_dob IS
    'Competitor’s date of birth';

COMMENT ON COLUMN competitor.comp_email IS
    'Competitor’s email';

COMMENT ON COLUMN competitor.comp_unistatus IS
    'Competitor’s university student/staff status (Y for Yes or N
for No)';

COMMENT ON COLUMN competitor.comp_phone IS
    'Competitor’s phone number';

COMMENT ON COLUMN competitor.comp_ec_relationship IS
    'Emergency contact relationship to competitor (‘P’ for
Parent, ‘G’ for Guardian, ‘T’ for Partner, or ‘F’ for Friend)
';

-- =======================================
-- ENTRY
-- =======================================
CREATE TABLE entry (
    event_id         NUMBER(6) NOT NULL,
    entry_no         NUMBER(5) NOT NULL,
    entry_starttime  DATE,
    entry_finishtime DATE,
    comp_no          NUMBER(5) NOT NULL,
    char_id          NUMBER(3),
    team_id          NUMBER(3)
);

ALTER TABLE entry ADD CONSTRAINT entry_pk PRIMARY KEY ( event_id,
                                                        entry_no );


COMMENT ON COLUMN entry.entry_no IS
    'Entry number (unique for each event)';

COMMENT ON COLUMN entry.entry_starttime IS
    'The entrant start time';

COMMENT ON COLUMN entry.entry_finishtime IS
    'The entrant finish time';    
-- =======================================
-- TEAM
-- =======================================
CREATE TABLE team (
    team_id        NUMBER(3) NOT NULL,
    team_name      VARCHAR2(30) NOT NULL,
    carn_date      DATE NOT NULL,
    team_no_member NUMBER(2) NOT NULL,
    event_id       NUMBER(6) NOT NULL,
    entry_no       NUMBER(5) NOT NULL,
    char_id        NUMBER(3)
);

ALTER TABLE team ADD CONSTRAINT team_pk PRIMARY KEY ( team_id );

ALTER TABLE team ADD CONSTRAINT team_nk UNIQUE ( team_name,
                                                 carn_date );


COMMENT ON COLUMN team.team_id IS
    'Entry number (unique for each event)';

COMMENT ON COLUMN team.team_name IS
    'Team name';

COMMENT ON COLUMN team.team_no_member IS
    'Number of team members';

COMMIT;

-- Add all missing FK Constraints below here


ALTER TABLE competitor
    ADD CONSTRAINT emercontact_competitor FOREIGN KEY ( ec_phone )
        REFERENCES emercontact ( ec_phone );
        commit;

ALTER TABLE entry
    ADD CONSTRAINT event_entry FOREIGN KEY ( event_id )
        REFERENCES event ( event_id );

ALTER TABLE entry
    ADD CONSTRAINT competitor_entry FOREIGN KEY ( comp_no )
        REFERENCES competitor ( comp_no );

ALTER TABLE entry
    ADD CONSTRAINT charity_entry FOREIGN KEY ( char_id )
        REFERENCES charity ( char_id );

ALTER TABLE entry
    ADD CONSTRAINT team_entry FOREIGN KEY ( team_id )
        REFERENCES team ( team_id );

COMMIT;

ALTER TABLE team
    ADD CONSTRAINT carnival_team FOREIGN KEY ( carn_date )
        REFERENCES carnival ( carn_date );

ALTER TABLE team
    ADD CONSTRAINT carnival_team FOREIGN KEY ( carn_date )
        REFERENCES carnival ( carn_date );

ALTER TABLE team
    ADD CONSTRAINT entry_team FOREIGN KEY ( event_id,
                                            entry_no )
        REFERENCES entry ( event_id,
                           entry_no );

ALTER TABLE team
    ADD CONSTRAINT charity_team FOREIGN KEY ( char_id )
        REFERENCES charity ( char_id );
        commit;