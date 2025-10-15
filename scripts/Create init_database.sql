/*
======================================
Create Database and Schemas
======================================
Script Purpose:
	This script creates a new database named 'DataWarehouse' after checking if it already exists.
	If the database exists, it is dropped and recreated. Additionally, the scrip sets up three schemas
	within the database: 'Bronze','Silver', and 'Gold'.

WARNING;
	Ruinning this script with drop the entire 'DataWarehouse' database if it exists.
	All data in the database will be permenently deleted. Proceed with caution
	and ensure you have proper backups before running this script.
*/





USE master;
GO

--Drop and recreate the 'DataWarehouse' Database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DATAWarehouse;
END;
GO

--Create the 'DataWarehouse' Database
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO
--Create Schemas

CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
