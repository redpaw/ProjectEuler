numbers = Array.new() 
i = 0; 
File.open("/home/pravin/Euler Problems/Prob18.txt", "r") do |f|
  f.each_line do |line|
    numbers[i] = line.to_str.split(" ")
    i += 1
 
  end
end


def maxsum (i , j, numbers) 

if i >= (numbers.length - 2) then
 return [numbers[i+1][j].to_i , numbers[i+1][j+1].to_i].max 
else 
return numbers[i][j].to_i + [maxsum(i+1, j, numbers).to_i,maxsum(i+1, j+1, numbers).to_i].max 
end
end 

puts maxsum(0,0, numbers)

for i in (numbers.length - 1).downto(0)
   for j in 0..i
    numbers[i][j] = numbers[i][j].to_i
end 
end 

for i in (numbers.length - 2).downto(0)
   for j in 0..i
     numbers[i][j] += [numbers[i+1][j] , numbers[i+1][j+1]].max
end
end 

puts numbers[0][0]
