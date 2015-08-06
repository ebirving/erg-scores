class IntegrateForeignKeys < ActiveRecord::Migration
  def change
    add_column :profiles, :user_id, :integer
    add_foreign_key :profiles, :users
    add_column :users, :profile_id, :integer
    add_foreign_key :users, :profiles
  end
end
