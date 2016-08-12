class Tournament < ActiveRecord::Base
	mount_uploader :image, TournamentImageUploader
	validates :name, presence: true, uniqueness: true
	extend FriendlyId
	friendly_id :name, use: :slugged

end
