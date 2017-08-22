class CreateSpaceshipJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :spaceship_jobs do |t|
     t.references :spaceship
     t.references :job 
     t.timestamps
    end
  end
end
