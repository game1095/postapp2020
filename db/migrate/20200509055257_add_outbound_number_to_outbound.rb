class AddOutboundNumberToOutbound < ActiveRecord::Migration[5.2]
  def change
    add_column :outbounds, :outbound_number, :string
  end
end
