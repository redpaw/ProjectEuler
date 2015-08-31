palindrome = 0

for i in 1..999
 for j in 1..999

  if (i*j).to_s == (i*j).to_s.reverse then 
      if  i*j > palindrome
          palindrome = i*j 
          puts palindrome 
      end 
  end 
  end 
  end 

