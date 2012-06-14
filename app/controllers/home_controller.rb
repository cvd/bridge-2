class HomeController < ApplicationController
  layout "fluid"

  before_filter :authenticate_user!, :only => [:user]

  def index
    render :index, :layout => "hero"
  end

end
