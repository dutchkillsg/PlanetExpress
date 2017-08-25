class Spaceship < ApplicationRecord
	has_many :jobs
	has_many :spaceship_jobs
	belongs_to :user

	validates :email, uniqueness: true

end
