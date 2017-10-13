

def foldingCipher(input)
  input.chars.map { |chr| (219 - chr.ord).chr }.join("")
end

# Watch out for overexplaining
# Feel free to spread out notes
