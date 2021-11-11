class AddMenuToPages < ActiveRecord::Migration[6.1]
  def change
    add_column :pages, :sort, :integer
    add_column :pages, :active, :boolean
  end
end
