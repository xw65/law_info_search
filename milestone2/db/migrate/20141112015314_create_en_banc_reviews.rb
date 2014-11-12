class CreateEnBancReviews < ActiveRecord::Migration
  def change
    create_table :en_banc_reviews do |t|
      
      t.timestamps
    end
  end
end
