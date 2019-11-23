class Book
  attr_accessor :title

  def title
    little_words = ["the", "an", "a", "and", "in", "of"]
    words = @title.split
    words.map! do |word|
      (not little_words.include? word) ? word.capitalize : word
    end
    words[0] = words[0].capitalize
    @title = words.join(" ")
  end
end
