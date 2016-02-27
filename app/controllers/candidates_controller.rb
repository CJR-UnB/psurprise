class CandidatesController < ApplicationController

	# GET canditates/new
	def new
		@candidate = Candidate.new
	end

	def index
		@candidates = Candidate.all	
	end

	def create
		@candidate = Candidate.new(candidate_params)

		if @candidate.save(candidate_params)
			redirect_to :new_candidate, notice: 'Parabéns! Você está inscrito!'
		else
			redirect_to :new_candidate, alert: 'Preencha todos os campos corretamente'
		end
	end


	private
	def candidate_params
		params.require(:candidate).permit(:name, :email, :telephone, :semester, :course, :curriculum)
	end

end
