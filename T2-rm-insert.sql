--****PLEASE ENTER YOUR DETAILS BELOW****
--T2-rm-insert.sql

--Student ID: 32096771
--Student Name: Muhammad Virhan
--Unit Code:FIT9132
--Applied Class No:

/* Comments for your marker:




*/

-- Task 2 Load the EMERCONTACT, COMPETITOR, ENTRY and TEAM tables with your own
-- test data following the data requirements expressed in the brief

-- =======================================
-- EMERCONTACT
-- =======================================
INSERT INTO emercontact (
    ec_phone,
    ec_fname,
    ec_lname
) VALUES (
    '1234567898',
    'Muhammad',
    'Virhan'
);

INSERT INTO emercontact (
    ec_phone,
    ec_fname,
    ec_lname
) VALUES (
    '2345678912',
    'James',
    'Cordon'
);

INSERT INTO emercontact (
    ec_phone,
    ec_fname,
    ec_lname
) VALUES (
    '3456789123',
    'Charlie',
    'Jepsen'
);

INSERT INTO emercontact (
    ec_phone,
    ec_fname,
    ec_lname
) VALUES (
    '4567891234',
    'Richard',
    'Hammond'
);

INSERT INTO emercontact (
    ec_phone,
    ec_fname,
    ec_lname
) VALUES (
    '5678912345',
    'Jeremy',
    'Clarkson'
);

COMMIT;


-- =======================================
-- COMPETITOR
-- =======================================
INSERT INTO competitor (
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
) VALUES (
    '1',
    'Willa',
    'Estrada',
    'F',
    TO_DATE('07/11/1992', 'dd mm yyyy'),
    'wilest@monash.edu',
    'Y',
    '0143322330',
    'F',
    '3456789123'
);

INSERT INTO competitor (
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
) VALUES (
    '2',
    'Troy',
    'Giles',
    'F',
    TO_DATE('26/04/1992', 'dd mm yyyy'),
    'tgiles@monash.edu',
    'Y',
    '0149823905',
    'F',
    '3456789123'
);

INSERT INTO competitor (
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
) VALUES (
    '3',
    'Darin',
    'Holden',
    'F',
    TO_DATE('17/05/1992', 'dd mm yyyy'),
    'dholden@gmail.com',
    'N',
    '0167283454',
    'F',
    '3456789123'
);


INSERT INTO competitor (
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
) VALUES (
    '4',
    'Darin',
    'Gates',
    'U',
    TO_DATE('07/04/2007', 'dd mm yyyy'),
    'cargates@gmail.com',
    'N',
    '0167283455',
    'P',
    '4567891234'
);

INSERT INTO competitor (
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
) VALUES (
    '5',
    'Emaanuel',
    'Whyte',
    'F',
    TO_DATE('28/06/1998', 'dd mm yyyy'),
    'whyte@monash.edu',
    'Y',
    '0167283456',
    'P',
    '4567891234'
);

INSERT INTO competitor (
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
) VALUES (
    '6',
    'Alexander',
    'Steven',
    'M',
    TO_DATE('29/06/1998', 'dd mm yyyy'),
    'steven@student.monash.edu',
    'Y',
    '0167283457',
    'F',
    '4567891234'
);

INSERT INTO competitor (
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
) VALUES (
    '7',
    'Raisa',
    'Aurora',
    'F',
    TO_DATE('14/11/1991', 'dd mm yyyy'),
    'aurora@student.monash.edu',
    'Y',
    '0167283458',
    'F',
    '5678912345'
);

INSERT INTO competitor (
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
) VALUES (
    '8',
    'Shejuti',
    'Shabnam',
    'F',
    TO_DATE('07/02/2007', 'dd mm yyyy'),
    'shej@monash.edu',
    'Y',
    '0167283459',
    'G',
    '5678912345'
);

INSERT INTO competitor (
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
) VALUES (
    '9',
    'Stanley',
    'Snider',
    'F',
    TO_DATE('06/10/2006', 'dd mm yyyy'),
    'snider@monash.edu',
    'Y',
    '0167283460',
    'G',
    '5678912345'
);

INSERT INTO competitor (
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
) VALUES (
    '10',
    'Clarke',
    'Dickens',
    'M',
    TO_DATE('07/08/1994', 'dd mm yyyy'),
    'cdickens@monash.edu',
    'Y',
    '0167283461',
    'F',
    '1234567898'
);

INSERT INTO competitor (
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
) VALUES (
    '11',
    'Woody',
    'Kaiser',
    'M',
    TO_DATE('07/06/1994', 'dd mm yyyy'),
    'woodykaiser@gmail.com',
    'N',
    '0167283462',
    'F',
    '1234567898'
);

INSERT INTO competitor (
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
) VALUES (
    '12',
    'Stella',
    'Dunkans',
    'F',
    TO_DATE('16/09/1996', 'dd mm yyyy'),
    'dunkans@student.monash.edu',
    'Y',
    '0167283463',
    'F',
    '1234567898'
);

