class AddPostsToPages < ActiveRecord::Migration[6.1]
  def change
    add_column :pages, :posts, :boolean
  end
end
