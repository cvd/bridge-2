class UserController < ApplicationController
  before_filter :authenticate_user!

  def home
  end

  protected

  def user
    current_user
  end
  helper_method :user
end
