# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details
  
  layout 'index'
  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
  #  before_filter :set_iphone_format
  #  before_filter :set_facebook_session
  #  helper_method :facebook_session
  #   
  def is_iphone_request?
    request.user_agent =~ /(Mobile\/.+Safari)/
  end
  
  def set_iphone_format
    if is_iphone_request?
      request.format = :iphone
    end
  end

end
