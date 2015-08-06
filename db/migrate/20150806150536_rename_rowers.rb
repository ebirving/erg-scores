class RenameRowers < ActiveRecord::Migration
  def change
    rename_table :rowers, :profiles
  end
end
