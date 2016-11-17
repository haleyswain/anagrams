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

  it('will recognize if a multi character word is an anagram') do
    expect('cat'.anagrams('act')).to(eq('act is an anagram of cat'))
  end

  it('will recognize if a multi character word is not an anagram') do
    expect('cat'.anagrams('butt')).to(eq('butt is not an anagram of cat'))
  end
end
