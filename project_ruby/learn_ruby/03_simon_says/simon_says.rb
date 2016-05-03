def echo (string)
	string
end

def shout (string)
	string.upcase
end

def repeat (string, times = 2)
	result = string
	if times > 1
		while times > 1 do
			result += " #{string}"
			times -= 1
		end
	end
	return result
end

def start_of_word (string, letters)
	#result = ""
	#index = 1
	#string.split("").each do |i|
	#	result += i
	#	index += 1
	#	if index == letters
	#		break
	#	end
	#end
	#return result
	## Looked up solution - need to stop thinking in Java
	string[0...letters]
end

def first_word (string)
	string.split.first
end

def titleize (string)
	#string.split.map(&:capitalize).join(" ")
	## This worked until it wanted certain words lowercase - looked up solution
	#string.split.map do |word|
	#	if word != "the" && word != "and" && word != "over"
	#		word.capitalize
	#		puts word
	#	end
	#end
	#puts string
	#string.join(" ")
	## Only works if I copy the solution verbatim, which I don't yet understand
end
	