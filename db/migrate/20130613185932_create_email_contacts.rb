class CreateEmailContacts < ActiveRecord::Migration
  def change
    create_table :email_contacts do |t|
    	t.string :email, :name
    	t.text :message
      t.timestamps
    end

    add_index :email_contacts, :created_at
  end
end
