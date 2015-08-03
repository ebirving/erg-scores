class RenameTypeInWorkouts < ActiveRecord::Migration
  def change
    remove_column :workouts, :type
    add_column :workouts, :intensity, :string
  end
end
