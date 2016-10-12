class EpisodesController < ApplicationController
  before_filter :authenticate_user!
  @@watched_by = []

  def index
    @episodes = Episode.order released_at: :asc
    @watched_by = @@watched_by
  end

  def watched
  	@episode = Episode.find(params[:id])
  	current_user.episodes << @episode
	  redirect_to root_path
  end
end
