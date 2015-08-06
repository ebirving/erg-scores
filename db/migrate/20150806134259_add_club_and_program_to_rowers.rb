class AddClubAndProgramToRowers < ActiveRecord::Migration
  def change
    add_column :rowers, :club, :string
    add_column :rowers, :program, :string
  end
end
