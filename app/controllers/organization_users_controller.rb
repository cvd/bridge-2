class OrganizationUsersController < ApplicationController
  before_filter :authenticate_user!

  def new
    @org_user = OrganizationUser.new(params[:organization_user])
  end

  def create
    @org_user = OrganizationUser.new(params[:organization_user])
    if @org_user.save
      flash[:notice] = "You are now part of #{@org_user.organization}"
    else
      flash[:notice] = "Unable to join #{@org_user.organization}"
    end
    redirect_to @org_user.organization
  end

end
