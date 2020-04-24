class Api::V1::LibrariesController < ApplicationController
  before_action :set_user

  def index
    @library = @user.library
    json_response(@library)
  end

  private

  def set_user
    @user = User.find(params[:user_id])
  end
end
