


factorials = Hash.new() 

(1..9).each { |i| (factorials[i] = (1..i).inject { |product,x| product *= x })}
factorials[0] = 1
p factorials



p = Array.new()
mainsum = 0
for i in 3..(factorials[9]*7)

arr = i.to_s.split(//)
arr.map! { |s| s.to_i }
sum = 0
arr.each do |x| 
sum += factorials[x]
end 
p[i] = sum
if i  == p[i] then 
mainsum += i 
end 
end 



p mainsum

