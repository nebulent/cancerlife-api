class Api::UsersController < ApplicationController

  respond_to :json
  before_filter :check_email, :only => :create

  def create
    @user = User.new(params[:user])
    if @user.save

      @response = {:message => "The user has been saved"}
      respond_with(@response)
    else
      @response = {:message => "There was an error saving the user", :errors => @user.errors.messages}
      respond_with(@response)
    end
  end

  def check_email
    if User.exists?(:email => params[:email])
      if User.find_by_email(params[:email]).sites.where(:id => current_tenant_id).present?
        @response = {:message => "User already exists"}
        respond_with(@response, :location => api_users_url)
      else
        user = User.find_by_email(params[:email])
        user.sites << Site.find(current_tenant_id)
        @response = {:message => "User has been successfully created"}
        respond_with(@response, :location => api_users_url)
      end
    else
      true
    end
  end
end
