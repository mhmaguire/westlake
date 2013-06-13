class CreateVendors < ActiveRecord::Migration
  def change
    create_table :vendors do |t|
    	t.string :name
    	t.references :category
      t.timestamps
    end
    add_index :vendors, :category_id
  end
end
