class Api::UsersController < ApplicationController
  before_filter :restrict_access
  respond_to :json

  def create
    @user = User.new(params[:user])
    if @user.save
      @response = {:message => "The user has been saved"}
      respond_with(@response)
    else
      @response = {:message => "There was an error saving the user",
                   :errors => @user.errors.messages}
      respond_with(@response)
    end
  end

  def restrict_access
    authenticate_or_request_with_http_token do |token, options|
      ApiToken.exists?(:access_key => token)
    end
  end
end
