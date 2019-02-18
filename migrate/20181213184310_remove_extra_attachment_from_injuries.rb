class RemoveExtraAttachmentFromInjuries < ActiveRecord::Migration[5.2]
  def change
    remove_column :injuries, :attachment
  end
end
