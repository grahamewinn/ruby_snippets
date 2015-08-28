class Computer

	attr_accessor :colors

	def initialize
		@@colors = ["r", "b", "g", "o", "p", "y"]
		@@code = Array.new
		@@guesses = 12
		@@victory = false
	end

	def play
		create_code
		guess_loop
	end

	def create_code
		while @@code.size < 4
			@@code << (@@colors - @@code).sample
		end
		#puts "#{@@code}"
	end

	def give_feedback(guess)
		@response = []
		guess_formated = guess.split("")
		#puts "#{guess_formated}"
		#puts "#{@@code}"

		if guess_formated == @@code
			puts "Correct!"
			@@guesses = 0
			@@victory = true
		end

		i = 0

		guess_formated.each do |peg|
			if peg == @@code[i]
				@response << "black"
			elsif @@code.include?(peg)
				@response << "white"
			end
				
			i += 1
		end

		puts "#{@response}"

	end

	def guess_loop
		while @@guesses > 0 do 
			puts "What is your guess? Guesses left: #{@@guesses}"
			guess = gets.chomp.downcase
			@@guesses -= 1
			give_feedback(guess)
		end	
		puts "You lose!" if @@victory == false

	end
end

game = Computer.new
game.play
