fib1 = 1; 
fib2 = 2;
temp = 0; 
sum = 0;
while fib1 <= 4000000 do 
    temp = fib2;
    fib2 = fib1 + fib2; 
    fib1 = temp; 
    if fib1%2 == 0 then 
        sum = sum + fib1;
    end
end 
puts sum 
