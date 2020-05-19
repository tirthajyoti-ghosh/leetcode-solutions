def is_anagram(s, t)
  return false unless s.length == t.length
  
  s_arr = s.chars
  t_arr = t.chars
    
  s_arr.each do |elem|
    if t_arr.include?(elem)
      t_arr.delete_at(t_arr.index(elem))
    end
  end
  
  if t_arr.empty?
    true
  else
    false
  end

  # Solution 2:

  #  return false unless s.length == t.length
  
  # s_arr = s.chars
  # t_arr = t.chars
    
  # s_arr.sort == t_arr.sort
end

puts is_anagram("anagram", "nagaram")
