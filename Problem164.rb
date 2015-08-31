
$wd  = Array.new(2001) { Array.new(10) { Array.new(10) } }

def whichdigits (numlength ,d1 ,d2)
    count = 0

if d1 && d2 && $wd[numlength][d1][d2] then 
return $wd[numlength][d1][d2] 
end 
 
    if numlength > 0 then 
        if d1 == nil && d2 == nil then 
            for i in 1..9   
                  count += (whichdigits((numlength-1), i, nil)) 
            end 
        elsif d2 == nil && d1 != nil then 
            for i in 0..9 
                 if i < 10-d1 then 
                     count += (whichdigits((numlength-1), i, d1))
                end 
            end 
        elsif d1 && d2 then 
            for i in 0..9 
                if i < (10 - d1) && i < (10 - d1 - d2) then 
                     count += (whichdigits((numlength-1), i, d1))
                end 
            end 
        end
    else return 1 
    end

    if d1 && d2 then 
    $wd[numlength][d1][d2] = count 
    end 

    return count 
end 
                
puts whichdigits(2000 , nil , nil )           
            
            
# wd (2, nil, nil) | tn = 0 + wd(1,1,nil) + wd(1,2,nil) + ... wd(1,9,nil)
  
