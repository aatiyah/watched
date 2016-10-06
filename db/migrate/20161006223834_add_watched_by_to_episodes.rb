class AddWatchedByToEpisodes < ActiveRecord::Migration[5.0]
  def change
    add_column :episodes, :watched_by, :text
  end
end
