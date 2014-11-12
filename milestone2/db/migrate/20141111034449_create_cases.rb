class CreateCases < ActiveRecord::Migration
  def change
    create_table :cases do |t|
      t.integer :serial
      t.string :name
      t.string :issue
      t.string :technical_area
      t.date :time
      t.string :result
      t.timestamps
    end
  end
end
