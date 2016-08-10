class TournamentsController < ApplicationController
	def index
		@tournaments = Tournament.all
	end

	def new
		@tournament = Tournament.new
	end

	def create 
		@tournament = Tournament.new(tournament_params)

		if @tournament.save
			redirect_to @tournament
		else
			render 'new'
		end
	end

	def edit
		@tournament = Tournament.find(params[:id])
	end

	private

	def tournament_params
		params.require(:tournament).permit(:name, :description, :game, :team_size, :developer, :image, :rules)
	end
end
