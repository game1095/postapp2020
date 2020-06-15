class AddRemarkToOutbound < ActiveRecord::Migration[5.2]
  def change
    add_column :outbounds , :remark  , :text
  end
end
