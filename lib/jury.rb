class Jury
	attr_accessor :members

	def initialize
		@members = []
		@finalists = Hash.new(0)
	end

	def add_member(member)
		@members << member
	end

	def members
		@members
	end

	def cast_votes(finalists)
		finalists.each { |contestant| @finalists[contestant] = 0}
		@members.each do |member|
			vote = finalists.sample
			@finalists[vote] += 1
			puts "#{member.to_s.capitalize} voted for #{vote.to_s.capitalize}."
		end
		return @finalists
	end

	def report_votes(final_votes)
		puts "#{final_votes.keys[0].to_s.capitalize} received #{final_votes.values[0]} votes."
		puts "#{final_votes.keys[1].to_s.capitalize} received #{final_votes.values[1]} votes."
	end

	def announce_winner(final_votes)
		final_votes.max_by{|k, v| v}[0]
	end
end