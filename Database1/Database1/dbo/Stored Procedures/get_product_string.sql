
create procedure get_product_string @pprodID int, @preturnstring nvarchar(1000) output as
begin
    begin try
        select @preturnstring = concat ('prodID: ', prodID, ', ', 'Name: ', prodName, ', ', 
        'Price: ', sellingPrice, ', ', 'SalesYTD: ', sales_ytd)
        from product
        where prodID = @pprodID
    end try
 
    begin catch
        if error_number() = 2647
            throw 50090, 'No matching product ID not found', 1
        else if error_number() = 50000
            throw
        else
            begin
                declare @errormessage nvarchar(max) = error_message();
                throw 50000, @errormessage, 1
            end;
    end catch;
end;

