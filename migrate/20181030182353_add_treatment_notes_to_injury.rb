class AddTreatmentNotesToInjury < ActiveRecord::Migration[5.1]
  def change
    add_column :injuries, :treatmentnotes, :text
  end
end
