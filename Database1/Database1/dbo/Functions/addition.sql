create function addition (@num1 numeric, @num2 numeric) returns nvarchar(100) AS
BEGIN
    return concat('The sum of ', @num1 , ' and ', @num2, ' is ', @num1+@num2);
end;