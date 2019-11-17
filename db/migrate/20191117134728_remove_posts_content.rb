class RemovePostsContent < ActiveRecord::Migration[6.0]
  def up
    remove_column :posts, :content
  end
end
