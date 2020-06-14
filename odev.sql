CREATE DATABASE musteriTakip;
USE musteriTakip;

CREATE TABLE musteriTablo(
    musteriID INT NOT NULL,
    musteriAd VARCHAR(50),
    musteriSoyad VARCHAR(30),
    musteriTC NVARCHAR(11),
    PRIMARY KEY (musteriID)
);

CREATE TABLE musteriGiris(
    girisId INT PRIMARY KEY NOT NULL,
    girisTarih DATETIME,
    cikisTarih DATETIME,
    musteriID INT,
    CONSTRAINT MYS_giriskonuk FOREIGN KEY (girisId) REFERENCES musteriTablo(musteriID),
);

INSERT INTO musteriTablo (musteriID, musteriAd, musteriSoyad, musteriTC)
VALUES
(1,'Hüseyin','KAPRUZCU',11115555889),
(2,'Yavuz','ÇEKİRDEK',11133322278),
(3,'Kerem','GÜNDÜZ',22113311456),
(4,'Hamza','YATICI',13213265478),
(5,'Yiğit','SÖNMEZ',21213344561),
(6,'Yavuz','TÜTÜNCÜ',11223355447);

SELECT * FROM musteriTablo WHERE musteriAd = 'Yavuz' AND musteriAd = 'Kerem'
SELECT * FROM musteriTablo WHERE musteriID = 1 OR musteriID = 5
SELECT * FROM musteriGiris WHERE girisId = 3