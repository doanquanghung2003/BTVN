-- Bài 1.1

CREATE TABLE nhanvien(
	id INT,
	NAME VARCHAR(50),
	ngay_bat_dau DATETIME,
	so_chiec INT
);

INSERT INTO nhanvien (id, NAME , ngay_bat_dau , so_chiec) VALUES
	(1, 'hoang' , '2007-01-24' , 250),
	(2, 'nam' , '2007-05-27', 220),
	(3, 'viet' , '2007-05-06' , 170),
	(3, 'Viet' , '2007-04-06' , 100),
	(4, 'huong' , '2007-04-06' , 220),
	(5, 'xuan' , '2007-06-06' , 300),
	(5, 'xuan' , '2007-02-06' , 350);
	 

SELECT CONCAT(id, ': ', NAME, ', ', ngay_bat_dau) AS thong_tin FROM nhanvien;



-- Bài 2.2


CREATE TABLE employee(
	id INT,
	NAME VARCHAR(50),
	salary INT
);

INSERT INTO employee (id , NAME , salary) VALUES
(12 , 'Finch' , 15000),
(22 , 'Peter' , 25000),
(32 , 'Werner' , 5600),
(42 , 'Watson' , 900000);

SELECT id , NAME , if(salary < 50000 , salary * 2 , salary) FROM employee;