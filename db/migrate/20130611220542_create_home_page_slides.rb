class CreateHomePageSlides < ActiveRecord::Migration
  def change
    create_table :home_page_slides do |t|
    	t.string :header
    	t.text :body

      t.timestamps
    end
  end
end
