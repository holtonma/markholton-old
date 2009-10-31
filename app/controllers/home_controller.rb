class HomeController < ApplicationController
  def index
    @posts = Post.find(:all, :include => [:comments])
    @news = Newspaper.find(:all, :include => [:articles])
    
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @posts }
    end
  end

end
