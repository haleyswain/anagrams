class String
  define_method(:anagrams) do |guess|
    guesses = guess.split(", ")
    word_array = self.delete(" ").split("")
    output = ""
    guesses.each() do |possible|
      possible_array = possible.delete(" ").split("")
      if word_array.sort == possible_array.sort
        output += possible + " is an anagram of " + self + "."
      else
        output += possible + " is not an anagram of " + self + "."
      end
    end
    output
  end
end
