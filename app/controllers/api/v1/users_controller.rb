class Api::V1::UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    json_response(@user)
  end

  private
end
