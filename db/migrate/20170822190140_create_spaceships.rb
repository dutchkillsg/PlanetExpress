class CreateSpaceships < ActiveRecord::Migration[5.1]
  def change
    create_table :spaceships do |t|
      t.string :name
      t.integer :capacity
      t.string :location
      t.belongs_to :user
      t.timestamps
    end
  end
end
