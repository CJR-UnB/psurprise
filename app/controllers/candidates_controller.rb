class CandidatesController < ApplicationController

	# GET canditates/new
	def new
		@candidate = Candidate.new
	end

end
