class Jury
	attr_accessor :members

	def initialize
		@members = []
		@finalists = {}
	end

	def add_member(member)
		@members << member
	end

	def members
		@members
	end

	def cast_votes(finalists)
		# The first line below is for the initial "rigged" tests where the finalists aren't random.
		#finalists.each {|finalist| @finalists[finalist] = 0}
		vote_count = Hash.new(0)
		@members.each do |member|
			vote = @members.sample
			vote_count[vote] += 1
			puts "#{member.to_s.capitalize} voted for #{vote.to_s.capitalize}."
		end
		vote_count.sort_by {|k, v| v}
		2.times do
			key, value = vote_count.shift
			@finalists[key] = value
		end
		return @finalists
	end
end