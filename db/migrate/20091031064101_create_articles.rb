class CreateArticles < ActiveRecord::Migration
  def self.up
    create_table :articles do |t|
      t.integer :newspaper_id
      t.string :title
      t.string :url
      t.datetime :printed_date

      t.timestamps
    end
  end

  def self.down
    drop_table :articles
  end
end
