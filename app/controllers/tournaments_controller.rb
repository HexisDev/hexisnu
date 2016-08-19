class TournamentsController < ApplicationController
	before_action :set_tournament, except: [:new, :create, :index]
	before_action :authenticate_user!, except: [:index, :show]
	
	def index
		redirect_to Tournament.order(name: :asc).first
	end

	def show
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
	end

	def update
		if @tournament.update(tournament_params)
			redirect_to @tournament
		else
			render 'new'
		end
	end

	def destroy
		@tournament.destroy
		redirect_to tournaments_path
	end

	private
		def set_tournament
			@tournament = Tournament.find_by(slug: params[:slug])
		end	

		def tournament_params
			params.require(:tournament).permit(:name, :short_name, :description, :game, :team_size, :developer, :image, :rules)
		end
end
