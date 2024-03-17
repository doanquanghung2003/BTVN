CREATE TABLE IF NOT EXISTS product(
	id INT PRIMARY KEY AUTO_INCREMENT,
	product_name VARCHAR(50),
	price INT,
	amount INT ,
	ACTIVE BOOL,
	tax_percent INT,
	CREATE_date DATETIME,
	update_date DATETIME
);

INSERT INTO product (id, product_name, price, amount, ACTIVE, tax_percent, CREATE_date, update_date) VALUES 
    (1, 'Rượu', 16, 4, FALSE, 46, '2021-12-18', '2022-12-09'),
    (2, 'Muối', 36, 5, FALSE, 13, '2021-11-13', '2022-03-05'),
    (3, 'Trứng', 32, 16, FALSE, 5, '2021-08-05', '2022-04-22'),
    (4, 'Thịt_Bò', 44, 13, TRUE, 56, '2021-08-23', '2022-04-09'),
    (5, 'Bánh_Mì', 41, 17, FALSE, 64, '2019-07-18', '2021-12-23'),
    (6, 'Hạt_Tiêu', 24, 13, FALSE, 86, '2022-02-19', '2022-08-25'),
    (7, 'Bia', 17, 18, FALSE, 6, '2022-03-14', '2022-10-15'),
    (8, 'Khoai_Tây', 31, 9, TRUE, 39, '2021-12-04', '2022-01-03'),
    (9, 'Hoa', 25, 9, FALSE, 65, '2019-05-21', '2022-01-17'),
    (10, 'Bắp_cải', 48, 7, TRUE, 27, '2021-11-04', '2022-03-13'),
    (11, 'Cua', 24, 14, FALSE, 48, '2022-01-09', '2022-02-11'),
    (12, 'Đào_khô', 37, 17, TRUE, 89, '2022-07-31', '2021-12-06'),
    (13, 'Mù_tạt', 46, 2, TRUE, 28, '2022-04-15', '2022-10-08'),
    (14, 'Kiwi', 30, 14, FALSE, 81, '2022-06-21', '2022-04-24');

/*Thực hành LIKE		
1. Tìm tên sản phẩm có chữ 'a'			
2. Tìm tên sản phẩm bắt đầu bằng chữ 'b'			
3. Tìm tên sản phẩm có ký tự gần cuối là chữ 'a'			
4. Tìm ra những sp có giá tiền trên 30 và mức thuế dưới 15 phần trăm			
5. Tìm ra những sản phẩm mà có ngày tạo trong năm 2021	*/

SELECT * FROM product WHERE product_name LIKE "%a%";

SELECT * FROM product  WHERE product_name LIKE "M%"; /* chữ 'b' không có dl */

SELECT * FROM product WHERE product_name LIKE "%a_";

SELECT * FROM product WHERE price > 30 AND tax_percent < 15;

SELECT * FROM product WHERE CREATE_date LIKE  "%2021%";


