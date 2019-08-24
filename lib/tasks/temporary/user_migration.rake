desc "Adding columns to user model"
task :quick_migration => :environment do
  ActiveRecord::Migration.add_column :users, :portfolio_link, :string
  ActiveRecord::Migration.add_column :users, :social_link, :string
end
