class Squares
	def initialize(n)
		raise TypeError, 'you must enter a number' unless n.is_a?(Fixnum)
		@n = n
	end

	def sum_of_squares
		(1..@n).to_a.map{|n| n**2 }.reduce(:+)
	end

	def difference
		self.square_of_sums - self.sum_of_squares
	end

	def square_of_sums
		(1..@n).to_a.reduce(:+) ** 2
	end
end