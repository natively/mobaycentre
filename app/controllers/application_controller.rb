class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :find_all_advertisements

  def find_all_advertisements
    @ads = Advertisement.order('position ASC')
  end
  
end
