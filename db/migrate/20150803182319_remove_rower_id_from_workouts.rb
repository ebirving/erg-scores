class RemoveprofileIdFromWorkouts < ActiveRecord::Migration
  def change
    remove_column :workouts, :profile_id
    add_column :scores, :profile_id, :integer
  end
end
