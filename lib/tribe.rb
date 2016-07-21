class Tribe
	attr_reader :name, :members

	def initialize(tribe)
		@name = tribe[:name]
		@members = tribe[:members]
		puts self.name #This seems wierd, but using temporarily to pass test.
	end
end