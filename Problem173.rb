

# n is length of the inner hole measured in tiles. t is the tile-limit 
def laminapossible (n, t) 
     if (4*n + 4) > t then 
         return 0 
     else 
         return count = 1 + laminapossible(n+2, t - (4*n + 4))     
     end 
end 



t = 1000000
p (1..((t - 4)/4)).inject(0) { |result, n| result + laminapossible(n, t) } 

 
  
