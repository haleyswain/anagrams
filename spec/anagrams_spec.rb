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

  it('will recognize if a multiple word string is an anagram') do
    expect('cat dog'.anagrams('dog ca t')).to(eq('dog ca t is an anagram of cat dog'))
  end

  it('will recognize if a multiple word string is not an anagram') do
    expect('cat dog'.anagrams('dog butt')).to(eq('dog butt is not an anagram of cat dog'))
  end
end
