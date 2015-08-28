#caesar-cipher implementation

def cipher(message, shift_factor)
	message_array = message.split("") #make an array out of the message

	message_array.map! do |char|
		char = char.ord #  convert each character to it value
	end

	message_shifted = []
	final_message = []


	message_array.map do |value| # if space, don't change. otherwise, adjust by the shift factor
		if value == 32
			value = value
			message_shifted << value
		else
			message_shifted << value + shift_factor
		end
	end

	message_shifted.map do |value| # wrap from z to a, shovel into final array
		if value > 122
			value = (value - 122) + 96
			final_message << value
		else
			final_message << value
		end
	end

	final_message.map! do |value| # convert each new character value into its corresponding letter
		value = value.chr
	end

	p "New message: #{final_message.join}" # join into a sentence and print
end

cipher("graham winn", 10)