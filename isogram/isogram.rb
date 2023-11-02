class Isogram
  def self.isogram?(word)
    word_array = word.gsub(/[^A-Z]/i, '').downcase.split('')
    word_array.uniq == word_array
  end
end
