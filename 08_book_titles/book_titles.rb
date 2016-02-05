class Book
  attr_reader :title
  lowercase_words = ["a","an","and","at","in","of","the"]

  def title= (title)
    puts "This works"
    title_words = title.split(" ")
    title_words.map do |word|
      word.capitalize unless should_be_lowercase?(word)
    end
    title_words[0].capitalize!
    @title = title_words.join(" ")
    puts @title
  end

  def should_be_lowercase? (word)
    lowercase_words.each do |small_word|
      if word == small_word
        return true
      end
    end
    return false
  end
end