class CreateInjuries < ActiveRecord::Migration[5.1]
  def change
    create_table :injuries do |t|

      t.timestamps
    end
  end
end
