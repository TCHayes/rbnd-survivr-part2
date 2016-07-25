class Game
	attr_reader :tribes

	def initialize(tribe_one, tribe_two)
		@tribes = [tribe_one, tribe_two]
	end

	def add_tribe(tribe)
		@tribes << tribe
	end

	def immunity_challenge
		@tribes.sample
	end

	def clear_tribes
		@tribes.clear
	end

	def merge(combined_tribe)
		contestants = tribes.map(&:members).flatten
		Tribe.new(name: combined_tribe, members: contestants)
		# Below is my initial code. Worked fine, but inelegant. I had previously tried
		# to use map and flatten, but couldn't figure it out. I found the above solution
		# in the forums, though I still don't fully understand how the to_proc &:members
		# phrase works. I'm hoping you can offer some insight!

		#new_members = []
		#@tribes.each do |tribe|
		#	tribe.members.each do |member|
		#		new_members << member
		#	end
		#end
		#combined_tribe = Tribe.new(name: combined_tribe, members: new_members)
	end

	def individual_immunity_challenge
		# I'm working under the assumption that the tribes will be cleared before adding the
		# "combined_tribe" and therefore it will be the only element in the @tribes array.
		@tribes[0].members.sample
	end
end