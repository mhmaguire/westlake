class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
    	t.string :title
    	t.integer :content_id
      t.timestamps
    end
  end
end
