class CreateEventContacts < ActiveRecord::Migration
  def change
    create_table :event_contacts do |t|
    	t.references :event
    	t.string :name
      t.timestamps
    end
    add_index :event_contacts, :event_id
  end
end
