class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.integer :interval_number
      t.integer :minutes
      t.float :seconds
      t.integer :distance
      t.string :split
      t.integer :spm
      t.datetime :created_at
      t.datetime :updated_at
      t.references :workout, index: true, foreign_key: true
      t.references :profile, index: true, foreign_key: true
    end
  end
end
