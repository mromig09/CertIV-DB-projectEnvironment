CREATE TABLE [dbo].[office] (
locCode					int,
address					nvarchar(100),
dateAssigned			date
primary key (locCode),
foreign key (dateAssigned) references assignment
);