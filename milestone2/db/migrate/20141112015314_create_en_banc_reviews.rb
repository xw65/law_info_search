class CreateEnBancReviews < ActiveRecord::Migration
  def change
    create_table :en_banc_reviews do |t|
      t.integer :case_id
      t.integer :case_id
      t.timestamps
    end
  end
end
