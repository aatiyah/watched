class EpisodesController < ApplicationController
  before_filter :authenticate_user!

  def index
    @episodes = Episode.order(released_at: :asc).includes(:season)
  end

  def watched
  	@episode = Episode.find(params[:id])
  	current_user.episodes << @episode
	  redirect_to "##{@episode.id}"
  end
end
