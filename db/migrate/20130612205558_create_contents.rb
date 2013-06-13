class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
    	t.text :ceo_letter, :gen_info, :company_culture, :la_life, :benefits
      t.timestamps
    end
  end
end
