class CreateParcels < ActiveRecord::Migration[5.2]
  def change
    create_table :parcels do |t|
      t.string :number
      t.references :internal , foreign_key: true
      t.timestamps
    end
  end
end
