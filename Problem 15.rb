factorial40 = 1 
factorial20 = 1 
for i in 1..40 
factorial40 = factorial40*i 

if i < 21 then 
    factorial20 = factorial20*i 
end 
end 
puts factorial40 
puts factorial20
puts factorial40/(factorial20*factorial20)
