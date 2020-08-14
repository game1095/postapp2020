class CreateInterals < ActiveRecord::Migration[5.2]
  def change
    create_table :internals do |t|
      t.string :origin
      t.string :destination
      t.date :sent_date
      t.string :name
      t.text :remark
      t.timestamps
    end
  end
end
