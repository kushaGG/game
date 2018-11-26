class AddAvatarToProfile < ActiveRecord::Migration[5.1]
  def change
    add_column :profiles, :vavatar, :string
  end
end
