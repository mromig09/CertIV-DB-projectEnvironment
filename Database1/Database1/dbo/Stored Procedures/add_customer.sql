
create procedure add_customer @pcustID int, @pcustName nvarchar(100) as

begin
    begin try
        if @pcustID < 1 or @pcustID > 499
        throw 50020, 'Customer ID out of range', 1

        insert into customer (custID, custName, sales_ytd, status) values
        (@pcustID, @pcustName, 0, 'ok');

end try

    begin catch
        if error_number() = 2627
            throw 50010, 'Duplicate Customer ID', 1
        else if error_number() = 50020
            throw
        else
            begin
                declare @errormessage nvarchar(max) = error_message();
                throw 50000, @errormessage, 1
            end;
    end catch;
            
end;

