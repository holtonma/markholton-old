class AddRankingToNewspapers < ActiveRecord::Migration
  def self.up
    add_column :newspapers, :ranking, :integer
  end
  
  def self.down
    remove_column :newspapers, :ranking
  end
end
