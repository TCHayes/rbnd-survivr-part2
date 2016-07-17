class Jury
	attr_accessor :members

	def initialize
		@members = []
	end

	def add_member(member)
		@members << member
	end

	def members
		@members
	end
end