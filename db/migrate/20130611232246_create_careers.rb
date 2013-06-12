class CreateCareers < ActiveRecord::Migration
  def change
    create_table :careers do |t|
      t.string :title, :description 
      t.date :end_at
      t.timestamps
    end
  end
end
