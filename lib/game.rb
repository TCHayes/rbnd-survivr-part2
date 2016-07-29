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
		merged = Tribe.new(name: combined_tribe, members: contestants)
		clear_tribes
		add_tribe(merged)
		merged
	end

	def individual_immunity_challenge
		@tribes.first.members.sample
	end
end