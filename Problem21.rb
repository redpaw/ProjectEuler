




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

divisorsums = Array.new()
sum = 0


for i in 1..10000
divisorsums.push(sumofarray divisorsm i)
end

divisorsums[0] = 0 

for i in 0..9999
if divisorsums[(divisorsums[i] - 1)] == (i+1) && (divisorsums[i] - 1) != (i) then 
puts i 
puts (divisorsums[i] - 1) 
puts divisorsums[(divisorsums[i] - 1)]
puts "___" 
sum += divisorsums[i]
end 
end

puts sum





