/*
========================================================================================================================

CREATE DATABASE & SCHEMAS

========================================================================================================================

PURPOSE:
	The purpose of this Script isto create a new database 'DataWarehouse' after checking whether it exists. 
	If it exists, it is dropped and then recreated. Additonally, the scripts sets up three schemas within the database: 
	'bronze', silver, and 'gold'

WARNING:
	Running this script will drop the entire 'DataWarehouse' database if it exists.
	All the data therein will be deleted. Proceed with caution and ensure proper backups.

*/


USE master;
GO

--Drop and recreate the 'DataWarehouse' Database
IF EXISTS (SELECT 1 FROM sys.databases where name = 'DataWarehouse')
BEGIN
	ALTER DATABASE Datawarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
END;
GO

--Create the database 'DataWarehouse'
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

--Create the Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
