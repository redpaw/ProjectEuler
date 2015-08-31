

def fibonacci numberlimit 
fa = 1 
fb = 1 
index = 1
while fa < numberlimit do 

fa , fb = fb , fa + fb 

index += 1
puts index , fa
end 
puts index 
end 

fibonacci 10**999
