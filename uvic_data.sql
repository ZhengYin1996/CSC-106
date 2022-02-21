-- uvic_data.sql
--
-- Use the command '.read uvic_data.sql' in sqlite3 to import the
-- schema and data below.
--
-- Created by: I. Dufour - 11/20/2018

-- If the tables already exist, delete them --
drop table if exists students;
drop table if exists courses;
drop table if exists grades;
drop table if exists tuition;
drop table if exists grade_point;

-----------------------
-- Create the tables --
-----------------------

create table students( Vnum text,
                        first_name text,
                        last_name text,
                        major text);

create table courses( course_code text,
                        course_num integer,
                        unit real );

create table grades( Vnum text,
                        course_code text,
                        course_num integer,
                        grade integer,
                        letter_grade text);

create table tuition( course_code text,
                        price_per_unit);

create table grade_point (letter_grade text,
                        point integer);


---------------------------------
-- Insert data into each table --
---------------------------------
insert into students values('V00987', 'Justin', 'Bieber', 'Computer Science' );
insert into students values('V00135', 'Marshall', 'Mathers','Computer Science' );
insert into students values('V00258', 'Justin', 'Timberlake','Computer Science' );
insert into students values('V00451', 'Pamela', 'Anderson','Computer Science' );
insert into students values('V00922', 'Jenifer', 'Lopez','Computer Science' );
insert into students values('V00254', 'Jack', 'Johnson','Psychology' );
insert into students values('V00587', 'Michelle', 'Obama','Psychology' );
insert into students values('V00787', 'Oprah', 'Winfrey','Biology' );


insert into courses values('CSC', 105, 1.5);
insert into courses values('CSC', 106, 1.5);
insert into courses values('CSC', 110, 1.5);
insert into courses values('CSC', 115, 1.5);
insert into courses values('CSC', 225, 1.5);
insert into courses values('CSC', 230, 1.5);
insert into courses values('MATH', 100, 1.5);
insert into courses values('MATH', 101, 1.5);
insert into courses values('MATH', 122, 1.5);
insert into courses values('MATH', 211, 1.5);
insert into courses values('SENG', 265, 1.5);

insert into grades values('V00987', 'CSC', 106, 88, 'A');
insert into grades values('V00987', 'CSC', 110, 74, 'B');
insert into grades values('V00987', 'MATH', 100, 68, 'C+');
insert into grades values('V00987', 'MATH', 122, 82, 'A-');
insert into grades values('V00135', 'CSC', 225, 85, 'A');
insert into grades values('V00135', 'CSC', 230, 76, 'B');
insert into grades values('V00135', 'SENG', 265, 79, 'B+');
insert into grades values('V00135', 'MATH', 211, 86, 'A');
insert into grades values('V00135', 'MATH', 101, 92, 'A+');
insert into grades values('V00258', 'CSC', 225, 92, 'A+');
insert into grades values('V00258', 'CSC', 230, 81, 'A-');
insert into grades values('V00451', 'CSC', 225, 72, 'B-');
insert into grades values('V00451', 'CSC', 230, 87, 'A');
insert into grades values('V00922', 'CSC', 106, 92, 'A+');
insert into grades values('V00922', 'CSC', 115, 86, 'A');
insert into grades values('V00922', 'MATH', 211, 83, 'A-');
insert into grades values('V00922', 'MATH', 101, 78, 'B+');
insert into grades values('V00254', 'CSC', 106, 95, 'A+');
insert into grades values('V00254', 'MATH', 100, 92, 'A+');
insert into grades values('V00587', 'CSC', 106, 48, 'F');
insert into grades values('V00587', 'MATH', 100, 56, 'D');
insert into grades values('V00787', 'CSC', 106, 72, 'B-');
insert into grades values('V00787', 'CSC', 115, 76, 'B');
insert into grades values('V00787', 'MATH', 101, 79, 'B+');

insert into tuition values('MATH', 372.30);
insert into tuition values('CSC', 441.96);
insert into tuition values('SENG', 441.96);

insert into grade_point values('A+', 9);
insert into grade_point values('A', 8);
insert into grade_point values('A-', 7);
insert into grade_point values('B+', 6);
insert into grade_point values('B', 5);
insert into grade_point values('B-', 4);
insert into grade_point values('C+', 3);
insert into grade_point values('C', 2);
insert into grade_point values('D', 1);
insert into grade_point values('F', 0);


.mode column
.header on
