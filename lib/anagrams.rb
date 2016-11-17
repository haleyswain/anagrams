class String
  define_method(:anagrams) do |guess|
    if self == guess
      guess + " is an anagram of " + self
    else
      guess + " is not an anagram of " + self
    end
  end
end
