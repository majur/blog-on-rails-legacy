class AddDataToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :sub_title, :text
  end
end
