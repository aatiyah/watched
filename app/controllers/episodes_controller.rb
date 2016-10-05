class EpisodesController < ApplicationController
  before_filter :authenticate_user!

  def index
    @episodes = Episode.order released_at: :desc
  end

  def watched
  	@episode = Episode.find(params[:id])
	  @episode.update_attributes(:watched => true)
  end
end
