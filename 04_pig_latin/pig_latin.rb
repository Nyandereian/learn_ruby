def translate english

  sentence = english.split
  sentence.map! do |word|

    punctuation_start = ""
    while word[0].punctuation?
      punctuation_start += word[0]
      word = word[1..-1]
    end

    punctuation_end = ""

    while word[-1].punctuation?
      punctuation_end += word[-1]
      word = word[0..-2]
    end

    if word[0].vowel?
      new_word = word + "ay"

    else
      capitalized = (word == word.capitalize) ? true : false
      consonants = ""
      while not word[0].vowel? or (consonants[-1] == "q" and word[0] == "u")
        consonants += word[0]
        word = word[1..-1]
      end
      new_word = word + consonants + "ay"
      new_word = new_word.downcase.capitalize if capitalized
    end

    punctuation_start + new_word + punctuation_end.reverse

  end
  sentence.join(" ")

end


class String
  def vowel?
    ["a", "i", "u", "e", "o"].include? self
  end

  def punctuation?
    [".", "!", "?", ",", "'", "\"", ":", ";"].include? self
  end
end

puts translate("!hay!")
