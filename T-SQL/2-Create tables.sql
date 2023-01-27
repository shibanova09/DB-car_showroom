USE CarsRoom;

CREATE TABLE [Сотрудники] (
	[Код сотрудника] int NOT NULL,
	[Фамилия] varchar(50) NOT NULL,
	[Имя] varchar(50) NOT NULL,
	[Отчество] varchar(50),
	[Возраст] varchar(10) NOT NULL,
	[Пол] varchar(10) NOT NULL,
	[Адрес] varchar(50) NOT NULL,
	[Телефон] varchar(50) NOT NULL,
	[Паспортные данные] varchar(50) NOT NULL,
	[Код должности] int NOT NULL)

CREATE TABLE [Должности] (
	[Код должности] int NOT NULL,
	[Наименование должности] varchar(50) NOT NULL,
	[Оклад] money NOT NULL,
	[Обязанности] varchar(max) NOT NULL,
	[Требования] varchar(max) NOT NULL)

CREATE TABLE [Производители] (
	[Код производителя] int NOT NULL,
	[Наименование] varchar(50) NOT NULL,
	[Страна] varchar(50) NOT NULL,
	[Адрес] varchar(50) NOT NULL,
	[Описание] varchar(max) NOT NULL,
	[Код сотрудника] int NOT NULL)

CREATE TABLE [Дополнительное оборудование] (
	[Код оборудования] int NOT NULL,
	[Наименование] varchar(50) NOT NULL,
	[Характеристики] varchar(max) NOT NULL,
	[Цена] money NOT NULL)

CREATE TABLE [Тип кузова] (
	[Код типа кузова] int NOT NULL,
	[Название] varchar(50) NOT NULL,
	[Описание] varchar(max) NOT NULL)

CREATE TABLE [Автомобили] (
	[Код автомобиля] int NOT NULL,
	[Марка] varchar(50) NOT NULL,
	[Код производителя] int NOT NULL,
	[Код типа кузова] int NOT NULL,
	[Дата производства] date NOT NULL,
	[Цвет] varchar(50) NOT NULL,
	[Номер кузова] bigint NOT NULL,
	[Номер двигателя] bigint NOT NULL,
	[Характеристики] varchar(max) NOT NULL,
	[Код оборудования 1] int NOT NULL,
	[Код оборудования 2] int NOT NULL,
	[Код оборудования 3] int NOT NULL,
	[Цена] money NOT NULL,
	[Код сотрудника] int NOT NULL)

CREATE TABLE [Заказчики] (
	[Фамилия] varchar(50) NOT NULL,
	[Имя] varchar(50) NOT NULL,
	[Отчество] varchar(50),
	[Адрес] varchar(50) NOT NULL,
	[Телефон] varchar(50) NOT NULL,
	[Паспортные данные] varchar(50) NOT NULL,
	[Код автомобиля] int NOT NULL,
	[Дата заказа] date NOT NULL,
	[Дата продажи] date NOT NULL,
	[Отметка о выполнении] bit NOT NULL,
	[Отметка об оплате] bit NOT NULL,
	[Процент предоплаты] decimal(5,2) NOT NULL,
	[Код сотрудника] int NOT NULL)
