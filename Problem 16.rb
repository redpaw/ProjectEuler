
n = 2**1000 
sum = 0; 
for i in 0..n.to_s.split(//).length do 
    sum = sum + n.to_s.split(//)[i].to_i
end 
puts sum 


