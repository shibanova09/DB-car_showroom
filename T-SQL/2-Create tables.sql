USE CarsRoom;

CREATE TABLE [����������] (
	[��� ����������] int NOT NULL,
	[�������] varchar(50) NOT NULL,
	[���] varchar(50) NOT NULL,
	[��������] varchar(50),
	[�������] varchar(10) NOT NULL,
	[���] varchar(10) NOT NULL,
	[�����] varchar(50) NOT NULL,
	[�������] varchar(50) NOT NULL,
	[���������� ������] varchar(50) NOT NULL,
	[��� ���������] int NOT NULL)

CREATE TABLE [���������] (
	[��� ���������] int NOT NULL,
	[������������ ���������] varchar(50) NOT NULL,
	[�����] money NOT NULL,
	[�����������] varchar(max) NOT NULL,
	[����������] varchar(max) NOT NULL)

CREATE TABLE [�������������] (
	[��� �������������] int NOT NULL,
	[������������] varchar(50) NOT NULL,
	[������] varchar(50) NOT NULL,
	[�����] varchar(50) NOT NULL,
	[��������] varchar(max) NOT NULL,
	[��� ����������] int NOT NULL)

CREATE TABLE [�������������� ������������] (
	[��� ������������] int NOT NULL,
	[������������] varchar(50) NOT NULL,
	[��������������] varchar(max) NOT NULL,
	[����] money NOT NULL)

CREATE TABLE [��� ������] (
	[��� ���� ������] int NOT NULL,
	[��������] varchar(50) NOT NULL,
	[��������] varchar(max) NOT NULL)

CREATE TABLE [����������] (
	[��� ����������] int NOT NULL,
	[�����] varchar(50) NOT NULL,
	[��� �������������] int NOT NULL,
	[��� ���� ������] int NOT NULL,
	[���� ������������] date NOT NULL,
	[����] varchar(50) NOT NULL,
	[����� ������] bigint NOT NULL,
	[����� ���������] bigint NOT NULL,
	[��������������] varchar(max) NOT NULL,
	[��� ������������ 1] int NOT NULL,
	[��� ������������ 2] int NOT NULL,
	[��� ������������ 3] int NOT NULL,
	[����] money NOT NULL,
	[��� ����������] int NOT NULL)

CREATE TABLE [���������] (
	[�������] varchar(50) NOT NULL,
	[���] varchar(50) NOT NULL,
	[��������] varchar(50),
	[�����] varchar(50) NOT NULL,
	[�������] varchar(50) NOT NULL,
	[���������� ������] varchar(50) NOT NULL,
	[��� ����������] int NOT NULL,
	[���� ������] date NOT NULL,
	[���� �������] date NOT NULL,
	[������� � ����������] bit NOT NULL,
	[������� �� ������] bit NOT NULL,
	[������� ����������] decimal(5,2) NOT NULL,
	[��� ����������] int NOT NULL)