INSERT INTO competitor (
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
) VALUES (
    '13',
    'Kie',
    'Gonzales',
    'F',
    TO_DATE('16/12/1996', 'dd mm yyyy'),
    'gonzales@student.monash.edu',
    'Y',
    '0167283464',
    'P',
    '2345678912'
);

INSERT INTO competitor (
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
) VALUES (
    '14',
    'Bart',
    'Simpsons',
    'M',
    TO_DATE('19/11/1993', 'dd mm yyyy'),
    'bsimpsons@monash.edu',
    'Y',
    '0167283465',
    'F',
    '2345678912'
);

INSERT INTO competitor (
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
) VALUES (
    '15',
    'Homer',
    'Simpsons',
    'M',
    TO_DATE('18/09/1991', ''dd mm yyyy''),
    'homers@monash.edu',
    'Y',
    '0167283466',
    'F',
    '2345678912'
);

COMMIT;

-- =======================================
-- ENTRY
-- =======================================

insert into entry(
event_id,
entry_no,
entry_starttime,
entry_finishtime,
comp_no,
char_id,
team_id
)VALUES(
,
0,
to_date('09:30', 'hh:mi'),
to_date('10:00', 'hh:mi'),
1,
1,
NULL
);


insert into entry(
event_id,
entry_no,
entry_starttime,
entry_finishtime,
comp_no,
char_id,
team_id
)VALUES(
2,
21,
to_date('08:30', 'hh:mi'),
to_date('10:00', 'hh:mi'),
2,
1,
NULL
);


insert into entry(
event_id,
entry_no,
entry_starttime,
entry_finishtime,
comp_no,
char_id,
team_id
)VALUES(
,
22,
to_date('09:00', 'hh:mi'),
to_date('10:30', 'hh:mi'),
3,
1,
NULL
);


insert into entry(
event_id,
entry_no,
entry_starttime,
entry_finishtime,
comp_no,
char_id,
team_id
)VALUES(
,
23,
to_date('09:00', 'hh:mi'),
to_date('10:30', 'hh:mi'),
4,
1,
NULL
);


insert into entry(
event_id,
entry_no,
entry_starttime,
entry_finishtime,
comp_no,
char_id,
team_id
)VALUES(
,
24,
to_date('08:00', 'hh:mi'),
to_date('12:00', 'hh:mi'),
5,
1,
NULL
);


insert into entry(
event_id,
entry_no,
entry_starttime,
entry_finishtime,
comp_no,
char_id,
team_id
)VALUES(
,
25,
to_date('09:00', 'hh:mi'),
to_date('10:45', 'hh:mi'),
6,
1,
NULL
);


insert into entry(
event_id,
entry_no,
entry_starttime,
entry_finishtime,
comp_no,
char_id,
team_id
)VALUES(
,
26,
to_date('09:00', 'hh:mi'),
to_date('10:00', 'hh:mi'),
7,
2,
NULL
);


insert into entry(
event_id,
entry_no,
entry_starttime,
entry_finishtime,
comp_no,
char_id,
team_id
)VALUES(
,
27,
to_date('08:00', 'hh:mi'),
to_date('09:00', 'hh:mi'),
8,
2,
NULL
);


insert into entry(
event_id,
entry_no,
entry_starttime,
entry_finishtime,
comp_no,
char_id,
team_id
)VALUES(
,
28,
to_date('08:00', 'hh:mi'),
to_date('12:00', 'hh:mi'),
9,
2,
NULL
);

insert into entry(
event_id,
entry_no,
entry_starttime,
entry_finishtime,
comp_no,
char_id,
team_id
)VALUES(
,
29,
to_date('09:00', 'hh:mi'),
to_date('11:00', 'hh:mi'),
10,
2,
NULL
);


insert into entry(
event_id,
entry_no,
entry_starttime,
entry_finishtime,
comp_no,
char_id,
team_id
)VALUES(
,
30,
to_date('06:00', 'hh:mi'),
to_date('1:00', 'hh:mi'),
11,
2,
NULL
);

insert into entry(
event_id,
entry_no,
entry_starttime,
entry_finishtime,
comp_no,
char_id,
team_id
)VALUES(
,
31,
to_date('08:45', 'hh:mi'),
to_date('10:00', 'hh:mi'),
12,
2,
NULL
);


insert into entry(
event_id,
entry_no,
entry_starttime,
entry_finishtime,
comp_no,
char_id,
team_id
)VALUES(
,
32,
to_date('08:30', 'hh:mi'),
to_date('12:00', 'hh:mi'),
13,
3,
NULL
);


insert into entry(
event_id,
entry_no,
entry_starttime,
entry_finishtime,
comp_no,
char_id,
team_id
)VALUES(
,
33,
to_date('08:15', 'hh:mi'),
to_date('10:00', 'hh:mi'),
14,
3,
NULL
);


