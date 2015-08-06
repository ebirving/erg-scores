class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string  :first_name
      t.string  :gender
      t.string  :weight_class
      t.date    :birthday
      t.string  :age_group
      t.string  :last_name
      t.string  :club
      t.string  :program
      t.string  :role
    end
  end
end
