class Article < ActiveRecord::Base
  belongs_to :newspaper
  
  index do
    title
    content
  end
  
end
