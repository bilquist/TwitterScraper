





create database TwitterDev on primary (
	Name = N'MyPreciousDataDev',
	Filename = N'I:\MSSQL DB\MyPreciousDev.mdf',
	Size= 1048576KB,
	Maxsize = Unlimited,
	Filegrowth = 1048576KB
)
Log On (
	Name = N'MyPreciousDevLog',
	FileName = N'I:\MSSQL DB\MyPreciousDev_log.ldf',
	Size = 1048576KB,
	Maxsize = Unlimited,
	Filegrowth = 1048576KB
)

