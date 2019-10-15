
create procedure add_product @pprodID int, @pprodName nvarchar(100), @pprice money as

begin
    begin try
        if @pprodID < 1000 or @pprodID > 2500
        throw 50040, 'Product ID out of range', 1

        insert into product (prodID, prodName, sellingPrice, sales_ytd) values
        (@pprodID, @pprodName, @pprice, 0);
    end try

    begin catch
        if error_number() = 2667
            throw 50030, 'Duplicate Product ID', 1
        else if error_number() = 50000
            throw
        else
            begin
                declare @errormessage nvarchar(max) = error_message();
                throw 50000, @errormessage, 1
            end;
    end catch;
end;

