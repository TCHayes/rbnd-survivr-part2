require 'colorizr'

class Tribe
	attr_accessor :name, :members

	def initialize(tribe) #Input should be hash of name: "string" and members: @contestants array
		@name = tribe[:name]
		@members = tribe[:members]
		puts self.name.blue
	end

	def to_s
		@name
	end

	def tribal_council(immune)
		non_immune = @members.reject{ |member| member == immune[:immune]}
	    @members.delete(non_immune.sample)
	end
end