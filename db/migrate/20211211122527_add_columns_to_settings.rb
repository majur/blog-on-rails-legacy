class AddColumnsToSettings < ActiveRecord::Migration[6.1]
  def change
    add_column :settings, :root_page_name, :string
    add_column :settings, :root_page_content, :text
    add_column :settings, :root_page_posts, :boolean
    add_column :settings, :root_page_menu, :boolean
  end
end
