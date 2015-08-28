dict = ["word", "wo", "wor"]


def substrings(string, dict)
	matches = Hash.new(0)
	string.downcase!

	dict.each do |word|
		count = string.scan(word).length
		matches[word] = count if count > 0
	end

	puts matches
end

substrings("word", dict)