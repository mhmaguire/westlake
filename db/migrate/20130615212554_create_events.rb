class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
    	t.string :title, :description 
    	t.date :start_date 
    	t.references :content
      t.timestamps
    end

    add_index :events, :content_id
  end
end
