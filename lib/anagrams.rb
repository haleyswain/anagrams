class String
  define_method(:anagrams) do |guess|
    word_array = self.split("")
    guess_array = guess.split("")

    if word_array.sort == guess_array.sort
      guess + " is an anagram of " + self
    else
      guess + " is not an anagram of " + self
    end
  end
end
