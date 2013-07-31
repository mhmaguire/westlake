class AddCellNumberToEmployees < ActiveRecord::Migration
  def change
  	add_column :employees, :cell_phone, :string
  end
end
