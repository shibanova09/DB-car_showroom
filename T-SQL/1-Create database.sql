CREATE DATABASE CarsRoom
ON
PRIMARY
( NAME = N'CarsRoom',
FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLSERVER\MSSQL\DATA\CarsRoom.mdf' ,
SIZE = 3072KB ,
MAXSIZE = UNLIMITED ,
FILEGROWTH = 1024KB ),
FILEGROUP SECONDARY
( NAME = N'CarsRoom_act',
FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLSERVER\MSSQL\DATA\CarsRoom_act.ndf' ,
SIZE = 3072KB ,
MAXSIZE = UNLIMITED ,
FILEGROWTH = 1024KB )
LOG ON
( NAME = N'CarsRoom_log',
FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLSERVER\MSSQL\DATA\CarsRoom_log.ldf' ,
SIZE = 1024KB ,
MAXSIZE = 2048GB ,
FILEGROWTH = 10%)
COLLATE SQL_Latin1_General_CP1_CI_AS
GO