/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

delete from assignment;
delete from office;
delete from employee;

insert into employee (staffID, givenName, surname, dateAssigned) values
(5245, 'Mark', 'Romig', 15-09-2018),
(6644, 'Heather', 'Simpson', 12-12-2018),
(2586, 'Clark', 'Staples', 10-11-2018);

insert into office (locCode, address, dateAssigned) values
(44444, '121 Hillcrest Terrace', 15-09-2018),
(55555, '212 Island Crest', 12-12-2018),
(66666, '354 Coastal street', 10-11-2018);

insert into assignment (dateAssigned, staffID, locCode) values
(15-09-2018, 5245, 44444),
(12-12-2018, 6644, 55555),
(10-11-2018, 2586, 66666);