class CreateParties < ActiveRecord::Migration
  def change
    create_table :parties do |t|
      t.integer :party_num
      t.string :name
      t.integer :size
      t.string :location
      t.string :race
      t.string :gender
      t.string :political_affiliation
      t.timestamps
    end
  end
end
