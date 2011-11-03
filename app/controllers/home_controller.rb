class HomeController < ApplicationController
  layout "fluid"
  def index
    render :index, :layout => "hero"
  end

end
