class Watchedepisode < ApplicationRecord
  belongs_to :user
  belongs_to :episode
end
