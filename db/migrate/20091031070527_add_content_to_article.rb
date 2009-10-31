class AddContentToArticle < ActiveRecord::Migration
  def self.up
    add_column :articles, :content, :text
  end
  
  def self.down
    remove_column :articles, :content
  end
end
