def prime?(num)
  if num < 0 or num == 0 or num == 1 #0 and 1 must be excluded they are not prime
    return false
  else
    (2..num-1).to_a.all? do |possible_factor| #include all other integers, put them in a array,
      num % possible_factor != 0              #divide each num in the array
    end
  end
end

puts prime?(100)