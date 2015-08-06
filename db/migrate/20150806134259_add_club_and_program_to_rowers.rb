class AddClubAndProgramToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :club, :string
    add_column :profiles, :program, :string
  end
end
