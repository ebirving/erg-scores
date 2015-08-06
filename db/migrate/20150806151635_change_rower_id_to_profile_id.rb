class ChangeRowerIdToProfileId < ActiveRecord::Migration
  def change
    rename_column :scores, :rower_id, :profile_id
  end
end
