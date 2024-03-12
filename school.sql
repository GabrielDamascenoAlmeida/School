create database  school;
use school;

create table student(
id int primary key auto_increment,
fullname varchar(100), 
age int, 
tel_responsible varchar (11),
cpf char (11),
foreign key (id_course) references course(id),

);

create table teacher(
id int primary key auto_increment,
nm_teacher varchar (100),
tel varchar (11),
cpf char (11)
);

create table class_room(
id int primary key auto_increment,
room_number int (2),
number_students int (40)
);

create table period(
id int primary key auto_increment,
nm_period varchar(10),
start_period time,
end_period time 
);

create table course(
id int primary key auto_increment,


id_studant int,
id_teacher int,
id_class int,
id_period int,
foreign key (id_student) references student(id),
foreign key (id_teacher) references teacher(id),
foreign key (id_class) references class_room(id),
foreign key (id_period) references period(id)
); 


