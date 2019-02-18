class ChangeReturnedType < ActiveRecord::Migration[5.1]
  def change
    change_column :injuries, :returned?, :string
  end
end
