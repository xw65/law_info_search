class CreateInvolves < ActiveRecord::Migration
  def change
  
    create_table :involves do |t|
      t.integer :case_id
      t.integer :party_id
      t.string :status
      t.timestamps
    end
  end
end
