class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.string :title
      t.string :description
      t.timestamps
    end
  end
end
