class RemovePostsContent < ActiveRecord::Migration[6.0]
  def down
    remove_column :posts, :content
  end
end
