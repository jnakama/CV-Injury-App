class RemoveQuestionMarkFromReturned < ActiveRecord::Migration[5.1]
  def change
    rename_column :injuries, :returned?, :returned
  end
end
