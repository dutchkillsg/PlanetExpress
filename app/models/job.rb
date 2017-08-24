class Job < ApplicationRecord
	has_many :spaceships
	has_many :spaceship_jobs
end
