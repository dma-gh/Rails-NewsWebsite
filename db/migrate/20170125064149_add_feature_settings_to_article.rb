class AddFeatureSettingsToArticle < ActiveRecord::Migration[5.0]
  def change
  	add_column :articles, :featured, :boolean
  	add_column :articles, :description, :string
  end
end
