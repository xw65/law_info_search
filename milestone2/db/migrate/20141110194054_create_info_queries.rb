class CreateInfoQueries < ActiveRecord::Migration
  def change
    create_table :info_queries do |t|
      t.boolean :is_owner
      t.integer :user_size
      t.integer :oppo_size
      t.string :user_loc
      t.string :oppo_loc
      t.string :law_issue
      t.string :tech_area
      t.string :judge1
      t.string :judge2
      t.string :judge3

      t.timestamps
    end
  end
end
