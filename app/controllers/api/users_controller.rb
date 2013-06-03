class Api::UsersController < ApplicationController

  respond_to :json

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
end
