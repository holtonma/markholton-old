class HomeController < ApplicationController
  
  layout "application"
  
  def index
    @posts = Post.all(:include => [:comments], 
                       :order => 'posts.updated_at DESC',
                       :limit => 10)
    @news = Newspaper.all(:include => [:articles], :order => "articles.printed_date DESC")
    
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @posts }
    end
  end
  
  
end
