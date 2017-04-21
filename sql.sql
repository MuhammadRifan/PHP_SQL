-- Membuat DB
CREATE DATABASE `sql`;

-- Membuat Table
CREATE TABLE `tbl`
(
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `merk` varchar(255) NOT NULL,
    `pembeli` varchar(255) NOT NULL,
    PRIMARY KEY (`id`)
);

-- Memasukkan Data
INSERT INTO tbl VALUES(NULL, 'Toyota', 'Pepet'), (NULL, 'Lamborghini', 'Patrick'), (NULL, 'Alphard', 'Plankton'), (NULL, 'coba1', 'coba2');

-- Menampilkan Semua Data
SELECT * FROM tbl;

-- Mengupdate Data
UPDATE tbl SET merk='Aston Martin', pembeli='Spongebob' WHERE id=4;

-- Menghapus Data
DELETE FROM tbl WHERE id=3;

-- Menampilkan Data Dengan Limit
SELECT * FROM tbl LIMIT 2,3;

-- Menampilkan 1 Data
SELECT pembeli FROM tbl WHERE id=2;

-- Membuat Table 2 untuk INNER JOIN
CREATE TABLE `tbl2`
(
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `merk` varchar(255) NOT NULL,
    `alamat` varchar(255) NOT NULL,
    PRIMARY KEY (`id`)
);

-- Merubah nama Table 2
ALTER TABLE tbl RENAME TO tbl1;

-- Memasukkan Data ke table 2
INSERT INTO tbl2 VALUES(NULL, 'Toyota', 'Rumah Sakit'), (NULL, 'Lamborghini', 'Rumah Makan'), (NULL, 'Aston Martin', 'Rumah Hantu');

-- INNER JOIN
SELECT tbl1.*, tbl2.alamat FROM tbl1 INNER JOIN tbl2 ON tbl1.merk = tbl2.merk;

-- Membuat View
CREATE VIEW `viuw` AS SELECT tbl1.*, tbl2.alamat FROM tbl1 INNER JOIN tbl2 ON tbl1.merk = tbl2.merk;

