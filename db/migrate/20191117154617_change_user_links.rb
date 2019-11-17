class ChangeUserLinks < ActiveRecord::Migration[6.0]
  def up
    add_column :users, :social_link_twitter, :string
    add_column :users, :social_link_instagram, :string
  end

  def down
    remove_column :users, :social_link
  end
end
