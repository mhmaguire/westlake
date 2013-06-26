class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
    	t.integer :singleton_guard, default: 0
    	t.text :ceo_letter, :gen_info, :company_culture, :la_life, :benefits
      t.timestamps
    end

    add_index :contents, :singleton_guard, unique: true 
  end
end
