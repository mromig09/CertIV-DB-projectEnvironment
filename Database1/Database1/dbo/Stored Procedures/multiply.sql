create procedure multiply (@firstValue int, @secondValue int)
as
begin
declare @multiplynum int
set @multiplynum=@firstValue*@secondValue
print @multiplynum
end