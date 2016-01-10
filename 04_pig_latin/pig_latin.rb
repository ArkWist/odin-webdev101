def translate (string)
	translation = []
	string.split(" ").each do |word|
		translation.append("#{translate_word (word)}")
	end
	translation.join(" ").to_s
end

def is_vowel? (letter)
	vowels = ['a', 'e', 'i', 'o', 'u']
	vowels.include? letter ? true : false
end

def translate_word (word)
	inflection = "ay"
	if word[0..2].eql? "qu"
		inflection = "quay"
		word = word[2..-1]
	end
	word.each_char.with_index do |letter, consonants|	
		if letter.is_vowel?
			return "#{word[consonants..-1]}#{word[0..consonants]}#{inflection}"
		end
	end
	"#{word}#{inflection}"
end