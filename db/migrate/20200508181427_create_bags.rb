class CreateBags < ActiveRecord::Migration[5.2]
  def change
    create_table :bags do |t|
      t.string :number
      t.references :outbound , foreign_key: true
      
      t.timestamps
    end
  end
end
