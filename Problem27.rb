#BRUTE FORCE 
time1 = Time.new

puts "Current Time : " + time1.inspect


require 'prime' 
maxlength, amax, bmax = 0, 0 , 0
-1000.upto(1000).each do |a|
-1000.upto(1000).each do |b|
 stillprime = true 
 n = 0
 primelength = 0  
 while stillprime == true 
   if (n*n + a*n + b).prime? then 
   primelength += 1 
   n += 1 
   else 
   stillprime = false 
   end 
if primelength > maxlength then 
maxlength, amax, bmax = primelength, a ,b  
end 
end

end 
end 

puts maxlength, amax, bmax, amax*bmax

time2 = Time.now
p "Solution took" 
p time2-time1
p "seconds"
#SHRUNK SOL SPACE
puts "____________"
require 'prime' 
maxlength, amax, bmax = 0, 0 , 0
-1000.upto(1000).each do |a|
(Prime.take_while {|p| p < 1000 }).each do |b|
 stillprime = true 
 n = 0
 primelength = 0  
 while stillprime == true 
   if (n*n + a*n + b).prime? then 
   primelength += 1 
   n += 1 
   else 
   stillprime = false 
   end 
if primelength > maxlength then 
maxlength, amax, bmax = primelength, a ,b  
end 
end

end 
end 

time3 = Time.now



puts maxlength, amax, bmax, amax*bmax

p "Solution took"
 p time3-time2
 p "seconds"
