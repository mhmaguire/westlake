class CreateSlides < ActiveRecord::Migration
  def change
    create_table :slides do |t|
      t.string :title
      t.string :body
      t.string :summary
      t.references :stack

      t.timestamps
    end
  end
end
