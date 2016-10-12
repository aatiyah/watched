class Episode < ApplicationRecord
  belongs_to :season
  has_many :watchedepisodes
  has_many :users, through: :watchedepisodes
end
