class RemoveRowerIdFromWorkouts < ActiveRecord::Migration
  def change
    remove_column :workouts, :rower_id
    add_column :scores, :rower_id, :integer
  end
end
