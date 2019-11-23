def echo str
  str
end

def shout str
  str.upcase
end

def repeat str, times = 2
  ([str] * times).join " "
end

def start_of_word str, letters = 1
  str[0, letters]
end

def first_word str
  array = str.split(" ")
  array[0]
end

def titleize str
  little_words = ["and", "over", "the"]
  array = str.split
  array.each_with_index do |value, i|
    if i == 0 or not little_words.include? value
      array[i] = value.capitalize
    end
  end
  array.join(" ")
end
