class CreateWatchedepisodes < ActiveRecord::Migration[5.0]
  def change
    create_table :watchedepisodes do |t|
      t.references :user, foreign_key: true
      t.references :episode, foreign_key: true

      t.timestamps
    end
  end
end
