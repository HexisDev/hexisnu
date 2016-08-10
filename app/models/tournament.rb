class Tournament < ActiveRecord::Base
	mount_uploader :image, TournamentImageUploader
end
