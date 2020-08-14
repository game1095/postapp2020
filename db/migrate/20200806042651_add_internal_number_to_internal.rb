class AddInternalNumberToInternal < ActiveRecord::Migration[5.2]
  def change
    add_column :internals, :internal_number, :string
  end
end
