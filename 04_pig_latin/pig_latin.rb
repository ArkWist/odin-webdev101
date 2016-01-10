def translate (string)
	translation = []
	string.split(" ").each do |word|
		translation.push("#{translate_word (word)}")
	end
	translation.join(" ").to_s
end

def is_vowel? (letter)
	vowels = ['a', 'e', 'i', 'o', 'u']
	vowels.include?(letter) ? true : false
end

def translate_word (word)
	inflection = "ay"
	puts "First two letters: #{word[0..1]}"
	if word[0..1].eql? "qu"
		inflection = "quay"
		word = word[2..-1]
	end
	word.each_char.with_index do |letter, consonants|
		if is_vowel?(letter)
			if consonants == 0
				return "#{word}#{inflection}"
			else
				return "#{word[consonants..-1]}#{word[0..consonants-1]}#{inflection}"
			end
		end
	end
	"#{word}#{inflection}"
end

#puts translate("quiet")
#puts translate("square")