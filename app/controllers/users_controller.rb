class UsersController < ApplicationController
  before_action :set_user_by_sesssion, only: :show
  def index
    @user = User.new
  end
  def new
  end
  def create
    @user = User.find_or_create_by(email: user_params[:email]) do |user|
      user.name = user_params[:name]
    end
    if @user.save
      unless session[:destinations].blank?
        session[:destinations].each{|id|
          @user.votes <<  Vote.create(user: @user, destination: Destination.find(id.to_i))
        }
        session[:user] = @user
        session[:destinations] = nil
      end
      redirect_to votes_path
    else
      render :new
    end
  end
  
  private 
  
  def set_user_by_sesssion
    unless session[:user].blank?
      @user = User.find(session[:user]["id"]) 
    else
      redirect_to root_path
    end
  end
  def user_params
    params.require(:user).permit(:name, :email)
  end
end
