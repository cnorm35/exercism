class Hamming
	VERSION = 1

	def self.compute(str1, str2)
		raise ArgumentError , "Inputs must be the same length" if str1.length != str2.length
		matches = 0
		str1.length.times do |i|
			if str1[i] != str2[i]
				matches += 1
			end
		end
		matches
	end
end