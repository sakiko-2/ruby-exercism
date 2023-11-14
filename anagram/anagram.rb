class Anagram
  def initialize(word)
    @word = word.downcase
  end

  def match(anagrams)
    anagrams.select { |a| a.downcase != @word && a.downcase.split('').sort.join == @word.split('').sort.join }
  end
end
