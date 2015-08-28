class Computer

	attr_accessor :colors

	def initialize
		@@colors = [:red, :blue, :green, :orange, :purple, :yellow]
		@@code = Array.new
		@@guesses = 12
	end

	def play
		create_code
		guess_loop
	end

	def create_code
		while @@code.size < 4
			@@code << (@@colors - @@code).sample
		end
		p "#{@@code}"
	end

	def give_feedback(guess)
		guess_formated = guess.split
		guess_formated.each do |color|
			case color
			when "R"
				color = :red
			when "B"
				color = :blue
			when "G"
				color = :green
			when "O"
				color = :orange
			when "P"
				color = :purple
			when "Y"
				color = :yellow
			end
			p "#{guess}"
		end
		@@code.each do |color|

		end
	end

	def guess_loop
		12.times do 
			puts "What is your guess? Guesses left: #{@@guesses}"
			guess = gets.chomp.upcase
			@@guesses -= 1
			give_feedback(guess)
		end			
	end
end

game = Computer.new
game.play
