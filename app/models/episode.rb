class Episode < ApplicationRecord
  belongs_to :season
  belongs_to :user
  serialize :watched_by,Array
end
