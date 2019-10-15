
create procedure delete_all_products as
begin try
    delete from product;
    return @@rowcount;
end try

begin catch
    declare @errormessage nvarchar(max) = error_message();
    throw 50000, @errormessage, 1
end catch;

