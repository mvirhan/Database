--****PLEASE ENTER YOUR DETAILS BELOW****
--T3-rm-dm.sql

--Student ID:32096771
--Student Name: Muhammad Virhan
--Unit Code:FIT9132
--Applied Class No:

/* Comments for your marker:




*/

--3(a)
DROP SEQUENCE comp_no_seq;

DROP SEQUENCE team_id_seq;

create sequence comp_no_seq
start with 100
increment by 1;

create sequence team_id_seq
start with 100
increment by 1;
commit;
--3(b)

INSERT INTO EMERCONTACT (
    ec_phone,
    ec_fname,
    ec_lname
) VALUES (
    '0476541234',
   'Jack',
   'Kai'
);

INSERT INTO COMPETITOR(
comp_no,
comp_fname,
comp_lname,
comp_gender,
comp_dob,
comp_email,
comp_unistatus,
comp_phone,
comp_ec_relationship,
ec_phone
)VALUES(
comp_no_seq.NEXTVAL,
'Daniel',
'kai',
'M',
to_date('20/09/1997', 'dd,mm,yyyy'),
'dkai@student.monash.edu',
'Y',
'0137223663',
'P',
(select ec_phone from emercontact where upper(ec_fname) = upper('jack') and upper(ec_lname) = upper('kai'))
);

INSERT INTO COMPETITOR(
comp_no,
comp_fname,
comp_lname,
comp_gender,
comp_dob,
comp_email,
comp_unistatus,
comp_phone,
comp_ec_relationship,
ec_phone
)VALUES(
comp_no_seq.NEXTVAL,
'Annabelle',
'Kai',
'F',
to_date('22/10/1998', 'dd,mm,yyyy'),
'akai@student.monash.edu',
'Y',
'0167223763',
'P',
(select ec_phone from emercontact where upper(ec_fname) = upper('jack') and upper(ec_lname) = upper('kai'))
);

insert into entry(
event_id,
entry_no,
entry_starttime,
entry_finishtime,
comp_no,
char_id,
team_id
)VALUES( (
    SELECT
        event_id
    FROM
        event
    WHERE
        eventtype_code = (
            SELECT
                eventtype_code
            FROM
                eventtype
            WHERE
                    upper(eventtype_desc) = upper('21.1 Km Half Marathon')
                AND to_char(carn_date, 'dd-mm-yyyy') = (
                    SELECT
                        to_char(carn_date, 'dd-mm-yyyy')
                    FROM
                        carnival
                    WHERE
                        upper(carn_name) = upper('RM Autumn Series Caulfield 2022')
                )
        )
), 50,
   NULL,
   NULL,
   (
       SELECT
           comp_no
       FROM
           competitor
       WHERE
               upper(comp_fname) = upper('Daniel')
           AND upper(comp_lname) = upper('Kai')
   ),
   (
       SELECT
           char_id
       FROM
           charity
       WHERE
           upper(char_name) = upper('Beyond Blue')
   ),
   NULL );
   
   insert into entry(
event_id,
entry_no,
entry_starttime,
entry_finishtime,
comp_no,
char_id,
team_id
)VALUES( (
    SELECT
        event_id
    FROM
        event
    WHERE
        eventtype_code = (
            SELECT
                eventtype_code
            FROM
                eventtype
            WHERE
                    upper(eventtype_desc) = upper('21.1 Km Half Marathon')
                AND to_char(carn_date, 'dd-mm-yyyy') = (
                    SELECT
                        to_char(carn_date, 'dd-mm-yyyy')
                    FROM
                        carnival
                    WHERE
                        upper(carn_name) = upper('RM Autumn Series Caulfield 2022')
                )
        )
), 51,
   NULL,
   NULL,
   (
       SELECT
           comp_no
       FROM
           competitor
       WHERE
               upper(comp_fname) = upper('Annabelle')
           AND upper(comp_lname) = upper('Kai')
   ),
   (
       SELECT
           char_id
       FROM
           charity
       WHERE
           upper(char_name) = upper('Amnesty International')
   ),
   NULL );
   commit;
--3(c)
select team_name from team where upper(team_name) = upper('Kai Speedstars'); 

insert into team(
team_id,
team_name,
carn_date,
team_no_member,
event_id,
entry_no,
char_id
)VALUES( team_id_seq.NEXTVAL,
'Kai Speedstars',
(
    SELECT
        to_date(carn_date, 'dd-mm-yyyy')
    FROM
        carnival
    WHERE
        upper(carn_name) = upper('RM Autumn Series Caulfield 2022')
), 1,
   (
       SELECT
           event_id
       FROM
           event
       WHERE
           eventtype_code = (
               SELECT
                   eventtype_code
               FROM
                   eventtype
               WHERE
                       upper(eventtype_desc) = upper('21.1 Km Half Marathon')
                   AND to_char(carn_date, 'dd-mm-yyyy') = (
                       SELECT
                           to_char(carn_date, 'dd-mm-yyyy')
                       FROM
                           carnival
                       WHERE
                           upper(carn_name) = upper('RM Autumn Series Caulfield 2022')
                   )
           )
   ),
   (
       SELECT
           entry_no
       FROM
           entry
       WHERE
           comp_no = (
               SELECT
                   comp_no
               FROM
                   competitor
               WHERE
                       upper(comp_fname) = upper('Annabelle')
                   AND upper(comp_lname) = upper('Kai')
           )
   ),
   (
       SELECT
           char_id
       FROM
           entry
       WHERE
           comp_no = (
               SELECT
                   comp_no
               FROM
                   competitor
               WHERE
                       upper(comp_fname) = upper('Annabelle')
                   AND upper(comp_lname) = upper('Kai')
           )
   ) );
commit;

--3(d)
update entry
set 
event_id = ((
       SELECT
           event_id
       FROM
           event
       WHERE
           eventtype_code = (
               SELECT
                   eventtype_code
               FROM
                   eventtype
               WHERE
                       upper(eventtype_desc) = upper('10 Km Run')
                   AND to_char(carn_date, 'dd-mm-yyyy') = (
                       SELECT
                           to_char(carn_date, 'dd-mm-yyyy')
                       FROM
                           carnival
                       WHERE
                           upper(carn_name) = upper('RM Autumn Series Caulfield 2022')
                   )
           )
   ))where
   comp_no = (SELECT
           comp_no
       FROM
           competitor
       WHERE
               upper(comp_fname) = upper('Daniel')
           AND upper(comp_lname) = upper('Kai'));
 commit;
--3(e)

delete entry
where comp_no = (select comp_no from entry where comp_no = (select comp_no from competitor where upper(comp_fname) = upper('Daniel') and upper(comp_lname) = upper('Kai')));


delete team
where upper(team_name) = upper('kai Speedstars');
commit;


