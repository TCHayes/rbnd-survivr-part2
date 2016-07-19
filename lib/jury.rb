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
		# Line below sorts finalists so first element is winner.
		@finalists.sort_by {|k, v| v}
		return @finalists
	end

	def report_votes(final_votes)
		puts "#{final_votes[0][0]} received #{final_votes[0][1]} votes."
		puts "#{final_votes[1][0]} received #{final_votes[1][1]} votes."
	end

	def announce_winner(final_votes)
		final_votes.first[0]
	end
end