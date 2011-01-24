class HomepageController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    render :text => "Hello!", :layout => true
  end
  
end
