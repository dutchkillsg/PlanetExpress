class SpaceshipJob < ApplicationRecord
	belongs_to :spaceship
	belongs_to :job
	
	validates :job_id, :uniqueness => {:scope => :spaceship}

end
