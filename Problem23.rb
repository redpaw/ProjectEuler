def divisorsm number
  divisors = Array.new()
  for i in 1..(number-1) 
  if number%i == 0 
    divisors.push(i) 
   end  
end 
return divisors 
end 


def sumofarray array 
array.inject(:+)
end 

abundantnumbers = Array.new()
sum = 0


for i in 2..28123
if (sumofarray divisorsm i) > i then
abundantnumbers.push(i)
end
end

hassum = Array.new() 

for j in 1..28123 
i = 0
while abundantnumbers[i] < j do 
if abundantnumbers.include?(j - abundantnumbers[i]) then 
hassum.push(j)  
break 
end 
i += 1 
end  
end



