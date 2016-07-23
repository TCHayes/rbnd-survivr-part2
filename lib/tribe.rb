class Tribe
	attr_accessor :name, :members

	def initialize(tribe) #Input should be hash of name: "string" and members: @contestants array
		@name = tribe[:name]
		@members = tribe[:members]
		puts self.name
	end

	def to_s
		@name
	end

	def tribal_council(immune)
		safe = immune[:immune]
		@members.shuffle #Initial shuffle to keep voted off contestant random.
		while @members.last == safe #Keep shuffling until last member is not immune.
			@members.shuffle
		end
		@members.pop #Remove last member from @members
	end
end