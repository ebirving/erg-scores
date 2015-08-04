class AddNamesToWorkouts < ActiveRecord::Migration
  def change
    add_column :workouts, :name, :string
  end
end
