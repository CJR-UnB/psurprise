class CandidatesController < ApplicationController

	# GET canditates/new
	def new
		@candidate = Candidate.new
	end

	def create
		@candidate = Candidate.new(candidate_params)

		if @candidate.save(candidate_params)
			redirect_to canditates_new_path, notice: 'Parabéns! Você está inscrito!'
		else
			render :new, notice: 'Preencha todos os campos corretamente'
		end
	end

	private
	def candidate_params
		params.require(:candidate).permit(:name, :email, :telephone, :semester)
	end

end
