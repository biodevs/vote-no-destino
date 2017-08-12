class VotesController < ApplicationController
  def index
    @votes = Vote.ranking
  end
end
