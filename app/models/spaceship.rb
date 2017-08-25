class Spaceship < ApplicationRecord
	has_many :jobs
	has_many :spaceship_jobs
	belongs_to :user

	validates :name, uniqueness: true
	mount_uploader :avatar, AvatarUploader

end
