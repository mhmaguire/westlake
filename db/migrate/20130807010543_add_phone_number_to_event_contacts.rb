class AddPhoneNumberToEventContacts < ActiveRecord::Migration
  	
  	def self.up
  		change_column :event_contacts, :phone, :string
  	end


  	def self.down
  		change_column :event_contacts, :phone, :integer
  	end
end
