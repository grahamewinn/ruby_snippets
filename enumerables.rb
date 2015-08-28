module Enumerable

	def my_each
		return self unless block_given?
		i = 0
		while i < self.size
			yield self[i]
			i += 1
		end 
	end

	def my_each_with_index
		return self unless block_given?
		i = 0
		while i < self.size
			yield self[i], i
		end
	end

	def my_select
		return self unless block_given?
		new_array = []
		self.my_each { |i| new_array << i if yield i  }

	end

	def my_all?
		return self unless block_given?
	end

	def my_any?
		return self unless block_given?
	end

	def my_none?
		return self unless block_given?
	end

	def my_count
		return self unless block_given?
	end

	def my_map
		return self unless block_given?
	end

	def my_inject
		return self unless block_given?
	end

	def multiple_els
		return self unless block_given?
	end