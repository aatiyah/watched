class EpisodesController < ApplicationController
  before_filter :authenticate_user!
  @@watched_by = []

  def index
    @episodes = Episode.order released_at: :desc
    @watched_by = @@watched_by
  end

  def watched
  	@episode = Episode.find(params[:id])
	  @episode.update_attributes(:watched => true, user_id: current_user.id, watched_by: @episode.watched_by.push(current_user.id))
  end
end
