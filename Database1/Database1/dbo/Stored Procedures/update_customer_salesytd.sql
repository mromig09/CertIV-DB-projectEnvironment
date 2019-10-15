
create procedure update_customer_salesytd @pcustID int, @pamt int as
begin
    begin try
        update customer
        set sales_ytd = sales_ytd + @pamt 
        where custID = @pcustID
    end try

    begin catch
        if error_number() = 2637
            throw 50070, 'No rows updated', 1
        else if error_number() = 50080
            throw 50080, 'Pamt out side of range -999.99 to 999.99', 2
        else
            begin
                declare @errormessage nvarchar(max) = error_message();
                throw 50000, @errormessage, 1
            end;
    end catch;
end;

