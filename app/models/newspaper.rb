class Newspaper < ActiveRecord::Base
  has_many :articles
end
