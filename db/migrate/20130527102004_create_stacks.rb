class CreateStacks < ActiveRecord::Migration
  def change
    create_table :stacks do |t|
      t.string :title

      t.timestamps
    end
  end
end
