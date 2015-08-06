class RenameTypeToRole < ActiveRecord::Migration
  def change
    rename_column :profiles, :type, :role
  end
end
