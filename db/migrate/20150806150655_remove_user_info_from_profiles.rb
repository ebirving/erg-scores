class RemoveUserInfoFromProfiles < ActiveRecord::Migration
  def change
    remove_column :profiles, :email
    remove_column :profiles, :password_digest
  end
end
