desc "Adding Post Status emun"
task :quick_migration => :environment do
  ActiveRecord::Migration.add_column :posts, :status, :integer
end