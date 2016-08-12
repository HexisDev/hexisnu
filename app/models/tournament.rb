class Tournament < ActiveRecord::Base
	mount_uploader :image, TournamentImageUploader
	validates :name, presence: true, uniqueness: true
	validates :short_name, presence: true, uniqueness: true

	extend FriendlyId
	friendly_id :short_name, use: :slugged

end
