
create procedure delete_all_customers as
begin try
    delete from customer;
    return @@rowcount;
end try

begin catch
    declare @errormessage nvarchar(max) = error_message();
    throw 50000, @errormessage, 1
end catch;

