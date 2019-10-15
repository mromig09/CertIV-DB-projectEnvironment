
create procedure get_customer_string @pcustID int, @preturnstring nvarchar(1000) output as
begin
    begin try
        select @preturnstring = concat ('custID: ', custID, ', ', 'Name: ', custName, ', ', 
        'Status: ', status, ', ', 'SalesYTD: ', sales_ytd)
        from customer
        where custID = @pcustID
    end try

    begin catch
        if error_number() = 2657
            throw 50060, 'No matching customer ID not found', 1
        else if error_number() = 50000
            throw
        else
            begin
                declare @errormessage nvarchar(max) = error_message();
                throw 50000, @errormessage, 1
            end;
    end catch;
end;

