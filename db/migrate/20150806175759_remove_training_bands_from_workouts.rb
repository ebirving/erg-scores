class RemoveTrainingBandsFromWorkouts < ActiveRecord::Migration
  def change
    remove_column :workouts, :training_band
  end
end
