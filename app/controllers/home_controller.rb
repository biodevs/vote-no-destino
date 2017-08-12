class HomeController < ApplicationController
  before_action :set_session_destinations, only: [:index], if: Proc.new{|c| !request.xhr?}
  def index
    @destinations = Destination.all.sample(2)
    @user = User.new
    respond_to do |format|
      format.html
      if request.xhr? && !params[:id].blank?
        session[:destinations] << params[:id]
        @destinations = Destination.where.not(id: session[:destinations])
        format.js
      end
    end
  end
  private
  def set_session_destinations
    session[:destinations] = []
  end
end
