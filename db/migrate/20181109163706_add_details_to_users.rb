class AddDetailsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :username, :string
    add_column :users, :social_link, :string
    add_column :users, :portfolio_link, :string
    add_column :users, :bio, :text
    add_column :users, :birthday, :date
    add_column :users, :user_count, :integer, default: 0
    add_column :users, :admin, :boolean, null: false, default: false
  end
end
