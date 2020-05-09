class CreateOutbounds < ActiveRecord::Migration[5.2]
  def change
    create_table :outbounds do |t|
      t.string :origin
      t.string :destination
      t.date :sent_date
      t.string :strap
      t.string :car
      
      t.timestamps
    end
  end
end
