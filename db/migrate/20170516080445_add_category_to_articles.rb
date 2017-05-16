class AddCategoryToArticles < ActiveRecord::Migration[5.0]
  def change
    add_column :articles, :category, :string
    add_index :articles, :category
    add_index :articles, :created_at
  end
end
