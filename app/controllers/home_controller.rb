class HomeController < ApplicationController
  include AuthenticatedSystem
  
  layout "application"
  
  def index
    @posts = Post.find(:all, :include => [:comments], 
                       :order => 'posts.updated_at DESC',
                       :limit => 10)
    @news = Newspaper.find(:all, :include => [:articles], :order => "articles.printed_date DESC")
    
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @posts }
    end
  end
  
  
end
