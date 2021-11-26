class CreateSettings < ActiveRecord::Migration[6.1]
  def change
    create_table :settings do |t|
      t.string :blog_title
      t.string :blog_sub_title

      t.timestamps
    end
  end
end
