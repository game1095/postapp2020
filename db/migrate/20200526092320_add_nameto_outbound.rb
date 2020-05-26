class AddNametoOutbound < ActiveRecord::Migration[5.2]
  def change
  	add_column :outbounds, :name, :string
  end
end
