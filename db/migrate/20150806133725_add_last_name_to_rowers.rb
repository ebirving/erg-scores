class AddLastNameToprofiles < ActiveRecord::Migration
  def change
    add_column :profiles, :last_name, :string
    rename_column :profiles, :name, :first_name
  end
end
