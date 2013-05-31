class PagesController < ApplicationController
  respond_to :json

  def index
    if params[:method] == "save_data"
      @user = User.new(params[:user])
      if @user.save
        @response = {:message => "The user has been saved"}.to_json
        respond_with(@response)
      else
        @response = {:message => "There was an error saving the user", :errors => @user.errors}.to_json
        respond_with(@response)
      end
    end
  end
end
