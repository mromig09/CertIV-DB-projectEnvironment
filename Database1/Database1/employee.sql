CREATE TABLE [dbo].[employee] (
staffID				int,
givenName			nvarchar(30),
surname				nvarchar(30),
dateAssigned		date
primary key (staffID),
foreign key (dateAssigned) references assignment
);
