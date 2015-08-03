class CreateRowers < ActiveRecord::Migration
  def change
    create_table :rowers do |t|
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
