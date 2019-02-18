class FixColumnNames < ActiveRecord::Migration[5.1]
  def change
    rename_column :injuries, :type, :injurytype
    rename_column :injuries, :return, :returned? 
  end
end
