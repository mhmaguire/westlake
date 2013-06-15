class CreateCareerContacts < ActiveRecord::Migration
  def change
    create_table :career_contacts do |t|
    	t.references :career
    	t.string :name 
    	t.string :email

      t.timestamps
    end

    add_index :career_contacts, :career_id
  end
end
