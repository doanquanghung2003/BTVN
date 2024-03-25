-- Tạo các bảng sau bằng lệnh, insert mỗi bảng 5 - 10 dòng, sau đó làm các yêu cầu bên dưới
-- Khoa(id, makhoa varchar(10), tenkhoa varchar(30), dienthoai varchar(10))
-- SinhVien(id, masv int, hotensv char(30), makhoa varchar(10), namsinh int, quequan varchar(30))
-- Hãy đưa ra thông tin gồm mã số, họ tên và tên khoa của tất cả các sinh viên
-- Sử dụng lệnh SQL để xuất ra thông tin về những sinh viên chưa được gán vào 1 khoa xác định
-- Sử dụng câu lệnh SQL xuất ra danh sách gồm Mã số, Họ tên và Tuổi của các sinh viên khoa ‘TOAN’?

CREATE TABLE khoa (
	id INT PRIMARY KEY AUTO_INCREMENT,
	makhoa VARCHAR(20),
	tenkhoa VARCHAR(20),
	dienthoai VARCHAR(20)
);

INSERT INTO khoa (makhoa , tenkhoa , dienthoai) VALUES

	('CNTT1' , 'CNTT1' , '098'),
	('CNTT2' , 'CNTT2' , '097'),
	('CNTT3' , 'CNTT3' , '096'),
	('QTKD4' , 'QTKD4' , '095'),
	('QTKD5' , 'QTKD5' , '094'),
	('QTKD6' , 'QTKD6' , '093'),
	('KT7' , 'KT7' , '092'),
	('KT8' , 'KT8' , '091'),
	('KT9' , 'KT9' , '090');

CREATE TABLE sinhvienbh (
	id INT PRIMARY KEY AUTO_INCREMENT,
	masv INT ,
	hotensv VARCHAR(20),
	makhoa VARCHAR(20),
	namsinh INT ,
	quequan VARCHAR(20),
	khoa_id INT,
	FOREIGN KEY (khoa_id) REFERENCES khoa(id)
);
	
INSERT INTO sinhvienbh (masv , hotensv , makhoa , namsinh , quequan) VALUES
	(001 , 'Nguyen Duy Phong' , 'CNTT1' ,2003 , 'Quoc Oai' , 1),
	(002 , 'Pham Thanh Cong' , 'CNTT2' ,2003 , 'Ha Noi' , 2),
	(003 , 'Ta Tuan Anh' , 'CNTT3' ,2003 , 'Ha Noi 2' , 3),
	(004 , 'Ly Quyen Anh' , 'QTKD4' ,2002 , 'Hoa Binh' ,4),
	(005 , 'Pham Xuan Son' , 'KT7' ,2003 , 'Ninh Binh' ,7);

-- Hãy đưa ra thông tin gồm mã số, họ tên và tên khoa của tất cả các sinh viên	
SELECT masv , hotensv , tenkhoa
	FROM sinhvienbh JOIN khoa
ON sinhvienbh.khoa_id = khoa.id

-- Sử dụng lệnh SQL để xuất ra thông tin về những sinh viên chưa được gán vào 1 khoa xác định
SELECT *
	FROM sinhvienbh JOIN khoa
ON sinhvienbh.khoa_id = khoa.id
WHERE khoa_id IS NULL 
-- Sử dụng câu lệnh SQL xuất ra danh sách gồm Mã số, Họ tên và Tuổi của các sinh viên khoa ‘TOAN’?

SELECT sinhvienbh.masv, sinhvienbh.hotensv, YEAR(CURDATE()) - sinhvienbh.namsinh AS tuoi
	FROM sinhvienbh 
	JOIN khoa ON sinhvienbh.khoa_id = khoa.id
	WHERE khoa.makhoa = 'CNTT1';