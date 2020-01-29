class HomeController < ApplicationController
  def index             
    @user = current_user
    if @user.nil?
      redirect_to root_path
    end
  end
end