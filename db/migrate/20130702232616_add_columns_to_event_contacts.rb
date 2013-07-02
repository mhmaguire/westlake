class AddColumnsToEventContacts < ActiveRecord::Migration
  def change
  	add_column :event_contacts, :last_name, :string
  	add_column :event_contacts, :email, :string
  	add_column :event_contacts, :phone, :integer
  	add_column :event_contacts, :source, :text
  	#remove end_date from careers
  	remove_column :careers, :end_at, :date
  end
end
