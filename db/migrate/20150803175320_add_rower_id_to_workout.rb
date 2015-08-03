class AddRowerIdToWorkout < ActiveRecord::Migration
  def change
    add_column :workouts, :rower_id, :integer
  end
end
