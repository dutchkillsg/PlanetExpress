class AddAvatarToSpaceships < ActiveRecord::Migration[5.1]
  def change
    add_column :spaceships, :avatar, :string
  end
end
