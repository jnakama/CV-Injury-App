class AddAttachmentToInjuries < ActiveRecord::Migration[5.2]
  def change
    add_column :injuries, :attachment, :string
  end
end
