require('rspec')
require('pry')
require('anagrams')

describe("String#anagrams") do
  it ('will recognize if single character words are anagrams, for one guess') do
    expect("a".anagrams("a")).to(eq("a is an anagram of a"))
  end

  it ('will recognize if a single character word is not an anagram, for one guess') do
    expect('a'.anagrams('b')).to(eq("b is not an anagram of a"))
  end
end
