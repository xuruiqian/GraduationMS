use dbdemo;

create table courses (
   id VARCHAR(32) not null,
   cname VARCHAR(16),
   primary key (id)
);

create table stu_course (
   student_id VARCHAR(32) not null,
   course_id VARCHAR(32) not null,
   primary key (course_id, student_id)
);

create table students (
   id VARCHAR(32) not null,
   name VARCHAR(16),
   primary key (id)
);