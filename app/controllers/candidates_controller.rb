class CandidatesController < ApplicationController

	# GET canditates/new
	def new
		@candidate = Candidate.new
	end

	def create
		@candidate = Candidate.new(candidate_params)

		respond_to do |format|
			
	end

end
