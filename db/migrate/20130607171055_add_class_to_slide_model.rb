class AddClassToSlideModel < ActiveRecord::Migration
  def change
  	add_column :slides, :css_class, :string
  end
end