insert into entry(
event_id,
entry_no,
entry_starttime,
entry_finishtime,
comp_no,
char_id,
team_id
)VALUES(
3,
34,
to_date('09:00', 'hh:mi'),
to_date('10:00', 'hh:mi'),
,
3,
NULL
);
INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no,
    char_id,
    team_id
) VALUES (
    3,
    35,
    TO_DATE('09:00', 'hh:mi'),
    TO_DATE('10:45', 'hh:mi'),
    1,
    3,
    NULL
);

INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no,
    char_id,
    team_id
) VALUES (
    3,
    36,
    TO_DATE('09:00', 'hh:mi'),
    TO_DATE('10:00', 'hh:mi'),
    2,
    3,
    NULL
);

INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no,
    char_id,
    team_id
) VALUES (
    5,
    37,
    TO_DATE('08:00', 'hh:mi'),
    TO_DATE('10:00', 'hh:mi'),
    3,
    3,
    NULL
);

INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no,
    char_id,
    team_id
) VALUES (
    5,
    38,
    TO_DATE('08:00', 'hh:mi'),
    TO_DATE('11:00', 'hh:mi'),
    4,
    4,
    NULL
);

INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no,
    char_id,
    team_id
) VALUES (
    3,
    39,
    TO_DATE('09:00', 'hh:mi'),
    TO_DATE('10:00', 'hh:mi'),
    5,
    4,
    NULL
);

INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no,
    char_id,
    team_id
) VALUES (
    3,
    40,
    TO_DATE('09:00', 'hh:mi'),
    TO_DATE('10:00', 'hh:mi'),
    6,
    4,
    NULL
);

INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no,
    char_id,
    team_id
) VALUES (
    9,
    41,
    TO_DATE('08:00', 'hh:mi'),
    TO_DATE('11:00', 'hh:mi'),
    1,
    4,
    NULL
);

INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no,
    char_id,
    team_id
) VALUES (
    9,
    42,
    TO_DATE('08:00', 'hh:mi'),
    TO_DATE('11:45', 'hh:mi'),
    2,
    4,
    NULL
);

INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no,
    char_id,
    team_id
) VALUES (
    9,
    43,
    TO_DATE('08:00', 'hh:mi'),
    TO_DATE('11:00', 'hh:mi'),
    3,
    4,
    NULL
);

INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no,
    char_id,
    team_id
) VALUES (
    9,
    44,
    TO_DATE('08:00', 'hh:mi'),
    TO_DATE('11:00', 'hh:mi'),
    4,
    1,
    NULL
);

INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no,
    char_id,
    team_id
) VALUES (
    10,
    45,
    TO_DATE('08:00', 'hh:mi'),
    TO_DATE('09:30', 'hh:mi'),
    5,
    2,
    NULL
);

INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no,
    char_id,
    team_id
) VALUES (
    10,
    46,
    TO_DATE('08:00', 'hh:mi'),
    TO_DATE('09:30', 'hh:mi'),
    6,
    3,
    NULL
);

INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no,
    char_id,
    team_id
) VALUES (
    12,
    47,
    TO_DATE('08:00', 'hh:mi'),
    TO_DATE('10:00', 'hh:mi'),
    11,
    3,
    NULL
);

INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no,
    char_id,
    team_id
) VALUES (
    13,
    48,
    NULL,
    NULL,
    12,
    3,
    NULL
);

INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no,
    char_id,
    team_id
) VALUES (
    12,
    49,
    NULL,
    NULL,
    12,
    3,
    NULL
);

COMMIT;

-- =======================================
-- TEAM
-- =======================================

INSERT INTO team (
    team_id,
    team_name,
    carn_date,
    team_no_member,
    event_id,
    entry_no,
    char_id
) VALUES (
    1,
    'the interceptor',
    to_date('24/09/2021', 'dd mm yyyy'),
    3,
    3,
    22,
    1
);

INSERT INTO team (
    team_id,
    team_name,
    carn_date,
    team_no_member,
    event_id,
    entry_no,
    char_id
) VALUES (
    2,
    'the interceptor',
    to_date('1/10/2021', 'dd mm yyyy'),
    3,
    5,
    24,
    1
);

INSERT INTO team (
    team_id,
    team_name,
    carn_date,
    team_no_member,
    event_id,
    entry_no,
    char_id
) VALUES (
    3,
    'thunderstorm',
    to_date('29/05/2022', 'dd mm yyyy'),
    2,
    6,
    25,
    1
);

INSERT INTO team (
    team_id,
    team_name,
    carn_date,
    team_no_member,
    event_id,
    entry_no,
    char_id
) VALUES (
    4,
    'thunderbird',
    to_date('14/03/2022', 'dd mm yyyy'),
    4,
    7,
    26,
    2
);

INSERT INTO team (
    team_id,
    team_name,
    carn_date,
    team_no_member,
    event_id,
    entry_no,
    char_id
) VALUES (
    5,
    'go monash',
    to_date('05/02/2022','dd mm yyyy'),
    3,
    8,
    27,
    2
);

COMMIT;




