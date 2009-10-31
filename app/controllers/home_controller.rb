class HomeController < ApplicationController
  def index
    @posts = Post.all
    @news = Newspaper.find(:all, :include => [:articles])
    
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @posts }
    end
  end

end
