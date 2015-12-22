class Complement
	VERSION = 1

	def self.of_dna(strand)
		raise ArgumentError if strand.match(/[^GCAT]/)
		strand.tr('CGTA', 'GCAU')
	end

	def self.of_rna(strand)
		raise ArgumentError if strand.match(/[^CGAU]/)
		strand.tr('GCAU','CGTA')
	end
end