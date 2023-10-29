-- Uploading all the CSV files in SQL Server --------------------------------------

DROP TABLE Glioblastoma_data## -- Type the number of the simulation you want to remove

SELECT *
FROM Glioblastoma_data##  -- Type the number of the simulation you want to see

CREATE TABLE Glioblastoma_data## (
	Time	INT,
	TR	FLOAT,
	TM	FLOAT
);

BULK INSERT Glioblastoma_data##
FROM 'Your file path' -- 'Insert your file path for Glioblastoma_data##.dat'
WITH(
	FORMAT= 'CSV',
	FIRSTROW= 2,
	FIELDTERMINATOR= ',',
	ROWTERMINATOR= '\n'
);
GO

-- Merging and organizing all the datasets
SELECT
	GD.Time AS Time,
	GD.TR AS 'TR_Delta1.5',
	GD.TM AS 'TM_Delta1.5',
	GD2.TR AS 'TR_Delta0.9',
	GD2.TM AS 'TM_Delta0.9',
	GD3.TR AS 'TR_Delta0.3',
	GD3.TM AS 'TM_Delta0.3',
	GD4.TR AS 'TR_Delta0.1',
	GD4.TM AS 'TM_Delta0.1',
	GD5.TR AS 'TR_Delta0.002',
	GD5.TM AS 'TM_Delta0.002',
	GD6.TR AS 'TR_Beta20.000003',
	GD6.TM AS 'TM_Beta20.000003',
	GD7.TR AS 'TR_Beta20.003',
	GD7.TM AS 'TM_Beta20.003',
	GD8.TR AS 'TR_Beta20.03',
	GD8.TM AS 'TM_Beta20.03',
	GD9.TR AS 'TR_Beta20.3',
	GD9.TM AS 'TM_Beta20.3',
	GD10.TR AS 'TR_Beta23',
	GD10.TM AS 'TM_Beta23',
	GD11.TR AS 'TR_Rho0.3',
	GD11.TM AS 'TM_Rho0.3',
	GD12.TR AS 'TR_Rho0.6',
	GD12.TM AS 'TM_Rho0.6',
	GD13.TR AS 'TR_Rho1',
	GD13.TM AS 'TM_Rho1',
	GD14.TR AS 'TR_Rho1.5',
	GD14.TM AS 'TM_Rho1.5',
	GD15.TR AS 'TR_Rho2',
	GD15.TM AS 'TM_Rho2',
	GD16.TR AS 'TR_Gamma0.002',
	GD16.TM AS 'TM_Gamma0.002',
	GD17.TR AS 'TR_Gamma0.3',
	GD17.TM AS 'TM_Gamma0.3',
	GD18.TR AS 'TR_Gamma0.9',
	GD18.TM AS 'TM_Gamma0.9',
	GD19.TR AS 'TR_Gamma0.1',
	GD19.TM AS 'TM_Gamma0.1',
	GD20.TR AS 'TR_Gamma1.5',
	GD20.TM AS 'TM_Gamma1.5',
	GD21.TR AS 'TR_Alpha0.001',
	GD21.TM AS 'TM_Alpha0.001',
	GD22.TR AS 'TR_Alpha0.01',
	GD22.TM AS 'TM_Alpha0.01',
	GD23.TR AS 'TR_Alpha0.3',
	GD23.TM AS 'TM_Alpha0.3',
	GD24.TR AS 'TR_Alpha1',
	GD24.TM AS 'TM_Alpha1',
	GD25.TR AS 'TR_Beta10.000003',
	GD25.TM AS 'TM_Beta10.000003',
	GD26.TR AS 'TR_Beta10.003',
	GD26.TM AS 'TM_Beta10.003',
	GD27.TR AS 'TR_Beta10.03',
	GD27.TM AS 'TM_Beta10.03',
	GD28.TR AS 'TR_Beta10.3',
	GD28.TM AS 'TM_Beta10.3',
	GD29.TR AS 'TR_Beta13',
	GD29.TM AS 'TM_Beta13'
INTO #Glioblastoma
FROM Glioblastoma_data AS GD
	JOIN Glioblastoma_data2 AS GD2
	ON (GD.Time = GD2.Time)
	JOIN Glioblastoma_data3 AS GD3
	ON (GD.Time = GD3.Time)
	JOIN Glioblastoma_data4 AS GD4
	ON (GD.Time = GD4.Time)
	JOIN Glioblastoma_data5 AS GD5
	ON (GD.Time = GD5.Time)
	JOIN Glioblastoma_data6 AS GD6
	ON (GD.Time = GD6.Time)
	JOIN Glioblastoma_data7 AS GD7
	ON (GD.Time = GD7.Time)
	JOIN Glioblastoma_data8 AS GD8
	ON (GD.Time = GD8.Time)
	JOIN Glioblastoma_data9 AS GD9
	ON (GD.Time = GD9.Time)
	JOIN Glioblastoma_data10 AS GD10
	ON (GD.Time = GD10.Time)
	JOIN Glioblastoma_data11 AS GD11
	ON (GD.Time = GD11.Time)
	JOIN Glioblastoma_data12 AS GD12
	ON (GD.Time = GD12.Time)
	JOIN Glioblastoma_data13 AS GD13
	ON (GD.Time = GD13.Time)
	JOIN Glioblastoma_data14 AS GD14
	ON (GD.Time = GD14.Time)
	JOIN Glioblastoma_data15 AS GD15
	ON (GD.Time = GD15.Time)
	JOIN Glioblastoma_data16 AS GD16
	ON (GD.Time = GD16.Time)
	JOIN Glioblastoma_data17 AS GD17
	ON (GD.Time = GD17.Time)
	JOIN Glioblastoma_data18 AS GD18
	ON (GD.Time = GD18.Time)
	JOIN Glioblastoma_data19 AS GD19
	ON (GD.Time = GD19.Time)
	JOIN Glioblastoma_data20 AS GD20
	ON (GD.Time = GD20.Time)
	JOIN Glioblastoma_data21 AS GD21
	ON (GD.Time = GD21.Time)
	JOIN Glioblastoma_data22 AS GD22
	ON (GD.Time = GD22.Time)
	JOIN Glioblastoma_data23 AS GD23
	ON (GD.Time = GD23.Time)
	JOIN Glioblastoma_data24 AS GD24
	ON (GD.Time = GD24.Time)
	JOIN Glioblastoma_data25 AS GD25
	ON (GD.Time = GD25.Time)
	JOIN Glioblastoma_data26 AS GD26
	ON (GD.Time = GD26.Time)
	JOIN Glioblastoma_data27 AS GD27
	ON (GD.Time = GD27.Time)
	JOIN Glioblastoma_data28 AS GD28
	ON (GD.Time = GD28.Time)
	JOIN Glioblastoma_data29 AS GD29
	ON (GD.Time = GD29.Time)

SELECT *
FROM #Glioblastoma
