class AddBodyToEmployees < ActiveRecord::Migration
  def change
  	add_column :employees, :body, :text
  end
end
