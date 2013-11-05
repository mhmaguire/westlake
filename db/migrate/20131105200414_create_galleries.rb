class CreateGalleries < ActiveRecord::Migration
  def change
    create_table :galleries do |t|
    	t.string :title, :body
    	t.string :g_type

      t.timestamps
    end
  end

  add_column :gallery_images, :gallery_id, :integer 
end
