class Createprofiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :email
      t.string :password_digest
      t.string :name
      t.string :gender
      t.string :weight_class
      t.date :birthday
      t.string :age_group
    end
  end
end
