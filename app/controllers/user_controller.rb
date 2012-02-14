class UserController < ApplicationController
  def home
  end

  protected

  def user
    current_user
  end
  helper_method :user
end
